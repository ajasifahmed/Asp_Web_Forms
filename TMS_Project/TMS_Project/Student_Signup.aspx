<%@ Page Title="" Language="C#" MasterPageFile="~/TMS.Master" AutoEventWireup="true" CodeBehind="Student_Signup.aspx.cs" Inherits="TMS_Project.Student_Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="signup-form">
            <div class="row">
                <div class="col-4">
                </div>
                <div class="col-6">
                    <h1 class="text-info">Sign Up</h1>
                    <p>Please fill in this form to create an account!</p>
                    <hr class="w-100 bg-info" />
                </div>
            </div>
            <%--        ..--%>
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <asp:TextBox class="S-form-control form-control" placeholder="Enter Your Name" ID="StdNameTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="StdNameTextBox" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Name is required"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="col-md-4">

                    <div class="form-group">
                        <asp:TextBox class="S-form-control form-control" placeholder="Enter Your Father Name" ID="StdFNameTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="StdFNameTextBox" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Father Name is required"></asp:RequiredFieldValidator>

                    </div>
                </div>
                <div class="col-md-4">

                    <div class="form-group">
                        <asp:TextBox class="S-form-control form-control" placeholder="Enter Sure  Name" ID="StdSNameTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="StdSNameTextBox" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Sure Name is required"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                            <asp:ListItem>Gender</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="DropDownList1" InitialValue="Gender" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Please select"></asp:RequiredFieldValidator>

                    </div>
                </div>
                <div class="col-md-4">

                    <div class="form-group">
                        <asp:TextBox class="S-form-control form-control" placeholder="Enter Your Age" ID="StdAgeTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="StdAgeTextBox" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Age is required"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age must be b/w 6-60" ControlToValidate="StdAgeTextBox" Display="Dynamic" ForeColor="Red" MaximumValue="60" MinimumValue="6" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">

                        <asp:DropDownList CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged" ID="DropDownList5" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator InitialValue="select country" ID="RequiredFieldValidator6" ControlToValidate="DropDownList5" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Country is required"></asp:RequiredFieldValidator>

                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <span class="bx-label">City</span>
                        <asp:DropDownList ID="DropDownList6" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator InitialValue="select city" ID="RequiredFieldValidator7" ControlToValidate="DropDownList6" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="City is required"></asp:RequiredFieldValidator>

                    </div>
                </div>


                <div class="col-md-4">
                    <div class="form-group">
                        <asp:TextBox class="S-form-control form-control" TextMode="MultiLine" Columns="50" Rows="3" placeholder="Enter Your Address" ID="StdAddressTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="StdAddressTextBox" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Address is required"></asp:RequiredFieldValidator>

                    </div>
                </div>


                <div class="col-md-4">
                    <div class="form-group">
                        <asp:TextBox class="S-form-control form-control" placeholder="Enter Your Class" ID="StdClassTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="StdClassTextBox" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Class is required"></asp:RequiredFieldValidator>

                    </div>
                </div>

            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server">
                            <asp:ListItem>Degree</asp:ListItem>
                            <asp:ListItem>School</asp:ListItem>
                            <asp:ListItem>College</asp:ListItem>
                            <asp:ListItem>University</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="DropDownList2" InitialValue="Degree" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="please select"></asp:RequiredFieldValidator>

                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <asp:TextBox class="S-form-control form-control" placeholder="Enter Your Subject" ID="StdSubjectTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="StdSubjectTextBox" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Subject is required"></asp:RequiredFieldValidator>

                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <asp:TextBox class="S-form-control form-control" placeholder="Enter Your Contact" ID="StdContactTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ControlToValidate="StdContactTextBox" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Contact no. is is required"></asp:RequiredFieldValidator>

                    </div>
                </div>

            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <asp:DropDownList ID="DropDownList3" CssClass="form-control" runat="server">
                            <asp:ListItem>Tution Type</asp:ListItem>
                            <asp:ListItem>Online</asp:ListItem>
                            <asp:ListItem>Physical</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" ControlToValidate="DropDownList3" InitialValue="Tution Type" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Name is required"></asp:RequiredFieldValidator>

                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <asp:DropDownList ID="DropDownList4" CssClass="form-control" runat="server">
                            <asp:ListItem>Choose Tutor</asp:ListItem>
                            <asp:ListItem>Graduate</asp:ListItem>
                            <asp:ListItem>Masters</asp:ListItem>
                            <asp:ListItem>Mphill</asp:ListItem>
                            <asp:ListItem>PHD</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" ControlToValidate="DropDownList4" InitialValue="Choose Tutor" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Please select"></asp:RequiredFieldValidator>

                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <asp:TextBox class="S-form-control form-control" OnTextChanged="StdEmailTextBox_TextChanged" placeholder="Enter Your Email" ID="StdEmailTextBox" runat="server" AutoPostBack="true"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" ControlToValidate="StdEmailTextBox" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Email is required"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ErrorMessage="Invalid Email" ControlToValidate="StdEmailTextBox" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </div>
                </div>

            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <asp:TextBox class="S-form-control form-control" placeholder="Password" ID="StdPwdTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" ControlToValidate="StdPwdTextBox" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
                    </div>

                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <asp:TextBox class="S-form-control form-control" placeholder="Confirm Password" ID="StdConfirmPwdTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" ControlToValidate="StdConfirmPwdTextBox" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Confirmation is required"></asp:RequiredFieldValidator>
                        <asp:CompareValidator runat="server" ForeColor="Red" ControlToValidate="StdConfirmPwdTextBox" ControlToCompare="StdPwdTextBox" ErrorMessage="Password doesn't match"></asp:CompareValidator>
                    </div>

                </div>
            </div>
            <div class="row">
                <div class="form-group">
                    <asp:Button CssClass="btn btn-info" ID="Signup_btn" runat="server" Text="Submit Now" OnClick="Signup_btn_Click" />

                </div>
            </div>
        </div>
    </div>

</asp:Content>
