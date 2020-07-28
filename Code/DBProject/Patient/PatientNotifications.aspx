<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/PatientMaster.Master" AutoEventWireup="true" CodeBehind="PatientNotifications.aspx.cs" Inherits="DBProject.PatientNotifications" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Notifications</title>

</asp:Content>





<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <h2 class="font-weight-bold">Notifications
    </h2>
    <hr />

    <div class="alert alert-info d-block">

        <asp:Label ID="Notify" runat="server" Font-Bold="true"></asp:Label>
        <asp:Label ID="NDoctor" runat="server" Font-Bold="true"></asp:Label>
        <br />
        <asp:Label ID="NTimings" runat="server" Font-Bold="true"></asp:Label>
    </div>

</asp:Content>
