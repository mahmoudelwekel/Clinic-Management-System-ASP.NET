﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/PatientMaster.Master" AutoEventWireup="true" CodeBehind="BillsHistory.aspx.cs" Inherits="DBProject.BillsHistory" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Bills History</title>

</asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2 class="font-weight-bold">Your Bill(s) History

    </h2>
    <hr />



    <asp:Label ID="BHistory" class="alert alert-info d-block" runat="server"></asp:Label>
    <div class="table-responsive">

        <asp:GridView  EmptyDataText="No data available" ID="BHistoryGrid" runat="server"
            CellPadding="4"
            GridLines="Vertical"
            EnableViewState="False"
            CssClass="table  table-hover table-striped table-bordered dataTable text-center "
            HorizontalAlign="Center">


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
