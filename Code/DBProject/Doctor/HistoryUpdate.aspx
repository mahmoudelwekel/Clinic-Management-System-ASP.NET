<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/doctormaster.Master" AutoEventWireup="true" CodeBehind="HistoryUpdate.aspx.cs" Inherits="doctor.Historyupdate" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Update History</title>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Cp1" runat="server">



    <h2 class="font-weight-bold">Update history 

    </h2>
    <hr />

    <div class="form-group">
        <label for="exampleInputEmail1">Disease</label>
        <asp:TextBox ID="Disease" class="form-control" runat="server"></asp:TextBox>
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">Progress</label>
        <asp:TextBox ID="progress" class="form-control" runat="server"></asp:TextBox>
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">Prescription</label>
        <asp:TextBox ID="Prescription" class="form-control" runat="server"></asp:TextBox>
    </div>


    <asp:Button ID="submit" runat="server" CssClass="btn btn-primary" Text="Accept & Save" OnClick="saveindatabase" Font-Bold="true" />
    <asp:Button ID="Bill" runat="server" CssClass="btn btn-primary"  Text="Generate Bill" OnClick="generate_bill" Font-Bold="true" />

</asp:Content>
