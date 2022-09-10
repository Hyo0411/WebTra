using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TrangChu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

        if (!IsPostBack)
        {
            String conStr = "Data Source=LAPTOP-CLTP1KVV\\SQLEXPRESS; Initial Catalog=QL_BanTra; Integrated Security = true";
            SqlConnection con = new SqlConnection(conStr);

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM SanPham";
            cmd.Connection = con;
            con.Open();

            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();
            da.SelectCommand = cmd;
            da.Fill(dt);


            DataList1.DataSource = dt;
            DataList1.DataBind();
            con.Close();



        }
    }

    protected void Page_Init(object sender, EventArgs e)
    {
        Master.ButtonSearch.Click += ButtonSearch_Click;
    }

    private void ButtonSearch_Click(object sender, EventArgs e)
    {
        String conStr = "Data Source=LAPTOP-CLTP1KVV\\SQLEXPRESS; Initial Catalog=QL_BanTra; Integrated Security = true";
        using (SqlConnection con = new SqlConnection(conStr))
        {

            String cmdStr = "SELECT * FROM SanPham WHERE TenSP LIKE '%'+ @TenSP +'%' ";

            SqlCommand cmd = new SqlCommand(cmdStr, con);
            SqlParameter par = cmd.CreateParameter();
            par.ParameterName = "@TenSP";
            par.Value = Master.TextBoxSearch.Text;

            cmd.Parameters.Add(par);

            con.Open();
            DataList1.DataSource = cmd.ExecuteReader();
            DataList1.DataBind();
            con.Close();


        }
    }
   
    
}