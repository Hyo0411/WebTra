<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="QuanLySanPham.aspx.cs" Inherits="QuanLySanPham" %>
<%@ MasterType VirtualPath="~/MasterPage.master"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <table>
        <tr>
            <td style="height: 35px">
               &nbsp
            </td>
        </tr>
        <tr>
            <td style="font-family:'Courier New';"><h2>&nbsp QUẢN LÝ SẢN PHẨM  <span class="badge rounded-pill bg-warning text-dark" style="font-family:'Courier New'">Products</span></h2></td>
        
        
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
                <td class="auto-style1" style="height: 45px; width: 396px; font-family:'Courier New'; text-align:right" >Mã sản phẩm</td>
                <td class="auto-style2" style="height: 45px; width: 80%;"> 
                  &nbsp&nbsp&nbsp&nbsp  <asp:TextBox ID="txtMaSP" runat="server" Width="284px"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td class="auto-style1" style="height: 45px; width: 396px; font-family:'Courier New'; text-align:right">Tên sản phẩm</td>
                <td class="auto-style2" style="height: 45px; width: 80%;">
                &nbsp&nbsp&nbsp&nbsp    <asp:TextBox ID="txtTenSP" runat="server" Width="284px"></asp:TextBox>

                </td>
            </tr>
            
            <tr>
                <td class="auto-style1" style="height: 45px; width: 396px; font-family:'Courier New'; text-align:right">Hình ảnh</td>
                <td class="auto-style2" style="height: 45px; width: 80%;">
                 &nbsp&nbsp&nbsp&nbsp<asp:TextBox ID="txtHinhAnh" runat="server" Width="284px" ></asp:TextBox>

                </td>
            </tr>
          
            <tr>
                <td class="auto-style1" style="height: 45px; width: 396px; font-family:'Courier New'; text-align:right">Khối lượng</td>
                <td class="auto-style2" style="height: 45px; width: 80%;">
               &nbsp&nbsp&nbsp&nbsp     <asp:TextBox ID="txtKhoiLuong" runat="server" Width="281px" ></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="height: 45px; width: 396px; font-family:'Courier New'; text-align:right">Giá </td>
               <td class="auto-style2" style="height: 45px; width: 80%;">
                 &nbsp&nbsp&nbsp&nbsp<asp:TextBox ID="txtGia" runat="server" Width="284px" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="height: 45px; width: 396px; font-family:'Courier New'; text-align:right">Mô tả</td>
                <td class="auto-style2" style="height: 45px; width: 80%;">
               &nbsp&nbsp&nbsp&nbsp     <asp:TextBox ID="txtMoTa" runat="server" Width="282px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="height: 45px; width: 396px; font-family:'Courier New'; text-align:right">Mã loại</td>
                <td class="auto-style2" style="height: 45px; width: 80%;">
               &nbsp&nbsp&nbsp&nbsp     <asp:TextBox ID="txtMaLoai" runat="server" Width="282px"></asp:TextBox>

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
        </table>
            <tr><td></td></tr>
            <tr><td></td></tr>
</asp:Panel>
    
               
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                 AllowPaging="true"
                 PageSize="2"
                 OnPageIndexChanging="GridView1_PageIndexChanging"
                      OnRowDeleting="GridView1_RowDeleting"
                 OnRowEditing="GridView1_RowEditing"
                 OnRowUpdating="GridView1_RowUpdating"
                 Font-Names="Courier New"
                 OnRowCancelingEdit="GridView1_RowCancelingEdit" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4"  ForeColor="Black" GridLines="Vertical" DataKeyNames="MaSP" >
                 <AlternatingRowStyle BackColor="White" />
                      <Columns>
                          <asp:TemplateField HeaderText="Mã SP">
                              <ItemTemplate>
                                  <asp:Label ID="lblMaSP" runat="server" Text='<%# Eval("MaSP") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:BoundField DataField="TenSP" HeaderText="Tên SP" />
                          <asp:BoundField DataField="DuongDan" HeaderText="Hình" />
                          <asp:BoundField DataField="KhoiLuong" HeaderText="Khối Lượng" />
                          <asp:BoundField DataField="Gia" HeaderText="Giá" />
                          <asp:BoundField DataField="MoTa" HeaderText="Mô Tả" />
                          <asp:TemplateField HeaderText="Mã Loại">
                              <ItemTemplate>
                                  <asp:Label ID="lblMaLoai" runat="server" Text='<%# Eval("MaLoai")  %>'></asp:Label>
                              </ItemTemplate>
                              <EditItemTemplate>
                                     <asp:DropDownList ID="DropDownList1" runat="server">
                                         <asp:ListItem>L01</asp:ListItem>
                                         <asp:ListItem>L02</asp:ListItem>
                                         <asp:ListItem>L03</asp:ListItem>
                                     </asp:DropDownList>
                              </EditItemTemplate>
                          </asp:TemplateField>
                          
                           <asp:CommandField CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" ShowCancelButton="True" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Cập nhật" />
                          <asp:TemplateField>
                              <FooterTemplate>
                                  <%#stt_trang() %>
                              </FooterTemplate>
                          </asp:TemplateField>
                      </Columns>
                      <FooterStyle BackColor="#CCCC99" />
                 <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Center" />
                 <RowStyle BackColor="#F7F7DE" />
                 <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                 <SortedAscendingCellStyle BackColor="#FBFBF2" />
                 <SortedAscendingHeaderStyle BackColor="#848384" />
                 <SortedDescendingCellStyle BackColor="#EAEAD3" />
                 <SortedDescendingHeaderStyle BackColor="#575357" />
                  </asp:GridView>
    </center>
</asp:Content>

