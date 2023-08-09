<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<%@ include file="sasi/cssall.jsp"%>
<link href="sasi/login.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="login-dark" >
        <form action="loginServlet" method="post" >
        
        <div class="mb-3">
            <div class="illustration"><i class="icon ion-ios-unlocked-outline"></i></div>
             <div class="form-group">
           <label> <input class="form-control" type="text" name="uname" placeholder="NAME" required>
             <div class="line-box">
             <div class="line"></div>
             </div>
          </label>   
          </div>
        </div>
          <div class="mb-3">  
          <div class="form-group"><label><input class="form-control" type="password" name="pass" placeholder="PASSWORD" required>
          <div class="line-box">
             <div class="line"></div>
             </div>
          </label></div><center><div><span >${er}</span></div></center>
           </div>
            <div class="form-group"><button class="btn btn-primary btn-block" type="submit">Log In</button></div>
          <a href="error.jsp" class="forgot">Forgot your password?</a></form>
       <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>