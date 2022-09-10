<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="QuanLyKhachHang.aspx.cs" Inherits="QuanLyKhachHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <table>
        <tr>
            <td style="height: 35px">
               &nbsp
            </td>
        </tr>
        <tr>
            <td style="font-family:'Courier New';"><h2>&nbsp QUẢN LÝ KHÁCH HÀNG  <span class="badge rounded-pill bg-warning text-dark" style="font-family:'Courier New'">Customers</span></h2></td>
        
        
            <td style="color:#e25d33"> <hr style="width: 258px; height: 7px;" /></td>
        </tr>
        <tr><td>
            &nbsp
            </td></tr>
    </table>
    <center>
    <asp:Button ID="btnThemMoi" runat="server" Text="THÊM MỚI" Font-Names="Courier New" ForeColor="White" CssClass="btn btn-primary" OnClick="btnThemMoi_Click" />
    <hr style="width: 459px" />
        <asp:Panel ID="pnlEdit" runat="server">
        <table>
        <tr><td></td></tr>
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
                    <asp:Button ID="btnLuuThongTin" runat="server" Text="LƯU THÔNG TIN" Font-Names="Courier New" CssClass="btn btn-primary" Height="39px" Width="138px" OnClick="btnLuuThongTin_Click"/>
                </td>
            </tr>
            
            
            <tr>
                <td class="auto-style1" style="height: 45px; text-align:center" colspan="2">
                    &nbsp;<asp:Label ID="lblKq" runat="server" Text="" ForeColor="Blue" Font-Names="Courier New"></asp:Label></td>
            </tr>
            
            
            <tr><br /><br />
                
            </tr>
            <tr><td>

                </td></tr>
            <tr><td>

                </td></tr>
        </table>
            
</asp:Panel>
    
               
            
                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                      OnRowDeleting="GridView1_RowDeleting"
                 OnRowEditing="GridView1_RowEditing"
                 OnRowUpdating="GridView1_RowUpdating"
                 Font-Names="Courier New"
                 OnRowCancelingEdit="GridView1_RowCancelingEdit" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4"  ForeColor="Black" GridLines="Vertical" DataKeyNames="TaiKhoan">
                 <AlternatingRowStyle BackColor="White" />
                      <Columns>
                          <asp:TemplateField HeaderText="Tên tài khoản">
                              <ItemTemplate>
                                  <asp:Label ID="lblTaiKhoan" runat="server" Text='<%# Eval("TaiKhoan") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:BoundField DataField="HoTen" HeaderText="Tên khách hàng" />
                          <asp:BoundField DataField="MatKhau" HeaderText="Mật khẩu" />
                          <asp:BoundField DataField="DienThoai" HeaderText="Điện thoại" />
                          <asp:TemplateField HeaderText="Giới tính">
                              <ItemTemplate>
                                  <asp:Label ID="lblGioiTinh" runat="server" Text='<%# Eval("GioiTinh")  %>'></asp:Label>
                              </ItemTemplate>
                              <EditItemTemplate>
                                     <asp:DropDownList ID="DropDownList1" runat="server">
                                         <asp:ListItem>Nam</asp:ListItem>
                                         <asp:ListItem>Nữ</asp:ListItem>
                                     </asp:DropDownList>
                              </EditItemTemplate>
                          </asp:TemplateField>
                          <asp:BoundField DataField="DiaChi" HeaderText="Địa chỉ" />
                          <asp:BoundField DataField="Email" HeaderText="Email" />
                           <asp:CommandField CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" ShowCancelButton="True" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Cập nhật" />
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
    </center>
</asp:Content>

