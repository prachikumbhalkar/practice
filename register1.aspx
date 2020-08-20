<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register1.aspx.cs" Inherits="WebApplication12.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 80%;
            border-style: solid;
            border-width: 1px;
        }
        .auto-style3 {
            width: 117px;
        }
        .auto-style4 {
            width: 176px;
        }
        .auto-style5 {
            width: 117px;
            height: 60px;
        }
        .auto-style6 {
            width: 176px;
            height: 60px;
        }
        .auto-style7 {
            height: 60px;
        }
    </style>
</head>
<body style="height: 511px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            MK PLACEMENTS &amp; EDUCATIONAL SERVICES<br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="home.aspx">home</asp:HyperLink>
&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="register.aspx">register</asp:HyperLink>
&nbsp;
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="login.aspx">login</asp:HyperLink>
            <br />
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">first name</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator">enter first name</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">last name</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator">enter last name</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">password</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="CompareValidator">password does not match</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">re ener password</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">age</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="RangeValidator" MaximumValue="100" MinimumValue="18" Type="Integer">age not proper</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">email id</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">email not proper</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">gender</td>
                <td class="auto-style4">
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="g" Text="male" />
&nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="g" Text="female" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" Text="Button" />
                </td>
                <td class="auto-style6"></td>
                <td class="auto-style7"></td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
