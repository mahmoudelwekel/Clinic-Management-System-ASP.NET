<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/DoctorMaster.Master" AutoEventWireup="true" CodeBehind="PreviousHistory.aspx.cs" Inherits="DBProject.Doctor.PreviousHistory" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Previous History</title>

</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="Cp1" runat="server">




    <h2 class="font-weight-bold">History of Treated Patients

    </h2>
    <hr />
    <asp:Label ID="PHistory" runat="server"></asp:Label>
    <br />
    <br />


    <div class="table-responsive">

        <asp:GridView  EmptyDataText="No data available" ID="PHistoryGrid" runat="server"
            CssClass="table  table-hover table-striped table-bordered dataTable text-center "
            EnableViewState="False"
            HorizontalAlign="Center"
            CellSpacing="3">

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
