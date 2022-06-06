<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ex02FutureValue.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chapter 2: Future Value</title>
   
    <style type="text/css">
        .auto-style1 {
            width: 541px;
        }
        .auto-style2 {
            width: 256px;
        }
    </style>
   
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image Width="200" ImageUrl="~/Images/ameer-basheer-2r5adxul49E-unsplash.jpg" AlternateText="A person wearing glass having number on the glasses" runat="server" />
            <h1>401K Future Value Calculator</h1>


            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Monthly investment</td>
                    <td>
                        <asp:DropDownList ID="ddlMonthlyInvestment"
                            runat="server" Height="22px" Width="147px">
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td class="auto-style2">Annual interest rate</td>
                    <td>
                        <asp:TextBox ID="txtInterestRate" runat="server"
                            Text="3.0"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2">Number of years</td>
                    <td>
                        <asp:TextBox ID="txtYears" runat="server">10
                        </asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2">Future value</td>
                    <td>
                        <asp:Label ID="lblFutureValue" runat="server"
                            Font-Bold="True"></asp:Label></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnCalculate" runat="server"
                            Text="Calculate" Width="122px"
                            OnClick="btnCalculate_Click" /></td>
                    <td>
                        <asp:Button ID="btnClear" runat="server" Text="Clear"
                            Width="122px" CausesValidation="False"
                            OnClick="btnClear_Click" /></td>
                </tr>
            </table>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                runat="server" ErrorMessage="Interest rate is required."
                ControlToValidate="txtInterestRate" Display="Dynamic"
                ForeColor="Red">
            </asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server"
                ErrorMessage="Interest rate must range from 1 to 20."
                ControlToValidate="txtInterestRate"
                Display="Dynamic" ForeColor="Red" Type="Double"
                MaximumValue="20" MinimumValue="1">
            </asp:RangeValidator><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                runat="server" ErrorMessage="Number of years is required."
                ControlToValidate="txtYears" Display="Dynamic" ForeColor="Red">
            </asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator2" runat="server"
                ErrorMessage="Years must range from 1 to 45."
                ControlToValidate="txtYears" Type="Integer" Display="Dynamic"
                ForeColor="Red" MaximumValue="45" MinimumValue="1">
            </asp:RangeValidator>
        </div>
    </form>


    Photo by <a href="https://unsplash.com/@24ameer?utm_source=unsplash&amp;utm_medium=referral&amp;utm_content=creditCopyText">Ameer Basheer</a> on <a href="https://unsplash.com/s/photos/future?utm_source=unsplash&amp;utm_medium=referral&amp;utm_content=creditCopyText">Unsplash</a>
</body>
</html>
