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
    public partial class OccupationDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var OFOCode = Request.QueryString["Id"];
            OFOLabel.Text = OFOCode;
            bindOccupationView();
            bindGroupsView();
            bindSpecialisationsView();
            bindJobDescriptionView();
            bindTasksView();
        }

        private void bindGroupsView()
        {
            var id = Request.QueryString["Id"];
            String strConnString = ConfigurationManager.ConnectionStrings["OFOConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            SqlCommand command = new SqlCommand("dbo.ViewGroups", con);
            command.Parameters.AddWithValue("@OFOCode", id);
            command.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GroupsGrid.DataSource = dt;
            GroupsGrid.DataBind();
            GroupsGrid.Visible = true;
        }


        private void bindSpecialisationsView()
        {
            var id = Request.QueryString["Id"];
            String strConnString = ConfigurationManager.ConnectionStrings["OFOConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            SqlCommand command = new SqlCommand("dbo.ViewSpecialisations", con);
            command.Parameters.AddWithValue("@OFOCode", id);
            command.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            SpecialisationsGrid.DataSource = dt;
            SpecialisationsGrid.DataBind();
            SpecialisationsGrid.Visible = true;
        }

        private void bindJobDescriptionView()
        {
            var id = Request.QueryString["Id"];
            String strConnString = ConfigurationManager.ConnectionStrings["OFOConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            SqlCommand command = new SqlCommand("dbo.ViewJobDescription", con);
            command.Parameters.AddWithValue("@OFOCode", id);
            command.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            JobDescriptionGrid.DataSource = dt;
            JobDescriptionGrid.DataBind();
            JobDescriptionGrid.Visible = true;
        }

        private void bindTasksView()
        {
            var id = Request.QueryString["Id"];
            String strConnString = ConfigurationManager.ConnectionStrings["OFOConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            SqlCommand command = new SqlCommand("dbo.ViewTasks", con);
            command.Parameters.AddWithValue("@OFOCode", id);
            command.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            TasksGrid.DataSource = dt;
            TasksGrid.DataBind();
            TasksGrid.Visible = true;
        }

        private void bindOccupationView()
        {
            var id = Request.QueryString["Id"];
            String strConnString = ConfigurationManager.ConnectionStrings["OFOConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            SqlCommand command = new SqlCommand("dbo.ViewGreenSkill", con);
            command.Parameters.AddWithValue("@OFOCode", id);
            command.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(command);
            SqlDataReader reader = command.ExecuteReader();
            reader.Read();
            OccupationLabel.Text = reader["Occupations"].ToString();
            GreenSkill.Text = reader["GreenOccupation"].ToString();
            Trade.Text = reader["Trade"].ToString();
        }
    }
}