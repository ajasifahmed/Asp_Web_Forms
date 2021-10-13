<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="examonline.aspx.cs" Inherits="Demo.examonline" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h1>ONLINE EXAM</h1>
                <h2>ASP.NET</h2><hr />
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <table border="1">
                            <tr>
                                <td><%#Eval("Qid") %>:<%#Eval("Questions") %></td>
                            </tr>
                            <tr>
                                <td>
                                <asp:RadioButton ID="RadioButton1" runat="server" Text='<%#Eval("option1") %>' GroupName="option"></asp:RadioButton>
                                <asp:RadioButton ID="RadioButton2" runat="server" Text='<%#Eval("option2") %>' GroupName="option"></asp:RadioButton>
                                <asp:RadioButton ID="RadioButton3" runat="server" Text='<%#Eval("option3") %>' GroupName="option"></asp:RadioButton>
                                <asp:RadioButton ID="RadioButton4" runat="server" Text='<%#Eval("option4") %>' GroupName="option"></asp:RadioButton>
                              
                                 </td>
                                <br />
                                <asp:Label ID="Label1" Text='<%#Eval("Corretans") %>' Visible="false" runat="server" />
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:Repeater>
                            <asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click"></asp:Button>
            </center>
        </div>
    </form>
</body>
</html>
