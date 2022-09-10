using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DangKy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    

    protected void btnDangKy_Click(object sender, EventArgs e)
    {
        
            String conStr = ConfigurationManager.ConnectionStrings["QL_BanTraConnectionStrings"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            con.Open();

            //kiểm tra trùng tài khoản
            String strcmd1 = "select count(*) from KhachHang where TaiKhoan = '" + txtTaiKhoan.Text + "' ";

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = strcmd1;
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;


            int kt = (int)cmd.ExecuteScalar();
            if (kt > 0)
            {
                lblKq.Text = "Tên tài khoản đã được sử dụng, vui lòng chọn tên tài khoản khác";
                txtTaiKhoan.Text = "";
                txtTaiKhoan.Focus();
            }
            else
            {

                //tạo command
                string Strcmd = "insert into KhachHang values (N'" + txtHoTen.Text + " ', " + "'" + txtTaiKhoan.Text + " ', "
                    + "'" + txtMatKhau.Text + "', " + "'" + txtDienThoai.Text + "', " + "N'" + RadioButtonList1.SelectedItem.Value + "', "
                    + "N'" + txtDiaChi.Text + "', " + "'" + txtEmail.Text + "')";

                cmd.CommandText = Strcmd;


                //Thực thi
                int kq = cmd.ExecuteNonQuery();
                if (kq == 1)
                {
                    
                    Session["TenTaiKhoan"] = txtTaiKhoan.Text;
                    Response.Redirect("ThongTinCaNhan.aspx");

                }
            }
            con.Close();
        }
    
    
    
}