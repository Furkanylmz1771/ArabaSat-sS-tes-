<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ContactPage.aspx.cs" Inherits="ArabaSatışSitesi.ContactPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:TextBox ID="tboxName" runat="server" ToolTip="İsminizi giriniz : "></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="tboxMail" runat="server" ToolTip="Mail adresini giriniz :"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="tboxMessage" runat="server" Height="236px" TextMode="MultiLine" ToolTip="Mesajınızı yazınız : " Width="825px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnSend" runat="server" OnClick="btnSend_Click" Text="Mesajı gönder" ToolTip="Mesajı gönder" Width="121px" />
    </form>
</asp:Content>
