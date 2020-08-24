<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login1.aspx.cs" Inherits="WebApplication12.login" %>

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
            width: 147px;
        }
        .auto-style4 {
            width: 176px;
        }
    </style>
</head>
<body>
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
                <td class="auto-style3">enter first name</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">enter last name</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">father name</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">mother name</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">address</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
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
                <td class="auto-style3">address</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </form>
</body>
</html>
