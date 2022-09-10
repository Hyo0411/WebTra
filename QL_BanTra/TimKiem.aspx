<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TimKiem.aspx.cs" Inherits="TimKiem" %>
<%@ MasterType VirtualPath="~/MasterPage.master"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <table>
        <tr>
            <td style="height: 35px">
               &nbsp
            </td>
        </tr>
        <tr>
            <td style="font-family:'Courier New';"><h2>&nbsp TÌM KIẾM  <span class="badge rounded-pill bg-warning text-dark" style="font-family:'Courier New'">Search</span></h2></td>
            <td style="color:#e25d33"> <hr style="width: 378px; height: 7px;" /></td>
        </tr>
        <tr><td>
            &nbsp
            </td></tr>
        <tr>
            <td style="text-align:right; font-family:'Courier New'">
                <asp:Label ID="Label4" runat="server" >Tên sản phẩm &nbsp</asp:Label>
            </td>
            <td>
            <asp:TextBox ID="txtTimKiem" Width="300px"  CssClass="form-control me-2 d-flex"  runat="server"> </asp:TextBox>
            </td>
           
        </tr>
        <tr><td>
            <br />
            </td></tr>

        <tr>
            <td style="text-align:right; font-family:'Courier New'">
                <asp:Label ID="Label3" runat="server" >Giá  &nbsp</asp:Label>
            </td>
            <td >
            <asp:TextBox ID="txtLowP" Width="300px"  CssClass="form-control me-2 d-flex"  runat="server"> </asp:TextBox>
            </td>
            </tr>
        
        <tr><td>
            <br />
            </td></tr>
        <tr>
            <td style="text-align:right; font-family:'Courier New'">
                <asp:Label ID="Label5" runat="server" >Đến  &nbsp</asp:Label>
            </td>
            <td>
            <asp:TextBox ID="txtHeightP" Width="300px"  CssClass="form-control me-2 d-flex"  runat="server"> </asp:TextBox>
            </td>
        </tr>
        
        <tr><td>

            <br />

            </td></tr>
        <tr >
            <td></td>
            <td >
            <asp:Button ID="btnTimKiem" runat="server" Text="       TÌM KIẾM" CssClass="btn btn-primary d-flex" Width="239px" OnClick="btnTimKiem_Click"  Font-Names="Courier New" />
            </td>

        </tr>
        <tr><td>
            <br />
            </td></tr>
    </table>
    <center>
        
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="2" Width="806px" RepeatDirection="Horizontal" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" GridLines="Both">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        
        <ItemTemplate>
            <table style="width:99%; height: 366px;">
                <tr>
                    <td style="text-align:center" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center">
                        <asp:ImageButton ID="Image3" runat="server" Height="277px" ImageUrl='<%# "~/Image/" + Eval("DuongDan") %>' Width="340px"
                            PostBackUrl='<%# "~/ChiTietSanPham.aspx?msp=" + Eval("MaSP") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center" colspan="2">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSP") %>' Font-Names="Courier New" Font-Italic Font-Size="X-Large"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center" colspan="2">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Gia") %>' Font-Names="Courier New"  Font-Size="Medium"></asp:Label>
                    </td>
                </tr>
                <tr>
                    
                    <td style="text-align:center">
                        <asp:Button ID="btnChiTietSanPham"  runat="server" Text="CHI TIẾT SẢN PHẨM" Font-Names="Courier New" Height="30px" Width="180px" CssClass="btn btn-success" PostBackUrl='<%# "~/ChiTietSanPham.aspx?msp=" + Eval("MaSP") %>'/>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
     
    </asp:DataList>
     
        </center>

</asp:Content>

