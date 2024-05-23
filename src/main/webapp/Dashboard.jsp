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
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css"/>
    <!-- link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet" -->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
        body {
            color: var(--black);
            background-image: url('https://img.freepik.com/premium-photo/sleek-black-credit-card-dark-blue-background-minimalist-financial-concept-stylish-modern-banking-security-wealth-representation-ai_372197-14527.jpg?size=626&ext=jpg&ga=GA1.1.2082370165.1716163200&semt=ais_user');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
    </style>
</head>
<body>
    <form action="" method="">
        <div class="sidebar">
            <div class="logo-details">
                <i class='bx bxs-bank bx-tada'></i>
                <div class="logo_name">Payments APP</div>
                <i class='bx bx-menu' id="btn"></i>
            </div>

            <!-- ul class="nav-list">
                <li>
                    <i class='bx bx-search'></i>
                    <input type="text" placeholder="Search...">
                    <span class="tooltip">Search</span>
                </li-->
                
                <li>
                    <a href="#">
                        <i class='bx bx-grid-alt'></i>
                        <span class="links_name">Dashboard</span>
                    </a>
                    <span class="tooltip">Dashboard</span>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-user'></i>
                        <span class="links_name">User</span>
                    </a>
                    <span class="tooltip">User</span>
                </li>
                <li>
                    <a href="AddBankAccount.jsp">
                        <i class='bx bxs-coin'></i>
                        <span class="links_name">Bank Account</span>
                    </a>
                    <span class="tooltip">Add Bank Account</span>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-pie-chart-alt-2'></i>
                        <span class="links_name">Transactions</span>
                    </a>
                    <span class="tooltip">Transactions</span>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-wallet'></i>
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
                       <i class='bx bx-history'></i>
                        <span class="links_name">History</span>
                    </a>
                    <span class="tooltip">History</span>
                </li>
                <br>
                <!--  div>
                    <input type="checkbox" class="checkbox" id="checkbox">
                    <label for="checkbox" class="checkbox-label">
                        <span class="ball"></span>
                    </label>
                </div-->

                <li class="profile">
                    <div class="profile-details">
                        <img src="Profile.jpg" alt="profileImg">
                        <div class="name_job">
                            <div class="name">Hello User</div>
                            <div class="job">Enjoying Your Work</div>
                        </div>
                    </div>
                    <form action="" method="">
                        <a href="#">
                            <i class='bx bx-log-out' id="log_out"></i>
                    </form>
                </li>
            </ul>
        </div>
    </form>

    <form action="" method="">
        <section class="home-section">
            <div class="topnav">
            <a href= "#">
                <h3>DASHBOARD</h3></a>
                <div class="topnav-right">
                    <a href="#search">Contact</a>
                    <a href="#about">About Us</a>
                </div>
            </div>
            <center>
                <%User sessionUser = (User)session.getAttribute("user");%>
                <img src="coin.png" style="width:400px; height:300px;">&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="text">Welcome Mr. <%= request.getAttribute("Name") %></div>

                <div class="container">
                    <div class="carousel">
                        <% List<BankAccount> baList = (List<BankAccount>)request.getAttribute("baList");
                        if(baList !=null){
                            for(int i=0; i< baList.size(); i++){
                                BankAccount ba = baList.get(i);%>
                                <div class="card">
                                    <div class="card-content">
                                        <h4 class="name">Bank Name: <%= ba.getBankName() %> </h4>
                                        <h4>Bank Acct No: <%= ba.getBankAcctNum() %> </h4>
                                        <h4>IFSC Code: <%= ba.getBankIfscCode() %> </h4>
                                        <h4>Account Type: <%= ba.getBankAcctType() %> </h4>
                                        <h4>Balance: <%= ba.getBankAcctCurBalance() %> </h4>                    
                                    </div>
                                    <div class="card-link-wrapper">
                                        <a href="#" class="card-link">Del</a>
                                        <a href="#" class="card-link">Edit</a>
                                    </div>
                                </div>
                            <%}%>  
                        <%} %>    
                    </div>
                </div>
            </center>
        </section>
    </form>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
    <script>
        $(document).ready(function(){
            $('.carousel').slick({
                dots: true,
                infinite: true,
                speed: 300,
                slidesToShow: 3,
                slidesToScroll: 1,
                prevArrow: '<button type="button" class="slick-prev" style="background:black; color:white;">&larr;</button>',
                nextArrow: '<button type="button" class="slick-next" style="background:black; color:white;">&rarr;</button>',
                responsive: [
                    {
                        breakpoint: 1024,
                        settings: {
                            slidesToShow: 2,
                            slidesToScroll: 1,
                            infinite: true,
                            dots: true
                        }
                    },
                    {
                        breakpoint: 600,
                        settings: {
                            slidesToShow: 1,
                            slidesToScroll: 1
                        }
                    }
                ]
            });
        });
    </script>
</body>
</html>
