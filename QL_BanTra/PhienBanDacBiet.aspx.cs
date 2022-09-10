using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PhienBanDacBiet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            String conStr = "Data Source=LAPTOP-CLTP1KVV\\SQLEXPRESS; Initial Catalog=QL_BanTra; Integrated Security = true";
            SqlConnection con = new SqlConnection(conStr);

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM SanPham WHERE MaLoai = @MaLoai ";
            cmd.Connection = con;

            SqlParameter Par = cmd.CreateParameter();
            Par.ParameterName = "@MaLoai";
            Par.Value = "L03";


            cmd.Parameters.Add(Par);

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
}