<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="paymentswebapp.User" %>
<%@ page import="paymentswebapp.BankAccount" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <title>Dashboard</title>
    <link rel="stylesheet" href="Dashboard.css">
    <link rel="stylesheet" type="text/css" href="index.css">
    <link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css" rel='stylesheet'>
    <link href="https://use.fontawesome.com/releases/v5.0.7/css/all.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
 <form action="" method="">
  <div class="sidebar">
    <div class="logo-details">
      <!-- <i class='bx bxs-parking'></i><br> -->
      <!-- <i class='bx bxl-paypal'></i> -->
      <!-- <i class='bx bxs-bank'></i> -->
      <i class='bx bxs-bank bx-tada'></i>
        <div class="logo_name">Payments APP</div>
        <i class='bx bx-menu' id="btn" ></i>
    </div>

    <ul class="nav-list">
      <li>
          <i class='bx bx-search' ></i>
         <input type="text" placeholder="Search...">
         <span class="tooltip">Search</span>
      </li>
      <li>

        <a href="#">
          <i class='bx bx-grid-alt'></i>
          <span class="links_name">Dashboard</span>
        </a>
         <span class="tooltip">Dashboard</span>
      </li>
      <li>

       <a href="#">
         <i class='bx bx-user' ></i>
         <span class="links_name">User</span>
       </a>
       <span class="tooltip">User</span>
     </li>
     <li>

       <a href="AddBankAccount.jsp">
        <!-- <i class='bx bxs-user-account' ></i> -->
        <!-- <i class='bx bx-bitcoin'></i> -->
        <!-- <i class='bx bx-coin' ></i> -->
        <i class='bx bxs-coin' ></i>
         <span class="links_name">Bank Account</span>
       </a>
       <span class="tooltip">Add Bank Account</span>
     </li>
     <li>

       <a href="#">
         <i class='bx bx-pie-chart-alt-2' ></i>
         <!-- <i class='bx bx-send' ></i> -->
         <span class="links_name">Transactions</span>
       </a>
       <span class="tooltip">Transactions</span>
     </li>
     <li>

       <a href="#">
        <!-- <i class='bx bxs-wallet' ></i> -->
        <i class='bx bx-wallet' ></i>
         <span class="links_name">Wallets</span>
       </a>
       <span class="tooltip">Wallets</span>
     </li>
     <li>

       <a href="SendMoney.jsp">
        <i class='bx bx-money'></i>
         <span class="links_name">Send Money</span>
       </a>
       <span class="tooltip">Send Money</span>
     </li>
    <li>
       <a href="#">
         <i class='bx bx-cog'></i>
         <span class="links_name">Settings</span>
       </a>
       <span class="tooltip">Settings</span>
     </li>
     
     <form action="" method="">
      <li>
       <a href="#">
        <i class='bx bx-log-out'></i>
         <span class="links_name">Logout</span>
       </a>
       <span class="tooltip">Logout</span>
     </li>
     <li>
     </form>
<br>
     <div>
      <input type="checkbox" class="checkbox" id="checkbox">
      <label for="checkbox" class="checkbox-label">
        <!-- <i class="fas fa-moon" style="color: #f1c40f;"></i>
        <i class="fas fa-sun" style="color: #f1c40f;"></i> -->
        <span class="ball"></span>
      </label>
    </div>

     <li class="profile">
         <div class="profile-details">
           <img src="Profile.jpg" alt="profileImg">
           <div class="name_job">
             <div class="name">Hello User</div>
             <div class="job">Enjoying Your Work</div>
           </div>
         </div>
         <a href="#">
         <i class='bx bx-log-out' id="log_out" ></i>
    </ul>
  </div>
  </form>
  <form action="" method="">
  <section class="home-section">
    <center>
    <img src = "https://cdn.dribbble.com/users/9421/screenshots/7370903/media/7af22331c7f9b3d2f5d990df5e6c9a56.gif" style ="width :400px; height :300px;">
    <!-- img src = "https://cdn.dribbble.com/users/219519/screenshots/3754798/piggy-bank-run.gif" -->
    <!-- img src ="https://cdn.dribbble.com/users/911625/screenshots/4661928/pig.gif"-->
      <div class="text">Welcome Mr. <%= request.getAttribute("Name") %></div>
			</div>
			
<div class="container">
  <ul class="cards">
    <div class="card">
        <div class="card-content">
         <% List<BankAccount> baList = (List<BankAccount>)request.getAttribute("baList");
                	for(int i=0; i< baList.size(); i++){
						BankAccount ba = baList.get(i);%>
						
						<h4 class="name"> Bank Name  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp; <%=ba.getBankName() %> </h4>
						<h4> Bank Acct No&nbsp;&nbsp; :  &nbsp;<%=ba.getBankAcctNum()%>        </h4>
						<h4> IFSC Code   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    :&nbsp; <%=ba.getBankIfscCode()%> </h4>
						<h4> Account Type&nbsp;  :&nbsp; <%=ba.getBankAcctType()%>       </h4>
						<h4> Balance &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    :&nbsp;  <%=ba.getBankAcctCurBalance()%> </h4>					
			<%}%>		
      </div>
      
      <div class="card-link-wrapper">
        <a href="#" class="card-link">+</a>&nbsp;
        <a href="#" class="card-link">Edit</a>
      </div>
</div>
    </center>
  </section>
</form>
<script src="Dashboard.js"></script>
<script src ="index.js"></script>
</body>
</html>