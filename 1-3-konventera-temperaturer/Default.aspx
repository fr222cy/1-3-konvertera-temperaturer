<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_1_3_konventera_temperaturer.Default" viewStateMode="Disabled"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Style/style.css" rel="stylesheet" type="text/css" />
    <title>Konventera temperaturer</title>
</head>
<body>
    <!-- The form, includes: 3 textboxes, 2 radiobuttons and one button to proceed. -->
    <form id="form1" runat="server">
       
    <div id="Inputbox">
        <!-- Starttemperatur och validering-->
        Starttemperatur<asp:TextBox ID="StartTemp" CssClass="startT" runat="server"></asp:TextBox>
              <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Starttemperaturen måste innehålla ett heltal." Type="Integer" ControlToValidate="StartTemp" Operator="DataTypeCheck" Display="Dynamic">*</asp:CompareValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Du måste ange en Starttemperatur." ControlToValidate="StartTemp" Display="Dynamic" Visible="True">*</asp:RequiredFieldValidator><br />

        <!-- Sluttemperatur och validering-->
        Sluttemperatur <asp:TextBox ID="EndTemp" CssClass="endT" runat="server"></asp:TextBox>
              <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Sluttemperaturen måste innehålla ett heltal." Type="Integer" ControlToValidate="EndTemp" Operator="DataTypeCheck" Display="Dynamic">*</asp:CompareValidator>
              <asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="Sluttemperaturen måste vara högre än Starttemperaturen." Display="Dynamic" ControlToValidate="EndTemp" Type="Integer" Operator="GreaterThan" ControlToCompare="StartTemp">*</asp:CompareValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Du måste ange en Sluttemperatur." ControlToValidate="EndTemp" Display="Dynamic" Visible="True">*</asp:RequiredFieldValidator><br />   

        <!-- Temperatursteg och validering-->
        Temperatursteg <asp:TextBox ID="TempStep" CssClass="tempS" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Du måste ange ett Temperatursteg." ControlToValidate="TempStep" Display="Dynamic" Visible="True">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Temperatursteget måste vara inom intervallet 1-100." MaximumValue="100" MinimumValue="1" ControlToValidate="TempStep" BorderStyle="NotSet" Display="Dynamic" Type="Integer">*</asp:RangeValidator><br />
   
    </div>
    <div id="RadioBox">
        Celsius till Fahrenheit<asp:RadioButton ID="CelToFahr" CssClass="RadioButton" Checked="true" runat="server" GroupName="RadioConvert" /><br />
        Fahrenheit till Celsius<asp:RadioButton ID="FahrToCel" CssClass="RadioButton" runat="server" GroupName="RadioConvert" />
    </div>
    <div id="ButtonBox">
        <asp:Button ID="ConvertButton" runat="server" CssClass="cButton" Text="Konvertera" OnClick="ConvertButton_Click" />
    </div>
         <div id="ErrorBox">
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </div>
    </form>
    <div id="TableBox">
        <asp:Table ID="Table1" CssClass="table" runat="server" Visible="False"></asp:Table>
    </div>
</body>
</html>
