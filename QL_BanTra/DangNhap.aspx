<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DangNhap.aspx.cs" Inherits="DangNhap" %>
<%@ MasterType VirtualPath="~/MasterPage.master"  %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <center>
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
            <td style="font-family:'Courier New';"><h2>&nbsp ĐĂNG NHẬP  <span class="badge rounded-pill bg-warning text-dark" style="font-family:'Courier New'">Login</span></h2></td>
        
        
            <td style="color:#e25d33"> <hr style="width: 378px; height: 7px;" /></td>
        </tr>
        <tr><td>
            &nbsp
            </td></tr>
    </table>

        
            <%--<tr>
                <td class="auto-style1" style="height: 45px;text-align:center; background-color:#e25d33" colspan="2" >
                <asp:Label ID="Label2" runat="server" Text="ĐĂNG NHẬP" Font-Names="Courier New" ForeColor="White" Font-Size="Larger"></asp:Label>
                </td>
            </tr>--%>
        <table>
            <tr>
                <td class="auto-style1" style="height: 45px; width: 396px; font-family:'Courier New'; text-align:right">Tên tài khoản</td>
                <td class="auto-style2" style="height: 45px; width: 80%;">
                &nbsp&nbsp&nbsp&nbsp <asp:TextBox ID="txtTaiKhoan" runat="server" Width="284px"></asp:TextBox>

                </td>
            </tr>
           
            <tr>
                <td class="auto-style1" style="height: 45px; width: 396px; font-family:'Courier New'; text-align:right">Mật khẩu</td>
                <td class="auto-style2" style="height: 45px; width: 80%;">
                   &nbsp&nbsp&nbsp&nbsp <asp:TextBox ID="txtMatKhau" runat="server" Width="284px" TextMode="Password"></asp:TextBox>

                </td>
            </tr>
     
               
           
           
            <tr>
                <td class="auto-style1" style="height: 45px; font-family:'Courier New'; text-align:center" colspan="2">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/DangKy.aspx">Chưa có tài khoản? Hãy đăng ký ngay</asp:HyperLink>
                </td>
            </tr>
     
            <tr>
                <td class="auto-style1" style="height: 45px; text-align:center" colspan="2">
                    <asp:Button ID="btnDangNhap" runat="server" Text="ĐĂNG NHẬP" Font-Names="Courier New"  CssClass="btn btn-primary" Height="39px" Width="138px" OnClick="btnDangNhap_Click"/>
                </td>
            </tr>
     
           

        <tr>
                <td class="auto-style1" style="height: 45px; text-align:center" colspan="2">
                    &nbsp;<asp:Label ID="lblKq" runat="server" Text="" ForeColor="Red" Font-Names="Courier New"></asp:Label></td>
            </tr>
     
                </table>
        </center>


</asp:Content>

