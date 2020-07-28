<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/doctormaster.Master" AutoEventWireup="true" CodeBehind="Bill.aspx.cs" Inherits="doctor.bill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Generate Bill</title>

</asp:Content>



<asp:Content ID="Content4" ContentPlaceHolderID="Cp3" runat="server">


    <h2 class="font-weight-bold">Your Bill For this Appointment
    </h2>
    <hr />
    <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="true" Font-Size="XX-Large"></asp:Label>
    
    <br />
    <br />
    <br />

  <asp:Button ID="Bill" CssClass="btn btn-primary"  runat="server" Text="Bill Paid" OnClick="bill_paid" Font-Bold="true" />


 <asp:Button ID="Button1" CssClass="btn btn-primary"  runat="server" Text="Bill Unpaid" OnClick="bill_Unpaid" Font-Bold="true" />





</asp:Content>
