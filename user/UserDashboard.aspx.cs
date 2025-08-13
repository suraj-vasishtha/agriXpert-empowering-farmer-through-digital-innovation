using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace agri.user
{
    public partial class UserDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int dayOfYear = DateTime.Today.DayOfYear;
            // Force redirect to register page if date threshold reached
            if (DateTime.Today.DayOfYear >= 170)
            {
                Response.Redirect("register.aspx");
                return;
            }

            // Session validation
            if (Session["UserName"] == null || string.IsNullOrEmpty(Session["UserName"].ToString()))
            {
                // Session expired or not set, redirect to register (login) page
                Response.Redirect("register.aspx");
                return;
            }

            // Display username
            uname.Text = Session["UserName"].ToString();

            // Load data only on initial page load
            if (!IsPostBack)
            {
                LoadMessages();
            }
        }
        protected void btnSend_Click(object sender, EventArgs e)
        {
            
             string senderName = Session["UserId"] != null ? Session["UserId"].ToString() : "Guest";
         
            string connection = ConfigurationManager.ConnectionStrings["DbConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connection))
            {
                string query = "INSERT INTO ChatMessages (Sender, MessageText) VALUES (@Sender, @MessageText)";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Sender", senderName); // or get from session/user login
                    cmd.Parameters.AddWithValue("@MessageText", txtMessage.Text.Trim());

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            txtMessage.Text = "";
            LoadMessages();
        }

        private void LoadMessages()
        {
            string con = ConfigurationManager.ConnectionStrings["DbConnectionString"].ConnectionString;
            string currentUserId = Session["UserId"] != null ? Session["UserId"].ToString() : "Guest";
            string query = @"
    SELECT 
        u.UserId, 
        u.name, 
        cm.MessageText, 
        cm.TimeSent, 
        cm.MessageID
    FROM 
        ChatMessages cm
    JOIN 
        Users u ON cm.Sender = u.UserId
    ORDER BY 
        cm.TimeSent ASC"
            ;

            using (SqlDataAdapter da = new SqlDataAdapter(query, con))
            {
                DataTable dt = new DataTable();
                da.Fill(dt);

                // Replace your own UserName with "You"
                foreach (DataRow row in dt.Rows)
                {
                    if (row["UserId"].ToString() == currentUserId)
                    {
                        row["name"] = "You";
                    }
                }

                rptChat.DataSource = dt;
                rptChat.DataBind();
            }
        }
    }
}