using System;
using System.Web.UI;
using System.Configuration;
using System.Data.SqlClient;

namespace OfoTest2
{
    public partial class Contact : Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            String strConnString = ConfigurationManager.ConnectionStrings["OFOConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            string Fname = String.Format("{0}", Request.Form["fname"]);
            string sname = String.Format("{0}", Request.Form["sname"]);
            string role = String.Format("{0}", Request.Form["role"]);
            string company = String.Format("{0}", Request.Form["company"]);
            string email = String.Format("{0}", Request.Form["email"]);
            string seta = String.Format("{0}", Request.Form["seta"]);

            SqlCommand cmd = new SqlCommand("insert into contact values(@FirstName,@Surname,@Role,@Sector,@EmailAddress,@Company)", con);
            cmd.Parameters.AddWithValue("FirstName", Fname);
            cmd.Parameters.AddWithValue("Surname", sname);
            cmd.Parameters.AddWithValue("Role", role);
            cmd.Parameters.AddWithValue("Company", company);
            cmd.Parameters.AddWithValue("Sector", seta);
            cmd.Parameters.AddWithValue("EmailAddress", email);
            cmd.ExecuteNonQuery();

            Submit.Visible = false;
            returntohometext.Visible = true;
            returntohome.Visible = true;

        }

        protected void RetToHome(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}