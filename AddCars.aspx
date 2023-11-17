<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="AddCars.aspx.cs" Inherits="ArabaSatışSitesi.AddCars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <table class="nav-justified">
            <tr>
                <td style="width: 181px">Araba markasını seçiniz :</td>
                <td>
                    <asp:DropDownList ID="combobox" runat="server" Width="203px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 181px">Araba modelini yazınız :</td>
                <td>
                    <asp:TextBox ID="tboxModel" runat="server" Width="196px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 181px">Araba fotoğraf linki :</td>
                <td>
                    <asp:TextBox ID="tBoxPhoto" runat="server" Width="196px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 181px">Araba yakıt tipi giriniz :</td>
                <td>
                    <asp:TextBox ID="tboxFuel" runat="server" Width="196px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 181px">Açııklama giriniz :</td>
                <td>
                    <asp:TextBox ID="tboxDescription" runat="server" Height="107px" OnTextChanged="TextBox4_TextChanged" TextMode="MultiLine" Width="196px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 181px">Araç satıcısı :</td>
                <td>
                    <asp:TextBox ID="tboxSeller" runat="server" Width="196px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 181px">İletişim numarası :</td>
                <td>
                    <asp:TextBox ID="tboxContact" runat="server" Width="196px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 181px; height: 30px">Araç fiyatı : </td>
                <td style="height: 30px">
                    <asp:TextBox ID="tboxPrice" runat="server" Width="196px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 181px; height: 30px">&nbsp;</td>
                <td style="height: 30px">
                    <asp:Button ID="btnSend" runat="server" Height="69px" OnClick="btnSend_Click" Text="İlanı Gönder" Width="210px" />
                </td>
            </tr>
        </table>
    </form>
</asp:Content>
