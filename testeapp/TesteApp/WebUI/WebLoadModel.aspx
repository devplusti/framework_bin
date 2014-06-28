<%@ Page Title="" Language="C#" MasterPageFile="~/WebUI.Master" AutoEventWireup="true" CodeBehind="WebLoadModel.aspx.cs" Inherits="WebUI.WebLoadModel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div id="menu">
    </div>

    <div style="height: 450px; overflow: auto;" class="rounded_corners">
        <asp:GridView
            ID="GridView1"
            runat="server"
            Width="100%"
            HeaderStyle-BackColor="#3AC0F2"
            HeaderStyle-ForeColor="White"
            RowStyle-BackColor="#A1DCF2"
            AlternatingRowStyle-BackColor="White"
            RowStyle-ForeColor="#3A3A3A"
            AutoGenerateColumns="false"
            AllowPaging="true"
            PageSize="10">
        </asp:GridView>
    </div>

    <asp:Label ID="errorLabel" runat="server" Text="Label"></asp:Label>
</asp:Content>
