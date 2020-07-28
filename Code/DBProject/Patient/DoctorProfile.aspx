<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/PatientMaster.Master" AutoEventWireup="true" CodeBehind="DoctorProfile.aspx.cs" Inherits="DBProject.DoctorProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Doctor's Profile</title>

</asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




    <h2 class="font-weight-bold">
        <asp:Label ID="DName" runat="server" Font-Bold="true" />

    </h2>
    <hr />


    <h5 class="pb-1 pt-3">

        <asp:Label ID="DQualification" runat="server" Font-Bold="true" />
    </h5>

    <div class="pt-2 pb-3" style="overflow: hidden">

        <span style="white-space: nowrap; overflow: hidden">


            <i class="fas fa-map-marked-alt"></i>
            Specialization:
            
                    <asp:Label ID="DSpecialization" runat="server" Font-Bold="true" />
        </span>
        &nbsp&nbsp&nbsp
                <span style="white-space: nowrap; overflow: hidden">

                    <i class="fas fa-hospital-alt"></i>
                    Department: 
        <asp:Label ID="DDept" runat="server" Font-Bold="true" />
                </span>
        &nbsp&nbsp&nbsp
        <span style="white-space: nowrap; overflow: hidden">
            <i class="fas fa-phone"></i>
            <asp:Label ID="DPhone" runat="server" Font-Bold="true" />

        </span>
        &nbsp&nbsp&nbsp
                <span style="white-space: nowrap; overflow: hidden">

                    <i class="fas fa-birthday-cake"></i>
                    <asp:Label ID="DAge" runat="server" Font-Bold="true" />
                    years old

                </span>
        &nbsp&nbsp&nbsp
                <span style="white-space: nowrap; overflow: hidden">

                    <i class="fas fa-venus-mars"></i>
                    <asp:Label ID="DGender" runat="server" Font-Bold="true" />

                </span>
    </div>

    <hr />

    <div class="text-left">

        <div class="form-group">
            <label for="formControlRange">
                Charges Per Visit :
                <asp:Label ID="DCharges" runat="server" Font-Bold="true" Font-Size="Medium" /></label>
            <input type="range" class="form-control-range" disabled="disabled" id="formControlRange" runat="server" value="0" max="100000" />
        </div>

        <div class="form-group">
            <label for="formControlRange">
                Repute Index :
                <asp:Label ID="DRI" runat="server" Font-Bold="true" Font-Size="Medium" /></label>
            <input type="range" class="form-control-range" disabled="disabled" id="Range2" runat="server" value="0" max="5" />
        </div>
        <div class="form-group">
            <label for="formControlRange">
                Patients Treated :
                <asp:Label ID="DPT" runat="server" Font-Bold="true" Font-Size="Medium" /></label>
            <input type="range" class="form-control-range" disabled="disabled" id="Range3" runat="server" value="0" max="10000" />
        </div>
        <div class="form-group">
            <label for="formControlRange">
                Work Experience :
                <asp:Label ID="DWork" runat="server" Font-Bold="true" Font-Size="Medium" /></label>
            <input type="range" class="form-control-range" disabled="disabled" id="Range4" runat="server" value="0" max="10" />
        </div>


    </div>





    <asp:Button ID="AppointmentB" runat="server" Text="Take Appointment" CssClass="btn btn-primary btn-block" OnClick="RedirectToAppointmentTaker" Font-Bold="true" />


</asp:Content>
