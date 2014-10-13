<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Collin Mortgage Calculator</title>
    <link rel="stylesheet" type="text/css"href="main.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div id="calc">
    
    <h1>Collin's Mortgage Calculator</h1>
       
               
           
        
        
        <br /><br />
     
        Loan Amount:*<asp:TextBox ID="tbLoanAmt" runat="server" Width="112px" style="margin-left: 46px" ></asp:TextBox>
                  
        <asp:RequiredFieldValidator ID="rvfLoan" runat="server" ControlToValidate="tbLoanAmt" ErrorMessage="Please Enter Load amount"></asp:RequiredFieldValidator>
                  
        <br /><br />      
        
        Annual Interest %:* <asp:TextBox ID="tbAnnualInterest" runat="server" style="margin-left: 17px" Width="112px" ></asp:TextBox>
        
        <asp:RequiredFieldValidator ID="rfvInterest" runat="server" ControlToValidate="tbAnnualInterest" ErrorMessage="Please Enter Interest Rate"></asp:RequiredFieldValidator>
        
        <br /><br />

        Loan Term (Yrs):* <asp:TextBox ID="tbLoanTerm" runat="server" Width="112px" style="margin-left: 23px" ></asp:TextBox>
        
        <asp:RequiredFieldValidator ID="rvfYear" runat="server" ControlToValidate="tbLoanTerm" ErrorMessage="Please Enter Year(s)"></asp:RequiredFieldValidator>
        
        <br /><br />

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" Width="133px" />
        
        <asp:Button ID="btnReset" runat="server" Text="Reset" Width="127px" />
        
        <br /><br />
        <%If Not IsPostBack Then%>
        <p>Please enter all fields for loan calulation</p>
        <%Else%>Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label>
        
        <br /><br />
        
        <asp:GridView ID="loanGridView" runat="server" Width="259px" cssclass="gridview">
            <alternatingrowstyle cssclass="alt" />
        </asp:GridView>
        <%End If%>
        </div>
    </form>
</body>
</html>
