using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace agri.user
{
    public partial class wallet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {    // Session validation
            if (Session["UserName"] == null || string.IsNullOrEmpty(Session["UserName"].ToString()))
            {
                // Session expired or not set, redirect to register (login) page
                Response.Redirect("register.aspx");
                return;
            }
            LoadWalletAmount();
        }

        private void LoadWalletAmount()
        {
            if (Session["userId"] != null)
            {
                string userId = Session["userId"].ToString();
                string conStr = ConfigurationManager.AppSettings["Constr"];

                using (SqlConnection con = new SqlConnection(conStr))
                {
                    string query = "SELECT Amount FROM Wallet WHERE UserId = @UserId";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@UserId", userId);
                        con.Open();

                        object result = cmd.ExecuteScalar();

                        if (result != null)
                        {
                            walll.Text = "₹" + Convert.ToDecimal(result).ToString("F2");
                        }
                        else
                        {
                            walll.Text = "₹0.00";
                        }
                    }
                }
            }
            else
            {
                walll.Text = "Not logged in.";
            }
        }



        [System.Web.Services.WebMethod]
        public static string SaveWalletRecharge(string amount, string cardNumber, string expDate, string cvv)
        {
            try
            {
                string userId = HttpContext.Current.Session["userId"]?.ToString();
                //string userId = "3";

                if (string.IsNullOrEmpty(userId))
                    return "User not logged in.";

                using (SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Constr"]))
                {
                    con.Open();

                    // Check if user already exists
                    string checkQuery = "SELECT COUNT(*) FROM Wallet WHERE UserID = @UserID";
                    using (SqlCommand checkCmd = new SqlCommand(checkQuery, con))
                    {
                        checkCmd.Parameters.AddWithValue("@UserID", userId);
                        int count = (int)checkCmd.ExecuteScalar();

                        if (count > 0)
                        {
                            // User exists, update amount
                            string updateQuery = "UPDATE Wallet SET Amount = Amount + @Amount WHERE UserID = @UserID";
                            using (SqlCommand updateCmd = new SqlCommand(updateQuery, con))
                            {
                                updateCmd.Parameters.AddWithValue("@UserID", userId);
                                updateCmd.Parameters.AddWithValue("@Amount", Convert.ToDecimal(amount));
                                updateCmd.ExecuteNonQuery();
                            }
                        }
                        else
                        {
                            // New user, insert record
                            string insertQuery = @"INSERT INTO Wallet (UserID, Amount, CardNumber, ExpDate, CVV)
                                           VALUES (@UserID, @Amount, @CardNumber, @ExpDate, @CVV)";
                            using (SqlCommand insertCmd = new SqlCommand(insertQuery, con))
                            {
                                insertCmd.Parameters.AddWithValue("@UserID", userId);
                                insertCmd.Parameters.AddWithValue("@Amount", Convert.ToDecimal(amount));
                                insertCmd.Parameters.AddWithValue("@CardNumber", cardNumber);
                                DateTime parsedExpDate;
                                if (DateTime.TryParse(expDate, out parsedExpDate))
                                {
                                    insertCmd.Parameters.AddWithValue("@ExpDate", parsedExpDate);
                                }
                                else
                                {
                                    insertCmd.Parameters.AddWithValue("@ExpDate", DBNull.Value); // or return "Invalid date"
                                }
                                insertCmd.Parameters.AddWithValue("@CVV", cvv);
                                insertCmd.ExecuteNonQuery();
                            }
                        }
                    }
              
                    con.Close();
                }

                return "success";
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }
    }
}