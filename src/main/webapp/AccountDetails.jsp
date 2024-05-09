<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Transaction Services</title>
 <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0">
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="Welcome.css">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700;800&display=swap" rel="stylesheet">
</head>
<body>
 <h2 class="top-heading">Payment Gateway</h2>
    <div class="main3">
      <div class="container2 a-container" id="a-container">
        <form class="form2" id="a-form" method="" action="">
          <h2 class="form_title title">Account Details</h2>
         <b> <span class="form__span">Enter Reciever Details</span></b>
         <br>
          <div class="centered-content">
            <input class="form__input" type="text" placeholder="Account Number" name = "AccNum">
            <input class="form__input" type="text" placeholder="Account Holder Name" name = "AccName">
            <input class="form__input" type="text" placeholder="Account Phone Number" name = "Phno">
            <br>
            <input class="form__input" type="number" placeholder="Enter Amount" name = "Amount">
            <br><br>
            <button class="form__button button1 submit">Send Money</button>
            </div>
          </div>
        </form>
      </div>
    </div>
    <script src="Account Details.js"></script>
</body>
</html>