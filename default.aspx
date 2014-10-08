﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Collin Mortgage Calculator</title>
    <link rel="stylesheet" type="text/css"href="main.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <h1>Collin's Mortgage Calculator</h1>
       <h2>Please enter all fields for load calulation</h2>
        
        <br /><br />
     
        Loan Amount:*<asp:TextBox ID="tbLoanAmt" runat="server" Width="114px" style="margin-left: 46px" ></asp:TextBox>
                  
        <asp:RegularExpressionValidator ID="valLoan" runat="server" ControlToValidate="tbLoanAmt" ErrorMessage="RegularExpressionValidator" ValidationExpression="^\d"></asp:RegularExpressionValidator>
                  
        <br /><br />      
        
        Annual Interest %:* <asp:TextBox ID="tbAnnualInterest" runat="server" style="margin-left: 17px" Width="114px" ></asp:TextBox>
        
        <asp:RegularExpressionValidator ID="valInterest" runat="server" ControlToValidate="tbAnnualInterest" ErrorMessage="RegularExpressionValidator" ValidationExpression="^\d"></asp:RegularExpressionValidator>
        
        <br /><br />

        Loan Term (Yrs):* <asp:TextBox ID="tbLoanTerm" runat="server" Width="114px" style="margin-left: 23px" ></asp:TextBox>
        
        <asp:RegularExpressionValidator ID="valYrs" runat="server" ControlToValidate="tbLoanTerm" ErrorMessage="RegularExpressionValidator" ValidationExpression="^\d"></asp:RegularExpressionValidator>
        
        <br /><br />

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" Width="119px" />
        
        <asp:Button ID="btnReset" runat="server" Text="Reset" Width="119px" />
        
        <br /><br />
                
        Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label>
        
        <br /><br />
        
        <asp:GridView ID="loanGridView" runat="server" Width="256px" cssclass="gridview">
            <alternatingrowstyle cssclass="alt" />
        </asp:GridView>
        </div>
    </form>
</body>
</html>
