<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChiTietSanPham.aspx.cs" Inherits="ChiTietSanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <table>
        <tr>
            <td style="height: 35px">
               &nbsp
            </td>
        </tr>
        <tr>
            <td style="font-family:'Courier New';"><h2>&nbsp THÔNG TIN SẢN PHẨM  <span class="badge rounded-pill bg-warning text-dark" style="font-family:'Courier New'">Information</span></h2></td>
        
        
            <td style="color:#e25d33"> <hr style="width: 258px; height: 7px;" /></td>
        </tr>
        <tr><td>
            &nbsp
            </td></tr>
    </table>
<center>
    <asp:Label ID="lblKq" runat="server" Text="" Font-Names="Courier New" ForeColor="Green" Font-Size="Larger"></asp:Label>
    <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList_ItemCommand" DataKeyField="MaSP" >
        <ItemTemplate>
            <table style="width:100%; height: 433px;text-align:justify">
                <tr>
                    <td class="auto-style5" rowspan="7" style="width: 395px">
                        <asp:Image ID="lblHinh" runat="server" Height="421px" Width="392px" ImageUrl='<%# "~/Image/" + Eval("DuongDan") %>' />
                    </td>
                    </tr>
                <tr>
                    <td colspan="2">
                     &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <asp:Label ID="lblMaSP" runat="server" Font-Names="Courier New" Font-Italic Font-Size="XX-Large" Text='<%# Eval("MaSP") %>'></asp:Label>
                    </td>
                    </tr>
                    <td colspan="2">
                     &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <asp:Label ID="lblTenSP" runat="server" Font-Names="Courier New" Font-Italic Font-Size="XX-Large" Text='<%# Eval("TenSP") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <asp:Label ID="lblGia" runat="server" Font-Names="Courier New" Font-Size="X-Large" Text='<%# Eval("Gia") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="height: 58px" colspan="2">
                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  <asp:Label ID="lblMoTa" runat="server" Font-Names="Courier New" Text='<%# Eval("MoTa") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="font-family:'Courier New' ">
                       &nbsp&nbsp Khối lượng: 
                    </td>
                    <td>
                      <asp:Label ID="lblKhoiLuong" runat="server" Font-Names="Courier New" Text= '<%# Eval("KhoiLuong") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:center">
                        <asp:Button ID="btnMuaTiep"  runat="server" Text="MUA TIẾP" Font-Names="Courier New" Height="30px" Width="180px" CssClass="btn btn-success" PostBackUrl="~/TrangChu.aspx" />
                    </td>
                    <td style="text-align:center">
                        <asp:Button ID="btnThemVaoGioHang"  runat="server" Text="THÊM VÀO GIỎ HÀNG" Font-Names="Courier New" Height="30px" Width="180px" CssClass="btn btn-success" CommandName="MUA" />
                    </td>
                </tr>
               
                 
            </table>
        </ItemTemplate>

        </asp:DataList>

   
    </center>

</asp:Content>

