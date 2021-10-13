<%@ Page Title="" Language="C#" MasterPageFile="~/TMS.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TMS_Project.WebForm1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="Ajax" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 offset-md-3">
            <div class="card bg-dangertext-white">
                <div class="card-header">
                    <h1>YHis is header</h1>
                </div>
                <div class="card-body">
                    <div class="d-flex p-3 bg-secondary text-white">
                        <div class="p-2 bg-info align-baseline">Flex item 1</div>
                        <div class="p-2">Flex item 2</div>
                        <div class="p-2 ml-5">Flex item 3</div>
                        <div class="p-2">Flex item 4</div>
                    </div>
                    <div class="d-flex p-3 bg-success text-white">
                        <div class="p-2">Flex item 1</div>
                        <div class="p-2">Flex item 2</div>
                        <div class="p-2">Flex item 3</div>
                        <div class="p-2">Flex item 4</div>
                    </div>
                    <div class="d-flex p-3 bg-primary text-white">
                        <div class="p-2">Flex item 1</div>
                        <div class="p-2">Flex item 2</div>
                        <div class="p-2">Flex item 3</div>
                        <div class="p-2">Flex item 4</div>
                    </div>
                </div>
                <div class="card-footer">
                </div>
            </div>
            </div>
        </div>
    </div>

</asp:Content>
