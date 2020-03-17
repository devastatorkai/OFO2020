using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OfoTest2
{
    public partial class Tasks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            GridView2.Visible = false;
        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            bindGridView(); //bindgridview will get the data source and bind it again
            GridView1.Visible = true;
            GridView2.Visible = false;
        }
        protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView2.PageIndex = e.NewPageIndex;
            bindGridView(); //bindgridview will get the data source and bind it again
            GridView1.Visible = false;
            GridView2.Visible = true;
        }

        private void bindGridView()
        {
            String strConnString = ConfigurationManager.ConnectionStrings["OFOConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            SqlCommand command = new SqlCommand("dbo.SearchTasks", con);
            string tasks = String.Format("{0}", Request.Form["tasks"]);
            command.Parameters.AddWithValue("@SearchString", tasks);
            command.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            GridView1.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bindGridView();
        }


        protected void SelectTask(object sender, GridViewSelectEventArgs e)
        {
            GridView1.Visible = false;
            // Get the datakey of the selected row
            var id = GridView1.DataKeys[e.NewSelectedIndex].Value;
            // Redirect to second page
            String strConnString = ConfigurationManager.ConnectionStrings["OFOConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            SqlCommand command = new SqlCommand("dbo.OccupationTaskSearch", con);
            command.Parameters.AddWithValue("@SearchString", id);
            command.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
            GridView2.Visible = true;
        }


        protected void SelectButton(object sender, GridViewSelectEventArgs e)
        {
            // Get the datakey of the selected row
            var id = GridView2.DataKeys[e.NewSelectedIndex].Value;
            // Redirect to second page
            Response.Redirect("occupationdetail.aspx?Id=" + id);
        }
    }
}