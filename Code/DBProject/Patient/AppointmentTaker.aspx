<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/PatientMaster.Master" AutoEventWireup="true" CodeBehind="AppointmentTaker.aspx.cs" Inherits="DBProject.AppointmentTaker" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Appointment Taker</title>

</asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2 class="font-weight-bold">Free Time Slots

    </h2>
    <hr />



    <asp:Label ID="PAppointment" runat="server" class="alert alert-info d-block"></asp:Label>






    <div class="table-responsive">

        <asp:GridView ID="PAppointmentGrid" runat="server"
            GridLines="Vertical"
            AutoGenerateSelectButton="true" OnRowCommand="PAppointmentGrid_RowCommand" AutoGenerateColumns="true" EnableViewState="False"
            CssClass="table  table-hover table-striped table-bordered dataTable text-center "
            HorizontalAlign="Center"
            EmptyDataText="No data available" 
            >

            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />

            <Columns>
                <asp:TemplateField HeaderText="No." ItemStyle-Width="50">
                    <ItemTemplate>
                        <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                    </ItemTemplate>

                    <ItemStyle Width="50px"></ItemStyle>
                </asp:TemplateField>


            </Columns>


        </asp:GridView>

    </div>

</asp:Content>
