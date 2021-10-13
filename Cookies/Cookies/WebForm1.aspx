<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Cookies.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox2"  runat="server"></asp:TextBox>
            <asp:CheckBox ID="CheckBox1" runat="server" />
            <input id="" type="checkbox" onchange="document.getElementById('TextBox2').type=this.checked?'text':'password'"/>
            <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Button" />
        </div>
    </form>
</body>
</html>
