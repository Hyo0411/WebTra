using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ThongTinCaNhan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //String conStr = ConfigurationManager.ConnectionStrings["QL_BanTraConnectionStrings"].ConnectionString;
        //SqlConnection con = new SqlConnection(conStr);

        
        //    String strcmd1 = "select * from KhachHang where TaiKhoan = '" + Session["TenTaiKhoan"].ToString() + "' ";

        //    SqlCommand cmd = new SqlCommand();
        //    cmd.CommandText = strcmd1;
        //    cmd.CommandType = CommandType.Text;
        //    cmd.Connection = con;

        //    con.Open();

        //    SqlDataAdapter da = new SqlDataAdapter();
        //    DataTable dt = new DataTable();

        //    da.SelectCommand = cmd;
        //    da.Fill(dt);
             
         

        //    DataList1.DataSource = dt;
        //    DataList1.DataBind();


            if (Convert.ToString(Session["TenTaiKhoan"]) == "")
            {
                Response.Redirect("DangNhap.aspx");
            }
            else
            {
                String conStr = ConfigurationManager.ConnectionStrings["QL_BanTraConnectionStrings"].ConnectionString;
                SqlConnection con = new SqlConnection(conStr);


                String strcmd1 = "select * from KhachHang where TaiKhoan = '" + Session["TenTaiKhoan"].ToString() + "' ";

                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = strcmd1;
                cmd.CommandType = CommandType.Text;
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




}