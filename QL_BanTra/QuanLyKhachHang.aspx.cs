using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QuanLyKhachHang : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            load_data();
            if(btnLuuThongTin.CommandArgument != "New")
            {
                pnlEdit.Visible = false;
            }
            else
            {
                pnlEdit.Visible = true;
            }
        }

    }

    private void load_data()
    {
        string strConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["QL_BanTraConnectionStrings"].ConnectionString;
        SqlConnection con = new SqlConnection(strConnectionString);
        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM KhachHang", con);
        DataTable tb = new DataTable();
        da.Fill(tb);

        GridView1.DataSource = tb;
        GridView1.DataBind();
    }

 
    protected void btnLuuThongTin_Click(object sender, EventArgs e)
    {
        string strConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["QL_BanTraConnectionStrings"].ConnectionString;
        SqlConnection con = new SqlConnection(strConnectionString);
        if(con.State != ConnectionState.Open)
        {
            con.Open();
            string sql = "SELECT COUNT(*) FROM KhachHang WHERE TaiKhoan = '" + txtTaiKhoan.Text + "'";
            SqlCommand cmd = new SqlCommand(sql, con);
            int kt = (int)cmd.ExecuteScalar();
            if(kt > 0)
            {
                lblKq.Text = "Tên tài khoản đã được sử dụng, vui lòng chọn tên tài khoản khác";
                txtTaiKhoan.Text = "";
                txtTaiKhoan.Focus();
            }
            else
            {
                string Strcmd = "insert into KhachHang values (N'" + txtHoTen.Text + " ', " + "'" + txtTaiKhoan.Text + " ', "
                    + "'" + txtMatKhau.Text + "', " + "'" + txtDienThoai.Text + "', " + "N'" + RadioButtonList1.SelectedItem.Value + "', "
                    + "N'" + txtDiaChi.Text + "', " + "'" + txtEmail.Text + "')";

                cmd.CommandText = Strcmd;


                //Thực thi
                int kq = cmd.ExecuteNonQuery();
                if (kq == 1)
                {
                    load_data();
                    pnlEdit.Visible = false;
                    btnLuuThongTin.CommandArgument = "";
                    lblKq.Text = "Lưu thông tin thành công";
                }
            }
        }
    }
   
  
    protected void btnThemMoi_Click(object sender, EventArgs e)
    {
        btnLuuThongTin.CommandArgument = "New";
        pnlEdit.Visible = true;
    }
 
protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
{
    string TaiKhoan = GridView1.DataKeys[e.RowIndex].Value.ToString();
    string strConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["QL_BanTraConnectionStrings"].ConnectionString;
    SqlConnection con = new SqlConnection(strConnectionString);
    string sql = "DELETE FROM KhachHang WHERE TaiKhoan ='" + TaiKhoan + "'";
    SqlCommand cmd = new SqlCommand(sql, con);
    con.Open();
    cmd.ExecuteNonQuery();
    con.Close();
    load_data();
}
protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
{
    GridView1.EditIndex = e.NewEditIndex;
    load_data();
}
protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
{
    string TaiKhoan = GridView1.DataKeys[e.RowIndex].Value.ToString();
    string HoTen = (GridView1.Rows[e.RowIndex].Cells[1].Controls[0] as TextBox).Text;
    string MatKhau = (GridView1.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox).Text;
    string DienThoai = (GridView1.Rows[e.RowIndex].Cells[3].Controls[0] as TextBox).Text;
    string GioiTinh = ((DropDownList)GridView1.Rows[e.RowIndex].FindControl("DropDownList1")).SelectedValue;
    string DiaChi = (GridView1.Rows[e.RowIndex].Cells[5].Controls[0] as TextBox).Text;
    string Email = (GridView1.Rows[e.RowIndex].Cells[6].Controls[0] as TextBox).Text;
    string strConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["QL_BanTraConnectionStrings"].ConnectionString;
    SqlConnection con = new SqlConnection(strConnectionString);
    string sql = "UPDATE KhachHang SET HoTen = N'" + HoTen + "', MatKhau = '" + MatKhau + "', DienThoai = '" + DienThoai + "', GioiTinh = N'" + GioiTinh + "', DiaChi = N'" + DiaChi + "', Email = '" + Email + "' WHERE TaiKhoan ='" + TaiKhoan + "'";
    SqlCommand cmd = new SqlCommand(sql, con);
    con.Open();
    cmd.ExecuteNonQuery();
    con.Close();
    GridView1.EditIndex = -1;
    load_data();
}

protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
{
    GridView1.EditIndex = -1;
    load_data();
}
}