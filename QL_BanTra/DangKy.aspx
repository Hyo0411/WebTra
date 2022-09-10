<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DangKy.aspx.cs" Inherits="DangKy" %>
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
            <td style="font-family:'Courier New';"><h2>&nbsp ĐĂNG KÝ  <span class="badge rounded-pill bg-warning text-dark" style="font-family:'Courier New'">Sign-up</span></h2></td>
        
        
            <td style="color:#e25d33"> <hr style="width: 378px; height: 7px;" /></td>
        </tr>
        <tr><td>
            &nbsp
            </td></tr>
    </table>
    <table>
        <tr><td></td></tr>
            
        
            <tr>
                <td class="auto-style1" style="height: 45px; width: 396px; font-family:'Courier New'; text-align:right" >Họ và tên</td>
                <td class="auto-style2" style="height: 45px; width: 80%;"> 
                  &nbsp&nbsp&nbsp&nbsp  <asp:TextBox ID="txtHoTen" runat="server" Width="284px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="height: 45px; width: 396px; font-family:'Courier New'; text-align:right">Tên tài khoản*</td>
                <td class="auto-style2" style="height: 45px; width: 80%;">
                &nbsp&nbsp&nbsp&nbsp    <asp:TextBox ID="txtTaiKhoan" runat="server" Width="284px"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="height: 45px; width: 396px; font-family:'Courier New'">&nbsp;</td>
                <td class="auto-style2" style="height: 45px; width: 80%;">
            &nbsp&nbsp&nbsp&nbsp<asp:RequiredFieldValidator ID="RequiredFieldValidator1" Font-Names="Courier New" runat="server" ControlToValidate="txtTaiKhoan" ErrorMessage="Tên tài khoản không được bỏ trống" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="height: 45px; width: 396px; font-family:'Courier New'; text-align:right">Mật khẩu*</td>
                <td class="auto-style2" style="height: 45px; width: 80%;">
                 &nbsp&nbsp&nbsp&nbsp<asp:TextBox ID="txtMatKhau" runat="server" Width="284px" TextMode="Password"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="height: 45px;  font-family:'Courier New'; width: 396px;; text-align:right">Nhập lại mật khẩu</td>
                <td class="auto-style2" style="height: 45px; width: 80%;">
                  &nbsp&nbsp&nbsp&nbsp<asp:TextBox ID="txtNhapLaiMatKhau" runat="server" Width="281px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="height: 45px;  font-family:'Courier New'; width: 396px;">&nbsp;</td>
                <td class="auto-style2" style="height: 45px; width: 80%;">
                &nbsp&nbsp&nbsp&nbsp<asp:CompareValidator ID="CompareValidator1" runat="server" Font-Names="Courier New" ControlToValidate="txtNhapLaiMatKhau" ControlToCompare="txtMatKhau" ErrorMessage="Nhập sai mật khẩu, vui lòng nhập lại" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="height: 45px; width: 396px; font-family:'Courier New'; text-align:right">Số điện thoại</td>
                <td class="auto-style2" style="height: 45px; width: 80%;">
               &nbsp&nbsp&nbsp&nbsp     <asp:TextBox ID="txtDienThoai" runat="server" Width="281px" TextMode="Phone"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="height: 45px; width: 396px; font-family:'Courier New'; text-align:right">Giới tính </td>
               &nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp <td class="auto-style2" style="height: 45px; width: 80%;">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Font-Names="Courier New" Width="284px">
                 <asp:ListItem>Nam</asp:ListItem>
                   <asp:ListItem>Nữ</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="height: 45px; width: 396px; font-family:'Courier New'; text-align:right">Địa chỉ</td>
                <td class="auto-style2" style="height: 45px; width: 80%;">
               &nbsp&nbsp&nbsp&nbsp     <asp:TextBox ID="txtDiaChi" runat="server" Width="282px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="height: 45px; width: 396px; font-family:'Courier New'; text-align:right">Email</td>
                <td class="auto-style2" style="height: 45px; width: 80%;">
               &nbsp&nbsp&nbsp&nbsp     <asp:TextBox ID="txtEmail" runat="server" Width="282px" TextMode="Email"></asp:TextBox>

                </td>
            </tr>
            
            
            <tr>
                <td class="auto-style1" style="height: 45px; width: 396px; font-family:'Courier New'">&nbsp;</td>
                <td class="auto-style2" style="height: 45px; width: 80%;">
                &nbsp&nbsp&nbsp&nbsp    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"  Font-Names="Courier New" ControlToValidate="txtEmail" ErrorMessage="Nhập địa chỉ email đúng định dạng" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                </td>
            </tr>
            
            
            <tr>
                <td class="auto-style1" style="height: 45px; text-align:center" colspan="2">
                    <asp:Button ID="btnDangKy" runat="server" Text="ĐĂNG KÝ" Font-Names="Courier New" CssClass="btn btn-primary" Height="39px" Width="138px" OnClick="btnDangKy_Click"/>
                </td>
            </tr>
            
            
            <tr>
                <td class="auto-style1" style="height: 45px; text-align:center" colspan="2">
                    &nbsp;<asp:Label ID="lblKq" runat="server" Text="" ForeColor="Blue" Font-Names="Courier New"></asp:Label></td>
            </tr>
            
            
            <tr><br /><br />
                
            </tr>
        </table>
    </div>
                </td>
            </tr>
        </table>
        </center>

</asp:Content>

