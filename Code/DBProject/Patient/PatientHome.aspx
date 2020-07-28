<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/PatientMaster.Master" AutoEventWireup="true" CodeBehind="PatientHome.aspx.cs" Inherits="DBProject.PatientHome" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Patient's Home</title>

</asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <h2 class="font-weight-bold">
        <asp:Label ID="PName" runat="server" Font-Bold="true" />

    </h2>
    <hr />


    <%--    <h5 class="pb-1 pt-3">

        <asp:Label ID="Label11" runat="server" Font-Bold="true" />
    </h5>--%>

    <div class="pt-2 pb-3" style="overflow: hidden">

        <span style="white-space: nowrap; overflow: hidden">


            <i class="fas fa-map-marked-alt"></i>
            <asp:Label ID="PAddress" runat="server" Font-Bold="true" />

        </span>
        &nbsp&nbsp&nbsp
        <span style="white-space: nowrap; overflow: hidden">
            <i class="fas fa-phone"></i>
            <asp:Label ID="PPhone" runat="server" Font-Bold="true" />

        </span>
        &nbsp&nbsp&nbsp
                <span style="white-space: nowrap; overflow: hidden">

                    <i class="fas fa-birthday-cake"></i>
                    <asp:Label ID="PBirthDate" runat="server" Font-Bold="true" />

                </span>
        &nbsp&nbsp&nbsp
                <span style="white-space: nowrap; overflow: hidden">

                    <i class="fas fa-venus-mars"></i>
                    <asp:Label ID="PGender" runat="server" Font-Bold="true" />

                </span>
    </div>

    <hr />

    <div class="text-left">

        <div class="form-group">
            <label for="formControlRange">
                Age :
                <asp:Label ID="PatientAge" runat="server" Font-Bold="true" Font-Size="Medium" /></label>
            <input type="range" class="form-control-range" disabled="disabled" id="formControlRange" runat="server" value="0" max="100" />
        </div>

    </div>



</asp:Content>
