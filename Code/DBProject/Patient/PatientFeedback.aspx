<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/PatientMaster.Master" AutoEventWireup="true" CodeBehind="PatientFeedback.aspx.cs" Inherits="DBProject.PatientFeedback" %>





<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Feedback</title>

</asp:Content>





<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2 class="font-weight-bold">Feedback

    </h2>
    <hr />


    <div class="alert alert-info d-block text-left">

        <asp:Label ID="Feedback" runat="server" Font-Bold="true"></asp:Label>
        <asp:Label ID="FDoctor" runat="server" Font-Bold="true"></asp:Label>
        <br />
        <asp:Label ID="FTimings" runat="server" Font-Bold="true"></asp:Label>


        <br />
        <br />


        <asp:Label ID="Message" runat="server" Visible="false" CssClass="text-left d-block pb-1" Font-Bold="true" Font-Size="Medium">Dear Patient, How was your treatment experience with our specialized Doctor on a rating of 1 - 5:</asp:Label>
        <div class="input-group">
            <asp:DropDownList ID="List" runat="server" class="custom-select" Visible="false" Font-Bold="true">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
            </asp:DropDownList>

            <div class="input-group-append">
                <asp:Button ID="button1" runat="server" Visible="false" OnClick="giveFeedback" Text="Give Feedback" class="btn btn-outline-primary" Font-Bold="true" />
            </div>
        </div>
                <br />

        <asp:Label ID="F" runat="server" Font-Bold="true" Font-Size="Medium"></asp:Label>

    </div>





</asp:Content>
