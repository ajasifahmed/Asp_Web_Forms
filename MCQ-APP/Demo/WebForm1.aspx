<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Demo.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="t2" placeholder="text" runat="server" />  
            <asp:Button Text="BUTTON" ID="btn" runat="server" OnClick="btn_Click" />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="QId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="QId" HeaderText="QId" InsertVisible="False" ReadOnly="True" SortExpression="QId" />
                <asp:BoundField DataField="Questions" HeaderText="Questions" SortExpression="Questions" />
                <asp:BoundField DataField="option1" HeaderText="option1" SortExpression="option1" />
                <asp:BoundField DataField="option2" HeaderText="option2" SortExpression="option2" />
                <asp:BoundField DataField="option3" HeaderText="option3" SortExpression="option3" />
                <asp:BoundField DataField="option4" HeaderText="option4" SortExpression="option4" />
                <asp:BoundField DataField="Corretans" HeaderText="Corretans" SortExpression="Corretans" />
            </Columns>
        </asp:GridView>
        <asp:GridView ID="GridView2" runat="server">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbcs %>" SelectCommand="SELECT * FROM [onlineexam]"></asp:SqlDataSource>
    </form>
</body>
</html>
