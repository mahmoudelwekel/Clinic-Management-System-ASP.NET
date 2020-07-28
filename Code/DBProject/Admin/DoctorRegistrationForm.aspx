<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" UnobtrusiveValidationMode="None" CodeBehind="DoctorRegistrationForm.aspx.cs" Inherits="DB_Project.DoctorRegistrationForm" %>




<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <form id="form1" runat="server">



        <div class="row">

            <div class="col">

                <h2 class="font-weight-bold">Doctor Registration Form</h2>

                <hr />

                <asp:Label ID="Msg" runat="server" ForeColor="Blue" Visible="False" Font-Bold="True" Font-Size="Large" Font-Strikeout="False"></asp:Label>


                <div class="form-bottom">

                    <!-- sign up form start honay laga hai :)-->

                    <div class="form-group">

                        <asp:TextBox ID="Name" runat="server" type="text" class="form-username form-control" placeholder="Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="NameValidator" runat="server" ErrorMessage="* Required" Display="dynamic" Font-Bold="False" SetFocusOnError="True" ControlToValidate="Name" ForeColor="Red"></asp:RequiredFieldValidator>

                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="BirthDate" runat="server" type="Date" class="form-username form-control" placeholder="Birth Date (mm/dd/yyyy)"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="*Required" ControlToValidate="BirthDate" ID="BDateReqiured" Display="Dynamic" Font-Bold="False" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

<%--                        <asp:RegularExpressionValidator ID="BirthDateValidator" runat="server" ErrorMessage="Birth Date Format Not Correct" ControlToValidate="BirthDate" Display="Dynamic" ValidationExpression="((?:0[1-9])|(?:1[0-2]))\/((?:0[0-9])|(?:[1-2][0-9])|(?:3[0-1]))\/(\d{4})" ForeColor="Red" SetFocusOnError="True"></asp:RegularExpressionValidator>--%>

                    </div>
                    <div class="form-group">

                        <asp:TextBox ID="Email" runat="server" type="email" class="form-username form-control" placeholder="Email : person@example.com"></asp:TextBox>

                        <asp:RegularExpressionValidator ID="EmailformatValidator" runat="server" ErrorMessage="Incorrect Email Format" Display="Dynamic" ControlToValidate="Email" SetFocusOnError="True" ValidationExpression="(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|&quot;(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*&quot;)@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])" ForeColor="Red"></asp:RegularExpressionValidator>

                        <asp:CustomValidator runat="server" Display="Dynamic" ControlToValidate="Email" ID="DoctorValidate"
                            ForeColor="Red" ErrorMessage="" OnServerValidate="ValidateDoctorEmail" SetFocusOnError="True"></asp:CustomValidator>

                        <asp:RequiredFieldValidator runat="server" ErrorMessage="*Required" ControlToValidate="Email" ID="RequiredFieldValidator3" Display="Dynamic" Font-Bold="False" ForeColor="Red"></asp:RequiredFieldValidator>

                        <asp:CustomValidator runat="server" Display="Dynamic" ControlToValidate="Email" ID="DV"
                            ForeColor="Red" ErrorMessage="" OnServerValidate="DepartmentValidate" SetFocusOnError="True"></asp:CustomValidator>


                    </div>


                    <div class="form-group">
                        <asp:TextBox ID="Password" runat="server" type="password" class="form-username form-control" placeholder="Enter New Password"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required" ControlToValidate="Password" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>

                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords Do not Match " ControlToValidate="Password" ControlToCompare="cPassword" Display="Dynamic" ForeColor="Red"></asp:CompareValidator>
                    </div>


                    <div class="form-group">
                        <asp:TextBox ID="cPassword" runat="server" type="password" class="form-username form-control" placeholder="Confirm Password"></asp:TextBox>
                    </div>


                    <div class="form-group">

                        <asp:TextBox ID="Phone" runat="server" type="number" class=" form-control" placeholder="Phone Number "></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Numbers Only !" ControlToValidate="Phone" ValidationExpression='^[0-9]+$' Font-Strikeout="False" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>

                    </div>



                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <asp:TextBox ID="Salary" runat="server" type="number" placeholder="Salary in Rupees" class=" form-control"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidatorp" runat="server" ErrorMessage="Numbers Only !" ControlToValidate="Salary" ValidationExpression='^[0-9]+$' Font-Strikeout="False" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>

                        </div>
                        <div class="form-group col-md-4">
                            <asp:TextBox ID="Charges_per_visit" runat="server" type="number" placeholder="Charges_per_visit in Rupees" class=" form-control"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Numbers Only !" ControlToValidate="Charges_per_visit" ValidationExpression='^[0-9]+$' Font-Strikeout="False" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:TextBox ID="Exp" runat="server" type="number" min="0" Max="5" placeholder="Experience (0-5)" class=" form-control"></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Experience Range should be (0-5)" MinimumValue="0" MaximumValue="5" Type="Integer" ControlToValidate="Exp" Display="Dynamic" ForeColor="Red"></asp:RangeValidator>
                        </div>
                    </div>





                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <asp:DropDownList ID="Department" runat="server" class=" form-control">

                                <asp:ListItem Text="Select Depatment" Value="0"></asp:ListItem>
                                <asp:ListItem Text="Cardiology" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Orthopaedics" Value="2"></asp:ListItem>
                                <asp:ListItem Text="ENT" Value="3"></asp:ListItem>
                                <asp:ListItem Text="Physiotherapy" Value="4"></asp:ListItem>
                                <asp:ListItem Text="Neurology" Value="5"></asp:ListItem>

                            </asp:DropDownList>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:TextBox ID="Qualification" runat="server" type="text" placeholder="Qualification" class=" form-control"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:TextBox ID="spec" runat="server" type="text" placeholder="Specialization" class=" form-control"></asp:TextBox>
                        </div>
                    </div>


                    <div class="form-group">
                        <asp:TextBox ID="Address" runat="server" class="form-username form-control" type="text" placeholder="Address"></asp:TextBox>
                    </div>


                    <div class="form-group">
                        <asp:RadioButton name="Gender" ID="Male" GroupName="Gender" runat="server" Text="Male" Checked="true" value="M" />
                        <asp:RadioButton name="Gender" ID="Female" GroupName="Gender" runat="server" Text="Female" value="F" />
                    </div>







                    <asp:Button Text="Add" runat="server" type="submit" class="btn btn-primary btn-block" OnClick="DoctorRegister"></asp:Button>
                    <!-- onclick="signup" -->


                    <!-- sing up ends here -->












                </div>

            </div>
        </div>

    </form>

</asp:Content>
