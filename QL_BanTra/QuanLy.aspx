<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="QuanLy.aspx.cs" Inherits="QuanLy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    <table>
        <tr>
            <td style="height: 35px">
               &nbsp
            </td>
        </tr>
        <tr>
            <td style="font-family:'Courier New';"><h2>&nbsp QUẢN LÝ  <span class="badge rounded-pill bg-warning text-dark" style="font-family:'Courier New'">Manager</span></h2></td>
        
        
            <td style="color:#e25d33"> <hr style="width: 315px; height: 7px;" /></td>
        </tr>
        <tr><td>
            &nbsp
            </td>  
        </tr>
        <tr><td>
            &nbsp
            </td>  
        </tr>
        <tr><td>
            &nbsp
            </td>  
        </tr>
        <tr><td>
            &nbsp
            </td>  
        </tr>
        </table>
            <center>
                <table>
                <tr>
                    <td>
                  <asp:Button ID="btnQLSP"  runat="server" Text="QUẢN LÝ SẢN PHẨM" Font-Names="Courier New"  ForeColor="White" BackColor="#e25d33" Width="270px" Font-Size="Larger"  PostBackUrl="~/QuanLySanPham.aspx" Height="64px" OnClick="btnQLSP_Click"   />
                    </td>
                </tr>
                    <tr><td></td></tr>
                    <tr><td style="height: 42px" class="auto-style9"></td></tr>
                    <tr><td>
            &nbsp
            </td>  
        </tr>
                <tr>
                    <td>
               <asp:Button ID="btnQLKH"  runat="server" Text="QUẢN LÝ KHÁCH HÀNG" Font-Names="Courier New" ForeColor="White" BackColor="#e25d33" Width="270px" Font-Size="Larger"  PostBackUrl="~/QuanLyKhachHang.aspx" Height="64px" />
                    </td>
                </tr>
            </table>
          
        
           
    
        </center>
</asp:Content>

