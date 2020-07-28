<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" UnobtrusiveValidationMode="None" CodeBehind="AddStaff.aspx.cs" Inherits="DBProject.AddStaff" %>




<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <form id="form1" runat="server">

        <div class="row">


            <div class="col">

                <h2 class="font-weight-bold">Staff Registration Form</h2>

                <hr />


                <asp:Label ID="Msg" runat="server" ForeColor="Blue" Visible="False" Font-Bold="True" Font-Size="Large" Font-Strikeout="False"></asp:Label>

                <div class="form-bottom">


                    <!-- Staff REg  form start honay laga hai :)-->

                    <div class="form-group">
                        <asp:TextBox ID="Name" runat="server" type="text" class="form-username form-control" placeholder="Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="NameValidator" runat="server" ErrorMessage="*Required" Display="dynamic" Font-Bold="False" SetFocusOnError="True" ControlToValidate="Name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>

                    <div class="form-group">
                        <asp:TextBox ID="BirthDate" runat="server" type="data" class="form-username form-control" placeholder="Birth Date (mm/dd/yyyy)" TextMode="Date"></asp:TextBox>
<%--                        <asp:RegularExpressionValidator ID="BirthDateValidator" runat="server" ErrorMessage="Birth Date Format Not Correct" ControlToValidate="BirthDate" Display="Dynamic" ValidationExpression="((?:0[1-9])|(?:1[0-2]))\/((?:0[0-9])|(?:[1-2][0-9])|(?:3[0-1]))\/(\d{4})" ForeColor="Red" SetFocusOnError="True"></asp:RegularExpressionValidator>--%>
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="*Required" ControlToValidate="BirthDate" ID="BDateReqiured" Display="Dynamic" Font-Bold="False" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

                    </div>


                    <div class="form-group">
                        <asp:TextBox ID="Phone" runat="server" class="form-username form-control" placeholder="Phone Number " TextMode="Number" ></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Numbers Only !" ControlToValidate="Phone" ValidationExpression='^[0-9]+$' Font-Strikeout="False" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>


                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <asp:TextBox class="form-control" ID="Salary" runat="server" TextMode="Number" placeholder="Salary in Rupees"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidatorp" runat="server" ErrorMessage="Numbers Only !" ControlToValidate="Salary" ValidationExpression='^[0-9]+$' Font-Strikeout="False" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:TextBox class="form-control" ID="Qual" runat="server" type="text" placeholder="Qualification"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ErrorMessage="*Required" ControlToValidate="Salary" ID="RequiredFieldValidator2" Display="Dynamic" Font-Bold="False" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:TextBox class="form-control" ID="Designation" runat="server" type="text" placeholder="Designation"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ErrorMessage="*Required" ControlToValidate="Designation" ID="RequiredFieldValidator1" Display="Dynamic" Font-Bold="False" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:TextBox ID="Address" runat="server" class="form-username form-control" type="text" placeholder="Address"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:RadioButton name="Gender" ID="Male" GroupName="Gender" runat="server" Text="Male" Checked="true" value="M" />
                        <asp:RadioButton name="Gender" ID="Female" GroupName="Gender" runat="server" Text="Female" value="F" />
                    </div>

                    <asp:Button Text="Add" runat="server" type="submit" class="btn btn-primary btn-block" OnClick="StaffRegister"></asp:Button>
                    <!-- onclick="signup" -->

                    <!-- sing up ends here -->



                </div>
            </div>


        </div>


    </form>
</asp:Content>
