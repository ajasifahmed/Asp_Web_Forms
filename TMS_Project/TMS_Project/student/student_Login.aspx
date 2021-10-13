<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="student_Login.aspx.cs" Inherits="TMS_Project.student.student_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student-LOGIN</title>
    <link href="~/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="~/admin/admin_dashboard/dist/css/styles.css" rel="stylesheet" />
    <link href="../Form_Style/FormStyle.css" rel="stylesheet" />
    <%--    sweet alert--%>
    <link href="../dist/sweetalert2.min.css" rel="stylesheet" />
    <script src="../dist/sweetalert2.min.js"></script>
        <script>
        function func() {
            const Toast = Swal.mixin({
                toast: true,
                position: 'top-end',
                showConfirmButton: false,
                timer: 1000,
                timerProgressBar: true,
                didOpen: (toast) => {
                    toast.addEventListener('mouseenter', Swal.stopTimer)
                    toast.addEventListener('mouseleave', Swal.resumeTimer)
                }
            })

            Toast.fire({
                icon: 'success',
                title: 'Signed in successfully'
            })
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="signup-form mt-5">
                    <h2 class="text-info text-center">Welcome!</h2>
                    <p>Please enter your email address and password to login to your account!</p>
                    <hr />

                    <div class="form-group">
                        <asp:TextBox ID="StdEmailTextBox" class="S-form-control form-control" placeholder="Email*" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="StdEmailTextBox" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" runat="server" ErrorMessage="Email is required"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ErrorMessage="Invalid Email" ControlToValidate="StdEmailTextBox" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </div>

                    <div class="form-group">
                        <asp:TextBox ID="PasswordTextBox" TextMode="Password" class="S-form-control form-control" placeholder="Enter Your Password*" runat="server"></asp:TextBox>
                            <input type="checkbox" onchange="document.getElementById('PasswordTextBox').type=this.checked?'text':'password'" />
                            <span><label><b>&nbsp;Show Password</b></label> </span>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="PasswordTextBox" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="<br/>Password is required"></asp:RequiredFieldValidator>
                        </div>
                    <div class="form-group">
                        <asp:Button CssClass="btn btn-info btn-block" ID="LoginButton" runat="server" OnClick="LoginButton_Click" Text="Login" />
                        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Default.aspx" ForeColor="Red" runat="server" Font-Size="Small" Font-Bold="True">HOME PAGE</asp:HyperLink>
                    </div>

                </div>
            </div>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
</body>
</html>
