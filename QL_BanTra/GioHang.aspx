<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GioHang.aspx.cs" Inherits="GioHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table>
        <tr>
            <td style="height: 35px">
               &nbsp
            </td>
        </tr>
        <tr>
            <td style="font-family:'Courier New';"><h2>&nbsp GIỎ HÀNG  <span class="badge rounded-pill bg-warning text-dark" style="font-family:'Courier New'">Cart</span></h2></td>
        
        
            <td style="color:#e25d33"> <hr style="width: 378px; height: 7px;" /></td>
        </tr>
        <tr><td>
            &nbsp
            </td></tr>
    </table>
    <center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
        Font-Names="Courier New" 
            DataKeyNames="MaSP"
        OnRowCancelingEdit="GridView1_RowCancelingEdit"
             onrowdeleting="GridView1_RowDeleting" 
            onrowediting="GridView1_RowEditing"
             onrowupdating="GridView1_RowUpdating" 
            Width="50%" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Mã sản phẩm">
                    <ItemTemplate>
                        <asp:Label ID="lblMaSP" runat="server" Text='<%# Eval("MaSP") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Tên sản phẩm">
                    <ItemTemplate>
                        <asp:Label ID="lblHinhAnh" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Giá">
                    <ItemTemplate>
                        <asp:Label ID="lblGia" runat="server" Text='<%# Eval("Gia") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="SoLuong" HeaderText="Số lượng" />
                <asp:TemplateField HeaderText="Thành tiền">
                    <ItemTemplate>
                        <asp:Label ID="lblThanhTien" runat="server" Text='<%# Eval("ThanhTien") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" UpdateText="Cập nhật" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <br />
        <asp:Label ID="lblTongTien" Font-Names="Courier new" runat="server" ></asp:Label>
        </center>
    </asp:Content>

