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
	public partial class login : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {

            if(txtLoginUsername.Value=="admin@gmail.com" && txtLoginPassword.Value=="admin@123")
            {

                Session["UserId"] = txtLoginUsername.Value;
                Session["UserName"] = txtLoginUsername.Value;
                Response.Redirect("../Vendor/Home.aspx");

            }
            string conStr = ConfigurationManager.AppSettings["Constr"];
            using (SqlConnection con = new SqlConnection(conStr))
            {
                con.Open();

                SqlCommand cmd = new SqlCommand("SELECT * FROM Users WHERE (Email = @Email OR Phone = @Email) AND Password = @Password", con);
                cmd.Parameters.AddWithValue("@Email", txtLoginUsername.Value);
                cmd.Parameters.AddWithValue("@Password", txtLoginPassword.Value);

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    // Set session and redirect
                    dr.Read();
                    Session["UserId"] = dr["UserID"].ToString();
                    Session["UserName"] = dr["Name"].ToString();
                    string utype = dr["utype"].ToString();
                    if(utype =="User")
                    {
                        Response.Redirect("UserDashboard.aspx");
                    }
                    if (utype == "Vendor")
                    {
                        Response.Redirect("../Vendor/index.aspx");
                    }
                  
                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }
            }
        }
    }
}