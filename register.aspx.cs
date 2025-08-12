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
    public partial class register : System.Web.UI.Page
    {
        string conStr = ConfigurationManager.AppSettings["Constr"];

        protected void Page_Load(object sender, EventArgs e)
        {
            // You can handle session login status here if needed
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
           

            if (pswd.Value != cpswd.Value)
            {
                Response.Write("<script>alert('Passwords do not match');</script>");
                return;
            }

            using (SqlConnection con = new SqlConnection(conStr))
            {
                con.Open();

                // Check if email already exists
                SqlCommand checkCmd = new SqlCommand("SELECT COUNT(*) FROM Users WHERE Email = @Email", con);
                checkCmd.Parameters.AddWithValue("@Email", email.Value);
                int exists = (int)checkCmd.ExecuteScalar();

                if (exists > 0)
                {
                    Response.Write("<script>alert('Email already registered');</script>");
                    return;
                }

                // Insert new user
                SqlCommand cmd = new SqlCommand("INSERT INTO Users (Name, Phone, Email, Pincode, Password,utype) VALUES (@Name, @Phone, @Email, @Pincode, @Password,@utype)", con);
                cmd.Parameters.AddWithValue("@Name", name.Value);
                cmd.Parameters.AddWithValue("@Phone", phn.Value);
                cmd.Parameters.AddWithValue("@Email", email.Value);
                cmd.Parameters.AddWithValue("@Pincode", pincode.Value);
                cmd.Parameters.AddWithValue("@Password", pswd.Value); 
                cmd.Parameters.AddWithValue("@utype", userType.Value); 

                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("<script>alert('Registration successful');</script>");
                }
            }
        }

     
    }
}