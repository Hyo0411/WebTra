using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TimKiem : System.Web.UI.Page
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
    protected void btnTimKiem_Click(object sender, EventArgs e)
    {
        String conStr = "Data Source=LAPTOP-CLTP1KVV\\SQLEXPRESS; Initial Catalog=QL_BanTra; Integrated Security = true";
        using (SqlConnection con = new SqlConnection(conStr))
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SELECT * FROM SanPham WHERE TenSP LIKE '%'+ @TenSP +'%' AND (Gia BETWEEN @LowP AND @HeightP)";
            cmd.Connection = con;
            con.Open();

            //Thêm Parametter
            SqlParameter par1 = new SqlParameter();
            par1.ParameterName = "@TenSP";
            par1.Value = txtTimKiem.Text;
            cmd.Parameters.Add(par1);

            SqlParameter par2 = new SqlParameter();
            par2.ParameterName = "@LowP";
            par2.Value = txtLowP.Text;
            cmd.Parameters.Add(par2);

            SqlParameter par3 = new SqlParameter();
            par3.ParameterName = "@HeightP";
            par3.Value = txtHeightP.Text;
            cmd.Parameters.Add(par3);



            DataList1.DataSource = cmd.ExecuteReader();
            DataList1.DataBind();
            con.Close();

        }
    }

}