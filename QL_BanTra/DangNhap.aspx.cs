using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DangNhap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnDangNhap_Click(object sender, EventArgs e)
    {
        String conStr = "Data Source=LAPTOP-CLTP1KVV\\SQLEXPRESS; Initial Catalog=QL_BanTra; Integrated Security = true";
        using (SqlConnection con = new SqlConnection(conStr))
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SELECT count(*) FROM KhachHang WHERE TaiKhoan = '" + txtTaiKhoan.Text + "' AND MatKhau = '" + txtMatKhau.Text + "'" ;
            cmd.Connection = con;
            con.Open();

            int kt = (int)cmd.ExecuteScalar();
            if (kt > 0)
            {
                
                    Session["TenTaiKhoan"] = txtTaiKhoan.Text;
                    

                    Response.Redirect("TrangChu.aspx");
                
                
            }
            else
            {

                lblKq.Text = "Tên tài khoản hoặc mật khẩu không đúng";
            }
            con.Close();


            
           
            
        }

        

        
    
    }
}