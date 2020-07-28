<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/doctormaster.Master" AutoEventWireup="true" CodeBehind="DoctorHome.aspx.cs" Inherits="doctor.doctorhome" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Doctor's Home</title>

</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="Cp1" runat="server">




    <h2 class="font-weight-bold">
        <asp:Label ID="Label1" runat="server" Font-Bold="true" />

    </h2>
    <hr />


    <h5 class="pb-1 pt-3">

        <asp:Label ID="Label11" runat="server" Font-Bold="true" />
    </h5>

    <div class="pt-2 pb-3" style="overflow: hidden">

        <span style="white-space: nowrap; overflow: hidden">


            <i class="fas fa-map-marked-alt"></i>
            <asp:Label ID="Label3" runat="server" Font-Bold="true" />
            ,Specialization:
            
                    <asp:Label ID="Label12" runat="server" Font-Bold="true" />
        </span>
        &nbsp&nbsp&nbsp
                <span style="white-space: nowrap; overflow: hidden">

                    <i class="fas fa-hospital-alt"></i>
                    Department 
        <asp:Label ID="Label6" runat="server" Font-Bold="true" />
                </span>
        &nbsp&nbsp&nbsp
        <span style="white-space: nowrap; overflow: hidden">
            <i class="fas fa-phone"></i>
            <asp:Label ID="Label2" runat="server" Font-Bold="true" />

        </span>
        &nbsp&nbsp&nbsp
                <span style="white-space: nowrap; overflow: hidden">

                    <i class="fas fa-birthday-cake"></i>
                    <asp:Label ID="Label4" runat="server" Font-Bold="true" />

                </span>
        &nbsp&nbsp&nbsp
                <span style="white-space: nowrap; overflow: hidden">

                    <i class="fas fa-venus-mars"></i>
                    <asp:Label ID="Label5" runat="server" Font-Bold="true" />

                </span>
    </div>

    <hr />

    <div class="text-left">

        <div class="form-group">
            <label for="formControlRange">
                Charges Per Visit :
                <asp:Label ID="Label7" runat="server" Font-Bold="true" Font-Size="Medium" /></label>
            <input type="range" class="form-control-range" disabled="disabled"  id="formControlRange" runat="server" value="0" max="100000" />
        </div>
        <div class="form-group">
            <label for="formControlRange">
                Monthly Salary :
                <asp:Label ID="Label8" runat="server" Font-Bold="true" Font-Size="Medium" /></label>
            <input type="range" class="form-control-range" disabled="disabled" id="Range1" runat="server" value="0" max="100000" />
        </div>
        <div class="form-group">
            <label for="formControlRange">
                Repute Index :
                <asp:Label ID="Label9" runat="server" Font-Bold="true" Font-Size="Medium" /></label>
            <input type="range" class="form-control-range" disabled="disabled" id="Range2" runat="server" value="0" max="5" />
        </div>
        <div class="form-group">
            <label for="formControlRange">
                Patients Treated :
                <asp:Label ID="Label10" runat="server" Font-Bold="true" Font-Size="Medium" /></label>
            <input type="range" class="form-control-range" disabled="disabled" id="Range3" runat="server" value="0" max="10000" />
        </div>
        <div class="form-group">
            <label for="formControlRange">
                Work Experience :
                <asp:Label ID="Label13" runat="server" Font-Bold="true" Font-Size="Medium" /></label>
            <input type="range" class="form-control-range" disabled="disabled" id="Range4" runat="server" value="0" max="10" />
        </div>
        <div class="form-group">
            <label for="formControlRange">
                Status :
                <asp:Label ID="Label14" runat="server" Font-Bold="true" Font-Size="Medium" /></label>
            <input type="range" class="form-control-range" disabled="disabled" id="Range5" runat="server" value="0" max="10" />
        </div>

    </div>


</asp:Content>
