<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true" CodeBehind="AdminAddCars.aspx.cs" Inherits="ArabaSatışSitesi.AdminAddCars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <asp:DataList ID="DataList1" runat="server">

        <ItemTemplate>
             <table class="nav-justified">
            <tr>
                <td style="width: 181px">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 181px">Araba modeli </td>
                <td>
                    <asp:TextBox ID="tboxModel" runat="server" Width="196px" ReadOnly="True" Text='<%# Eval("CarModel") %>'></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 181px">Araba fotoğrafı</td>
                <td>
                    <asp:TextBox ID="tBoxPhoto" runat="server" Width="196px" ReadOnly="True" Text='<%# Eval("CarPhoto") %>'></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 181px">Araba yakıt tipi </td>
                <td>
                    <asp:TextBox ID="tboxFuel" runat="server" Width="196px" ReadOnly="True" Text='<%# Eval("CarFuelType") %>'></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 181px">Açııklama</td>
                <td>
                    <asp:TextBox ID="tboxDescription" runat="server" Height="107px"  TextMode="MultiLine" Width="196px" ReadOnly="True" Text='<%# Eval("CarDescription") %>'></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 181px">Araç satıcısı :</td>
                <td>
                    <asp:TextBox ID="tboxSeller" runat="server" Width="196px" ReadOnly="True" Text='<%# Eval("CarSeller") %>'></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 181px">İletişim telefon numarası :</td>
                <td>
                    <asp:TextBox ID="tboxContact" runat="server" Width="196px" ReadOnly="True" Text='<%# Eval("CarContact") %>'></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 181px; height: 30px">Araç fiyatı : </td>
                <td style="height: 30px">
                    <asp:TextBox ID="tboxPrice" runat="server" Width="196px" ReadOnly="True" Text='<%# Eval("CarPrice") %>'></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 181px; height: 30px; border-bottom-style: solid; border-bottom-width: medium;">
                    <br />
                </td>
                <td style="border-color: #808080; height: 30px; border-bottom-style: solid; border-bottom-width: medium;">
                    &nbsp;</td>
            </tr>   
        </table>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
          <a href="ApproveCars.aspx?carid=<%# Eval("CarID") %>> <div class="btn btn-danger">Onayla</div></a>  
        </ItemTemplate>

    </asp:DataList>
    </form>
</asp:Content>
