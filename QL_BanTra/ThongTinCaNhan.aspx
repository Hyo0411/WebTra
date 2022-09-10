<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ThongTinCaNhan.aspx.cs" Inherits="ThongTinCaNhan" %>
<%@ MasterType VirtualPath="~/MasterPage.master"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
        <table>
        <tr><td>

            <br />

            </td></tr>
        <tr>
            <td style="height: 35px">
               &nbsp
            </td>
        </tr>
        <tr>
            <td style="font-family:'Courier New';"><h2>&nbsp THÔNG TIN CÁ NHÂN  <span class="badge rounded-pill bg-warning text-dark" style="font-family:'Courier New'">Customer</span></h2></td>
        
        
            <td style="color:#e25d33"> <hr style="width: 257px; height: 7px; " /></td>
        </tr>
        <tr><td>
            &nbsp
            </td></tr>
    </table>
    <center>
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <table style="width: 100%; height: 386px;">
                <tr>
                    <td>
                        <asp:Label ID="Label18" runat="server" Font-Names="Courier New" Text="Họ và tên:"></asp:Label>
                    </td>
                    <td>
                  &nbsp&nbsp&nbsp       <asp:Label ID="Label24" runat="server" Font-Names="Courier New" ForeColor="#FF3300" Text='<%# Eval("HoTen") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                       <asp:Label ID="Label19" runat="server" Font-Names="Courier New" Text="Tên tài khoản: "></asp:Label>
                    </td>
                    <td>
                   &nbsp&nbsp&nbsp     <asp:Label ID="Label25" runat="server" Font-Names="Courier New" ForeColor="#FF3300" Text='<%# Eval("TaiKhoan") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label20" runat="server" Font-Names="Courier New" Text="Điện thoại:"></asp:Label>
                    </td>
                    <td>
                 &nbsp&nbsp&nbsp        <asp:Label ID="Label26" runat="server" Font-Names="Courier New" ForeColor="#FF3300" Text='<%# Eval("DienThoai") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label21" runat="server" Font-Names="Courier New" Text="Giới tính: "></asp:Label>
                    </td>
                    <td>
                 &nbsp&nbsp&nbsp        <asp:Label ID="Label27" runat="server" Font-Names="Courier New" ForeColor="#FF3300" Text='<%# Eval("GioiTinh") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label22" runat="server" Font-Names="Courier New" Text="Địa chỉ: "></asp:Label>
                    </td>
                    <td>
                  &nbsp&nbsp&nbsp       <asp:Label ID="Label28" runat="server" Font-Names="Courier New" ForeColor="#FF3300" Text='<%# Eval("DiaChi") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label23" runat="server" Font-Names="Courier New" Text="Email: "></asp:Label>
                    </td>
                    <td>
              &nbsp&nbsp&nbsp           <asp:Label ID="Label29" runat="server" Font-Names="Courier New" ForeColor="#FF3300" Text='<%# Eval("Email") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    </center>    
        
</asp:Content>

