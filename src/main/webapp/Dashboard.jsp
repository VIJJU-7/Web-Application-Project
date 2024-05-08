<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <title>Dashboard</title>
    <link rel="stylesheet" href="Dashboard.css">
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

       <a href="#">
        <!-- <i class='bx bxs-user-account' ></i> -->
        <!-- <i class='bx bx-bitcoin'></i> -->
        <!-- <i class='bx bx-coin' ></i> -->
        <i class='bx bxs-coin' ></i>
         <span class="links_name">Bank Account</span>
       </a>
       <span class="tooltip">Bank Account</span>
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

       <a href="AccountDetails.jsp">
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
             <div class="name">Vijay Kumar</div>
             <div class="job">Full Stack Developer</div>
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
      <div class="text">Welcome Mr. <%= request.getAttribute("Name") %></div>
    </center>
  </section>
</form>

<script src="Dashboard.js"></script>
</body>
</html>