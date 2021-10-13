<%@ Page Title="" Language="C#" MasterPageFile="~/TMS.Master" AutoEventWireup="true" CodeBehind="Tutor_Signup.aspx.cs" Inherits="TMS_Project.Tutor_Signup" %>

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
                        <asp:TextBox class="S-form-control form-control" placeholder="Enter Your Name" ID="TNameTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TNameTextBox" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Name is required"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                <div class="form-group">
                    <asp:TextBox class="S-form-control form-control" placeholder="Enter Sure  Name" ID="TSNameTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TSNameTextBox" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Sure Name is required"></asp:RequiredFieldValidator>
                </div>
                </div>
                <div class="col-md-4">

                <div class="form-group">
                    <asp:DropDownList ID="GenderDdl" CssClass="form-control" runat="server">
                        <asp:ListItem>Gender</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="GenderDdl" InitialValue="Gender" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Please select"></asp:RequiredFieldValidator>
                </div>
                </div>
                <div class="col-md-4">
                <div class="form-group">
                    <asp:TextBox class="S-form-control form-control" placeholder="Enter Your Age" ID="TAgeTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="TAgeTextBox" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Age is required"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Age must be b/w 17-60" ControlToValidate="TAgeTextBox" Display="Dynamic" ForeColor="Red" MaximumValue="60" MinimumValue="17" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                <div class="form-group">
                    <asp:DropDownList ID="MartialDdl" CssClass="form-control" runat="server">
                        <asp:ListItem>Marital Status</asp:ListItem>
                        <asp:ListItem>Single</asp:ListItem>
                        <asp:ListItem>Married</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="MartialDdl" InitialValue="Marital Satus" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Please select"></asp:RequiredFieldValidator>
                </div>
                </div>


                <div class="col-md-4">
                <div class="form-group">

                    <asp:DropDownList CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="CountryDdl_SelectedIndexChanged" ID="CountryDdl" runat="server"></asp:DropDownList>
                    <asp:RequiredFieldValidator InitialValue="select country" ID="RequiredFieldValidator8" ControlToValidate="CountryDdl" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Country is required"></asp:RequiredFieldValidator>

                </div>
                </div>


                <div class="col-md-4">
                <div class="form-group">
                    <span class="bx-label">City</span>
                    <asp:DropDownList ID="CityDdl" CssClass="form-control" runat="server"></asp:DropDownList>
                    <asp:RequiredFieldValidator InitialValue="select city" ID="RequiredFieldValidator9" ControlToValidate="CityDdl" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="City is required"></asp:RequiredFieldValidator>
                </div>
                </div>

            </div>
            <div class="row">
                <div class="col-md-4">
                <div class="form-group">
                    <asp:TextBox class="S-form-control form-control" TextMode="MultiLine" Columns="50" Rows="3" placeholder="Enter Your Address" ID="TAddressTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="TAddressTextBox" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Address is required"></asp:RequiredFieldValidator>

                </div>
                </div>
                <div class="col-md-4">
                <div class="form-group">
                    <asp:DropDownList ID="QualDdl" CssClass="form-control" runat="server">
                        <asp:ListItem>Qualification</asp:ListItem>
                        <asp:ListItem>Graduate</asp:ListItem>
                        <asp:ListItem>Masters</asp:ListItem>
                        <asp:ListItem>Mphill</asp:ListItem>
                        <asp:ListItem>PHD</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" ControlToValidate="QualDdl" InitialValue="Qualification" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Please select"></asp:RequiredFieldValidator>
                </div>
                </div>
                <div class="col-md-4">
                <div class="form-group">
                    <asp:TextBox class="S-form-control form-control" placeholder="Enter Your Degree" ID="TDgree" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ControlToValidate="TDgree" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Subject is required"></asp:RequiredFieldValidator>

                </div>
                </div>

            </div>
            <div class="row">
                <div class="col-md-4">
                <div class="form-group">
                    <asp:DropDownList ID="ExpDdl" CssClass="form-control" runat="server">
                        <asp:ListItem>Experience</asp:ListItem>
                        <asp:ListItem>1 Year</asp:ListItem>
                        <asp:ListItem>2 Year</asp:ListItem>
                        <asp:ListItem>3 Year</asp:ListItem>
                        <asp:ListItem>4 Year</asp:ListItem>
                        <asp:ListItem>5 Year</asp:ListItem>
                        <asp:ListItem>5+ Year</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" ControlToValidate="ExpDdl" InitialValue="Tution Type" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Name is required"></asp:RequiredFieldValidator>

                </div>
                </div>
                <div class="col-md-4">
                <div class="form-group">
                    <asp:TextBox class="S-form-control form-control" placeholder="Enter Your Contact" ID="TContactTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" ControlToValidate="TContactTextBox" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Contact no. is is required"></asp:RequiredFieldValidator>

                </div>
                </div>
                <div class="col-md-4">
                <div class="form-group">
                    <asp:TextBox class="S-form-control form-control" OnTextChanged= "TEmailTextBox_TextChanged1" placeholder="Enter Your Email" ID="TEmailTextBox" runat="server" AutoPostBack="true"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" ControlToValidate="TEmailTextBox" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Email is required"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ErrorMessage="Invalid Email" ControlToValidate="TEmailTextBox" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>
                </div>
                </div>

            </div>
            <div class="row">
                <div class="col-md-4">
                <div class="form-group">
                    <asp:TextBox class="S-form-control form-control" placeholder="Password" ID="TPwdTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" ControlToValidate="TPwdTextBox" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
                </div>

                </div>
                <div class="col-md-4">
                <div class="form-group">
                    <asp:TextBox class="S-form-control form-control" placeholder="Confirm Password" ID="TConfirmPwdTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" ControlToValidate="TConfirmPwdTextBox" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Confirmation is required"></asp:RequiredFieldValidator>
                    <asp:CompareValidator runat="server" ForeColor="Red" ControlToValidate="TConfirmPwdTextBox" ControlToCompare="TPwdTextBox" ErrorMessage="Password doesn't match"></asp:CompareValidator>
                </div>

                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                <div class="form-group">
                    <asp:Button CssClass="btn btn-block btn-info " ID="Signup_btn" runat="server" Text="Submit Now" OnClick="Signup_btn_Click" />
                </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
