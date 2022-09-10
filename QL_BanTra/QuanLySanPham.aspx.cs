using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QuanLySanPham : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            load_data();
            if (btnLuuThongTin.CommandArgument != "New")
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
        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM SanPham", con);
        DataTable tb = new DataTable();
        da.Fill(tb);

        GridView1.DataSource = tb;
        GridView1.DataBind();
    }
    protected void btnLuuThongTin_Click(object sender, EventArgs e)
    {
        string strConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["QL_BanTraConnectionStrings"].ConnectionString;
        SqlConnection con = new SqlConnection(strConnectionString);
        if (con.State != ConnectionState.Open)
        {
            con.Open();
            string sql = "SELECT COUNT(*) FROM SanPham WHERE MaSP = '" + txtMaSP.Text + "'";
            SqlCommand cmd = new SqlCommand(sql, con);
            int kt = (int)cmd.ExecuteScalar();
            if (kt > 0)
            {
                lblKq.Text = "Mã sản phẩm đã được sử dụng, vui lòng chọn mã sản phẩm khác";
                txtMaSP.Text = "";
                txtMaSP.Focus();
            }
            else
            {
                string Strcmd = "insert into SanPham values ('" + txtMaSP.Text + " ', " + "N'" + txtTenSP.Text + " ', "
                    + "'" + txtHinhAnh.Text + "', " + "'" + txtKhoiLuong.Text + "', " + "'" + txtGia.Text + "', "
                    + "N'" + txtMoTa.Text + "', " + "'" + txtMaLoai.Text + "')";

                cmd.CommandText = Strcmd;


                //Thực thi
                int kq = cmd.ExecuteNonQuery();
                if (kq == 1)
                {
                    load_data();
                    pnlEdit.Visible = false;
                    btnLuuThongTin.CommandArgument = "";
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
        string MaSP = GridView1.DataKeys[e.RowIndex].Value.ToString();
        string strConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["QL_BanTraConnectionStrings"].ConnectionString;
        SqlConnection con = new SqlConnection(strConnectionString);
        string sql = "DELETE FROM SanPham WHERE MaSP ='" + MaSP + "'";
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
        string MaSP = GridView1.DataKeys[e.RowIndex].Value.ToString();
        string TenSP = (GridView1.Rows[e.RowIndex].Cells[1].Controls[0] as TextBox).Text;
        string DuongDan = (GridView1.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox).Text;
        string KhoiLuong  = (GridView1.Rows[e.RowIndex].Cells[3].Controls[0] as TextBox).Text;
        string Gia = (GridView1.Rows[e.RowIndex].Cells[4].Controls[0] as TextBox).Text;
        string MoTa = (GridView1.Rows[e.RowIndex].Cells[5].Controls[0] as TextBox).Text;
       
        string MaLoai = ((DropDownList)GridView1.Rows[e.RowIndex].FindControl("DropDownList1")).SelectedValue;
        
        string strConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["QL_BanTraConnectionStrings"].ConnectionString;
        SqlConnection con = new SqlConnection(strConnectionString);
        string sql = "UPDATE SanPham SET TenSP = N'" + TenSP + "', DuongDan = '" + DuongDan + "', KhoiLuong = '" + KhoiLuong + "', Gia = '" + Gia + "', MoTa = N'" + MoTa + "', MaLoai = '" + MaLoai + "' WHERE MaSP ='" + MaSP + "'";
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

    int stt = 1; //khai báo biến số thứ tự
    public string stt_trang() //hàm lấy giá trị stt++ và Convert về kiểu string
    {
        return Convert.ToString(stt++);
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        // xử lý trong PageIndexChanging
        GridView1.PageIndex = e.NewPageIndex;   //Trang hiện tại
        int trang_thu = e.NewPageIndex;      //Trang thứ mấy
        int so_dong = GridView1.PageSize;       //Mỗi trang bao nhiêu dòng (3 dòng)
        stt = trang_thu * so_dong + 1;
        load_data();
    }
 
}