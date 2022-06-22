<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Cart.aspx.cs" Inherits="Ch07Cart.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainPlaceholder" runat="server">
<div class="container">
    <main>
        <form id="form1" runat="server" class="form-horizontal">
    
            <div class="row"><%-- row 1 --%>
                <div class="col-sm-12"><h1>Your shopping cart</h1></div>
                <div class="col-sm-6"><%-- cart display column --%>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <asp:ListBox ID="lstCart" runat="server" CssClass="form-control">
                            </asp:ListBox></div>
                    </div>
                </div>
                <div class="col-sm-6"><%-- cart edit buttons column --%>
                    <div class="form-group">
                        <div class="col-sm-12"><asp:Button ID="btnRemove" runat="server" 
                            Text="Remove Item" onclick="btnRemove_Click" CssClass="btn" /></div>
                        <div class="col-sm-12"><asp:Button ID="btnEmpty" runat="server" 
                            Text="Empty Cart" onclick="btnEmpty_Click" CssClass="btn" /></div>
                    </div>
                </div>
            </div><%-- end of row 1 --%>

            <div class="row"><%-- row 2 --%>
                <div class="col-sm-12">
                    <div class="form-group"><%-- message label --%>
                        <asp:Label ID="lblMessage" runat="server" EnableViewState="False"
                            CssClass="text-info col-sm-12"></asp:Label>
                    </div>
                    <div class="form-group"><%-- buttons --%>
                        <div class="col-sm-12">
                            <asp:Button ID="btnContinue" runat="server"
                                PostBackUrl="~/Order.aspx" Text="Continue Shopping" CssClass="btn" />
                            <asp:Button ID="btnCheckOut" runat="server" Text="Check Out"  
                                onclick="btnCheckOut_Click" CssClass="btn" />
                        </div>
                    </div>
                </div>
            </div><%-- end of row 2 --%>

        </form>
    </main>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footerPlaceHolder" runat="server">
</asp:Content>


