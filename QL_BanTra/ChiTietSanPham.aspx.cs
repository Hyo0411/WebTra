using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChiTietSanPham : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter da;
    DataTable tb;
    private void Load_Data()
    {
        String conStr = "Data Source=LAPTOP-CLTP1KVV\\SQLEXPRESS; Initial Catalog=QL_BanTra; Integrated Security = true";
        SqlConnection con = new SqlConnection(conStr);

        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT * FROM SanPham WHERE MaSP = @MaSP";
        cmd.Connection = con;

        SqlParameter Par = cmd.CreateParameter();
        Par.ParameterName = "@MaSP";

        Par.Value = Request.QueryString["msp"].ToString();


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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            tbGioHang.Rows.Clear();
            tbGioHang.Columns.Clear();
            tbGioHang.Columns.Add("MaSP", typeof(int));
            tbGioHang.Columns.Add("TenSP", typeof(string));
            tbGioHang.Columns.Add("Gia", typeof(int));
            tbGioHang.Columns.Add("SoLuong", typeof(int));
            tbGioHang.Columns.Add("ThanhTien", typeof(double), "Gia * SoLuong");
            Load_Data();

        }
    }

    static DataTable tbGioHang = new DataTable();

    protected void DataList_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (Convert.ToString(Session["TenTaiKhoan"]) == "")
        {
            Response.Redirect("DangNhap.aspx");
        }
        else
        {
            if (e.CommandName == "MUA")
            {
                int MaSP = int.Parse(DataList1.DataKeys[e.Item.ItemIndex].ToString());
                string TenSP = ((Label)e.Item.FindControl("lblTenSP")).Text;
                int Gia = int.Parse(((Label)e.Item.FindControl("lblGia")).Text);
                int SoLuong = 1;
                // Thêm vào giỏ hàng

                foreach (DataRow row in tbGioHang.Rows)
                {//Kiểm tra nếu sản phẩm đã có trong giỏ hàng thì tăng lên 1
                    if ((int)row["MaSP"] == MaSP)
                    {
                        row["SoLuong"] = (int)row["SoLuong"] + 1;
                        goto GioHang;
                    }
                }

                tbGioHang.Rows.Add(MaSP, TenSP, Gia, SoLuong);
            GioHang:
                Session["GioHang"] = tbGioHang;

            lblKq.Text = "Thêm sản phẩm vào giỏ hàng thành công";
            }
        }
    }
    
}