<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="DBProject.AdminHome" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <form runat="server">

        <h2 class="font-weight-bold">Clinic Stats</h2>

        <hr />


        <div class="row row-cols-1 row-cols-md-3 ">

            <div class="col mb-4">
                <div class="card  h-100 text-white bg-dark mb-3 shadow ">
                    <div class="row h-100 no-gutters">
                        <div class="col-md-4 p-3 d-flex justify-content-center align-items-center">
                            <i class="fas fa-user-md  fa-5x mw-100"></i>
                        </div>
                        <div class="col-md-8 d-flex justify-content-center align-items-center">
                            <div class="card-body">
                                <h5 class="card-title">Registered Doctors</h5>

                                <asp:Label ID="TotalPatients" runat="server" CssClass="card-text h1 counter"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="col mb-4">
                <div class="card  h-100 text-white bg-danger mb-3 shadow ">
                    <div class="row  h-100 no-gutters">
                        <div class="col-md-4 p-3 d-flex justify-content-center align-items-center">
                            <i class="fas fa-user-injured  fa-5x mw-100"></i>
                        </div>
                        <div class="col-md-8 d-flex justify-content-center align-items-center">
                            <div class="card-body">
                                <h5 class="card-title">Registered Patients</h5>

                                <asp:Label ID="Total_Doctors" runat="server" CssClass="card-text h1 counter"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col mb-4">
                <div class="card  h-100 text-white bg-success mb-3 shadow ">
                    <div class="row  h-100 no-gutters">
                        <div class="col-md-4 p-3 d-flex justify-content-center align-items-center">
                            <i class="fas fa-hand-holding-usd  fa-5x mw-100"></i>
                        </div>
                        <div class="col-md-8 d-flex justify-content-center align-items-center">
                            <div class="card-body">
                                <h5 class="card-title">Total Income</h5>
                                <asp:Label ID="TotalIncome" runat="server" CssClass="card-text h1 counter"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>



        <div class="row row-cols-1 row-cols-md-2">
            <div class="col mb-4">
                <div class="card text-white bg-secondary  shadow ">
                    <div class="card-header h5 font-weight-bold">
                        Current Appointments
                    </div>
                    <div class="list-group text-dark  list-group-flush top-count-list">
                        <asp:Repeater ID="Appointment_view" runat="server">
                            <ItemTemplate>
                                <div class="list-group-item list-group-item-action text-left ">
                                    <div class="d-flex w-100 justify-content-between">
                                        <h4 class="mb-1"><%# Eval("Name") %></h4>
                                        <small>Patient <%# Eval("PatientID") %></small>
                                    </div>
                                    <p class="mb-1">
                                        <%# Eval("Date") %>
                                    </small>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>

            </div>

            <div class="col mb-4">

                <div class="card text-white bg-secondary  shadow ">
                    <div class="card-header h5 font-weight-bold">
                        Department Information                   
                    </div>
                    <div class="list-group text-dark list-group-flush top-count-list">

                        <asp:Repeater ID="department_View" runat="server">
                            <ItemTemplate>
                                <div class="list-group-item list-group-item-action text-left ">
                                    <div class="d-flex w-100 justify-content-between">
                                        <h4 class="mb-1"><%# Eval("Name") %></h4>
                                        <small><%# Eval("Number of Doctors") %> doctor</small>
                                    </div>
                                    <p class="mb-1" style="white-space: nowrap;overflow: hidden;" title="<%# Eval("Description") %>">
                                        <%# Eval("Description") %>
                                    </small>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>

            </div>
        </div>






    </form>
</asp:Content>
