<%@ Page Title="" Language="C#" MasterPageFile="~/student/student_dashboard.Master" AutoEventWireup="true" CodeBehind="veiw_tutors.aspx.cs" Inherits="TMS_Project.student.veiw_tutors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<%--    <style>
        .card {
            border: 14px solid rgba(0, 0, 0, 0.125) !important;
            border-radius: 2rem !important;
            box-shadow: 10px 11px 17px -5px rgba(0,0,0,0.75);
            -webkit-box-shadow: 10px 11px 17px -5px rgba(0,0,0,0.75);
            -moz-box-shadow: 10px 11px 17px -5px rgba(0,0,0,0.75);
        }
    </style>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="row">
        <div class="col-md-12">
            <h1 class="jumbotron bg-dark text-center text-white">View Tutors Details</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <div class="input-group">
                <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                <div class="input-group-append">
                    <button id="searchBtn" class="btn btn-dark" runat="server" onserverclick="searchBtn_ServerClick">
                        <i class="fa fa-search"></i>
                    </button>
                </div>
            </div>
            <asp:Label ID="Label9" runat="server" Text='' Visible="False" Font-Italic="True"></asp:Label>
<%--            <span id="result" class="text-success font-italic"><%Response.Write(Session["count"]);%> Records Found</span>--%>
        </div>
    </div><br />
    <div class="row">
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div class="col-md-4">

                    <div class="card bg-secondary text-center text-white ">
                        <div class="card-header bg-dark">
                            <small class=" font-weight-bold">NAME</small>
                            <h3>
                                <asp:Label ID="Label1" runat="server" Text='<%#Bind("name") %>'></asp:Label></h3>
                        </div>
                        <div class="card-body">
                            <small class=" font-weight-bold">Email</small>
                            <h5>
                                <asp:Label ID="Label2" runat="server" Text='<%#Bind("email") %>'></asp:Label></h5>
                            <small class=" font-weight-bold">COUNTRY</small>
                            <h5>
                                <asp:Label ID="Label3" runat="server" Text='<%#Bind("country") %>'></asp:Label></h5>
                            <small class=" font-weight-bold">CITY</small>
                            <h5>
                                <asp:Label ID="Label4" runat="server" Text='<%#Bind("city") %>'></asp:Label></h5>
                            <small class=" font-weight-bold">CONTACT</small>
                            <h5>
                                <asp:Label ID="Label5" runat="server" Text='<%#Bind("contact") %>'></asp:Label></h5>
                            <small class=" font-weight-bold">EXPERIENCE</small>
                            <h5>
                                <asp:Label ID="Label6" runat="server" Text='<%#Bind("experience") %>'></asp:Label></h5>
                        </div>
                        <div class="card-footer bg-dark">
                            <small class=" font-weight-bold">DEGREE</small>
                            <h4>
                                <asp:Label ID="Label7" runat="server" Text='<%#Bind("degree") %>'></asp:Label></h4>
                            <small class=" font-weight-bold">QUALIFICATION</small>
                            <h4>
                                <asp:Label ID="Label8" runat="server" Text='<%#Bind("address") %>'></asp:Label></h4>
                        </div>
                    </div>
                    <br />
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
