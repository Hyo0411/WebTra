using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["TenTaiKhoan"]) == "admin")
        {
            lblXinChao.Text = "Xin Chào, Bạn '" + Convert.ToString(Session["TenTaiKhoan"]) + "'";
            btnDangXuat.Visible = true;
            btnQuanLy.Visible = true;
        }
        else if (Convert.ToString(Session["TenTaiKhoan"]) != "" && Convert.ToString(Session["TenTaiKhoan"]) != "admin" )
        {
            lblXinChao.Text = "Xin Chào, Bạn '" + Convert.ToString(Session["TenTaiKhoan"]) + "'";
            btnDangXuat.Visible = true;
            btnQuanLy.Visible = false;
        }
        else
        {
            lblXinChao.Text = "Xin Chào, Khách Hàng ";
            btnDangXuat.Visible = false;
            btnQuanLy.Visible = false;
            
            
        }
    }

    public TextBox TextBoxSearch
    {
        get { return this.txtTimKiem; }
    }

    public Button ButtonSearch
    {
        get { return this.btnTimKiem; }
    }




    protected void btnDangXuat_Click(object sender, EventArgs e)
    {
        
        Session.Add("TenTaiKhoan", "");
        Response.Redirect("TrangChu.aspx");
    }

    protected void btnQuanLy_Click(object sender, EventArgs e)
    {
        Response.Redirect("QuanLy.aspx");
    }
}
