<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/PatientMaster.Master" AutoEventWireup="true" CodeBehind="AppointmentRequestSent.aspx.cs" Inherits="DBProject.AppointmentNotificationSent" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Send Appointment Request</title>

</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="font-weight-bold">Click on this button to send an appointment request to the Doctor

    </h2>
    <hr />


    <asp:Button runat="server" OnClick="sendARequest" Text="Send Request" CssClass="btn btn-block btn-primary" Font-Bold="true" />
    <br />
    <asp:Label ID="Message" runat="server" class="alert alert-info d-block"></asp:Label>



</asp:Content>
