<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="paymentswebapp.User" %>
<%@ page import="paymentswebapp.BankAccount" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bank Account</title>
</head>
<body>

<% 
	String User  = (String)session.getAttribute("FirstName"); %>
	<h2>Welcome <%=User %> ;
	</h2>
	
	<center>
	<div>
		
	<table border="0">
	
	<tr>
	<td>
	
	<h1>Payments Web App</h1>
	
	</td>
	</tr>
	
	 <tr>
	<td>
					
	</td>
	
	<td align="right">
	
	<form action="http://localhost:8080/PaymentWebApp/LogoutServlet">
	<input type="hidden" name="sessionUname" />
	<input type="submit" value="Logout"/>
	</form>
    </td>
	</tr>
	</table>
	</div>
		
		<div>
		<% List<BankAccount> baList = (List<BankAccount>)request.getAttribute("baList"); %>
		<table border="">
		<tr>
		<% 
		if(baList != null){
			for(int i=0;i<baList.size();i++) {
				
				BankAccount ba = baList.get(i);%>
				
		<td>
						BANK NAME: <%=ba.getBaName() %></br>
						BANK Acct No: <%=ba.getBaNumber() %></br>
						Curr Balance: <%=ba.getCurrBankBal() %></br>
						IFSC CODE: <%=ba.getIFSC_CODE() %></br>
						BRANCH:
						
		</td>
				    <% } %>
					<% } %>
					
					<td>
					<form action ="" method = "">
					<input type="hidden" name="sessionUname" />
					<input type="submit" value="Add Bank Account" />
				</form>
			</td>
		</tr>
	</table>
	</div>
	</center>
</body>
</html>