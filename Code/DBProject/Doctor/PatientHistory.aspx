<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/doctormaster.Master" AutoEventWireup="true" CodeBehind="PatientHistory.aspx.cs" Inherits="doctor.patienthistory" %>





<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Patient History</title>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="Cp1" runat="server">

    <h2 class="font-weight-bold">Today's Appointments

    </h2>
    <hr />

    <div class="table-responsive">

        <asp:GridView  EmptyDataText="No data available" ID="patientsgrid" runat="server"
            CssClass="table  table-hover table-striped table-bordered dataTable text-center "
            HorizontalAlign="Center"
            GridLines="Vertical"
            CellPadding="4"
            EnableViewState="False"
            AutoGenerateSelectButton="True"
            OnRowCommand="patientsgrid_RowCommand">

            <SelectedRowStyle CssClass="table-primary" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />

        </asp:GridView>

    </div>

</asp:Content>


