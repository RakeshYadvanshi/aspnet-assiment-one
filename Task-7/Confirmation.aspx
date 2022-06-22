<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Confirmation.aspx.cs" Inherits="Ch07Cart.Confirmation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainPlaceholder" runat="server">
<div class="container">
    <main>
        <form id="form1" runat="server">
    
            <div class="form-group">
                <asp:TextBox ID="txtData" runat="server" TextMode="MultiLine" CssClass="form-control" 
                    Columns="50" Rows="25"></asp:TextBox>  
            </div>

            <div class="form-group">
                <asp:Button ID="btnContinue" runat="server" CssClass="btn btn-default"
                    PostBackUrl="~/Order.aspx" Text="Continue Shopping" />
            </div>

        </form>
    </main>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footerPlaceHolder" runat="server">
</asp:Content>
