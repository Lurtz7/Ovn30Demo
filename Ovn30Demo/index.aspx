﻿
<%@ Page MasterPageFile="~/main.Master" Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Ovn30Demo.index" %>
<asp:Content ContentPlaceHolderID="main_content" runat="server">
    <div>
        <asp:ListBox ID="listBoxContacts" runat="server" AutoPostBack="True" Height="316px" Width="286px"></asp:ListBox>
    </div>
    <asp:Button ID="ButtonUpdate" runat="server" Text="Update Contact" OnClick="ButtonUpdate_Click" />
    <asp:Button ID="ButtonDelete" runat="server" Text="Delete Contact" OnClick="ButtonDelete_Click" />
    <asp:Button ID="ButtonCreate" runat="server" Text="Create Contact" OnClick="ButtonCreate_Click" />

    <table style="width: 60%;">
        <tr>
            <td class="auto-style1">Firstname</td>
            <td>
                <asp:TextBox ID="textBoxFirstname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="textBoxFirstname" EnableClientScript="False" ErrorMessage="Please provide firstname" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Lastname</td>
            <td>
                <asp:TextBox ID="textBoxLastname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="textBoxLastname" EnableClientScript="False" ErrorMessage="Please provide lastname" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">SSN</td>
            <td>
                <asp:TextBox ID="textBoxSSN" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="textBoxSSN" EnableClientScript="False" ErrorMessage="Please provide ssn" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="textBoxSSN" EnableClientScript="False" ErrorMessage="SSN is not in the right format YYYYMMDD-XXXX" ForeColor="Red" ValidateRequestMode="Enabled" ValidationExpression="\d{8}-\d{4}"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="ButtonAddContact" runat="server" OnClick="ButtonAddContact_Click" Text="Add Contact" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
