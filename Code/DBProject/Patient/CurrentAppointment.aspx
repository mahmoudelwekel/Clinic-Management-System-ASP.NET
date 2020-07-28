<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/PatientMaster.Master" AutoEventWireup="true" CodeBehind="CurrentAppointment.aspx.cs" Inherits="DBProject.CurrentAppointment" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Current Appointment</title>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="font-weight-bold">Current Appointments</h2>
    <hr />


    <div class="alert alert-info d-block">

        <asp:Label ID="Appointment" runat="server" Font-Bold="true" Font-Size="Medium"></asp:Label>
        <asp:Label ID="ADoctor" runat="server" Font-Bold="true" Font-Size="Medium"></asp:Label>
        <br />
        <asp:Label ID="ATimings" runat="server" Font-Bold="true" Font-Size="Medium"></asp:Label>

    </div>

</asp:Content>
