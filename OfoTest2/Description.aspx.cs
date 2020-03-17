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
    public partial class Description : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                String strConnString = ConfigurationManager.ConnectionStrings["OFOConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(strConnString);
                con.Open();
                string com = "Select * from [MajorGroups] ORDER BY MajorGroups";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                DropDownList1.DataSource = dt;
                DropDownList1.DataBind();
                DropDownList1.DataTextField = "MajorGroups";
                DropDownList1.DataValueField = "OFOCode";
                DropDownList1.DataBind();
            }
        }

        protected void DropDownList1_OnLoad(object sender, EventArgs e)
        {
            String strConnString = ConfigurationManager.ConnectionStrings["OFOConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            string com = "Select * from [MajorGroups] ORDER BY MajorGroups";
            SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            DropDownList1.DataSource = dt;
            DropDownList1.DataBind();

            DropDownList1.DataTextField = "MajorGroups";
            DropDownList1.DataValueField = "OFOCode";
            DropDownList1.DataBind();
        }


        protected void DropDownList1_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            String strConnString = ConfigurationManager.ConnectionStrings["OFOConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            string com = "Select * from [SubMajorGroup] where [OFOCode] like '" + DropDownList1.SelectedValue + "%'";
            SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            DropDownList2.DataSource = dt;
            DropDownList2.DataBind();
            DropDownList2.DataTextField = "SubMajorGroup";
            DropDownList2.DataValueField = "OFOCode";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, new ListItem(String.Empty, String.Empty));
            DropDownList2.SelectedIndex = 0;
        }

        protected void DropDownList2_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            String strConnString = ConfigurationManager.ConnectionStrings["OFOConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            string com = "Select * from [MinorGroups] where [OFOCode] like '" + DropDownList2.SelectedValue + "%'";
            SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            DropDownList3.DataSource = dt;
            DropDownList3.DataBind();
            DropDownList3.DataTextField = "MinorGroups";
            DropDownList3.DataValueField = "OFOCode";
            DropDownList3.DataBind();
            DropDownList3.Items.Insert(0, new ListItem(String.Empty, String.Empty));
            DropDownList3.SelectedIndex = 0;
        }


        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            bindGridView(); //bindgridview will get the data source and bind it again
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            bindGridView();
        }




        private void bindGridView()
        {
            string OFOFilter;

            if (DropDownList3.SelectedValue == "")
            {
                if (DropDownList2.SelectedValue == "")
                {
                    OFOFilter = DropDownList1.SelectedValue;
                }
                else
                    OFOFilter = DropDownList2.SelectedValue;
            }
            else
                OFOFilter = DropDownList3.SelectedValue;
            Label1.Text = OFOFilter;
            String strConnString = ConfigurationManager.ConnectionStrings["OFOConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            SqlCommand command = new SqlCommand("dbo.DescriptionSearch_Filter", con);
            string description = String.Format("{0}", Request.Form["description"]);
            command.Parameters.AddWithValue("@SearchString", description);
            command.Parameters.AddWithValue("@FilterOFO", OFOFilter);
            command.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            GridView1.Visible = true;
        }

        protected void SelectButton(object sender, GridViewSelectEventArgs e)
        {
            // Get the datakey of the selected row
            var id = GridView1.DataKeys[e.NewSelectedIndex].Value;
            // Redirect to second page
            Response.Redirect("occupationdetail.aspx?Id=" + id);
        }

    }
}