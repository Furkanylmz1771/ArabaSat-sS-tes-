<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Messages.aspx.cs" Inherits="ArabaSatışSitesi.Messages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <table class="nav-justified">
            <tr>
                <td>MESAJLAR</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:DataList ID="DataList1" runat="server">
                        <ItemTemplate>
                            <table class="nav-justified">
                                <tr>
                                    <td>Gönderen Kişi :
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ContactName") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Gönderen kişinin mail adresi&nbsp; :
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("ContactMail") %>'></asp:Label>
                                        <br />
                                        Mesaj :</td>
                                </tr>
                                <tr>
                                    <td>:
                                        <asp:TextBox ID="tboxMesaj" runat="server" Height="136px" ReadOnly="True" Text='<%# Eval("ContactMessage") %>' TextMode="MultiLine" Width="290px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 20px">
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                   <a href="MessageDelete.Aspx?id=<%# Eval("ContactID") %>"><div>Sil</div></a> 
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</asp:Content>
