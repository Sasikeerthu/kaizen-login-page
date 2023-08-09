<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
 <link href="sasi/signup.css" rel="stylesheet" type="text/css"> 
</head>
<body><!-- 
<style>
body {
	
}</style> -->
 <div class="container">
 <form action="SignUpServlet" method="post">
 <div class="illustration"><i class="icon ion-ios-locked-outline"></i></div>
<label>
    <input type="text" class="input" name="us" placeholder="ENTER YOUR NAME" required>
    <div class="line-box">
      <div class="line"></div>
    </div>
&nbsp
    <input type="password" class="input" name="fss"  placeholder="ENTER YOUR PASSWORD" required>
    <div class="line-box">
      <div class="line"></div>
    
    </div>
    <div><span >${error}</span></div>
 </label>

 <button type="submit">submit</button>&nbsp <a href="login.jsp" class="forgot">Login</a><%--<button type="submit" href="login.jsp">Log In</button>--%></div>
 
 <div>
</form>
</div>
  <%-- 
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if(username.equals("sasi")) {
  	 <%  try {
        	Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sas", "root", "paps@@@@");

            // Create a prepared statement to insert the user data
            PreparedStatement sta = connection.prepareStatement("INSERT INTO users (username, password) VALUES (?, ?)");
            sta.setString(1, username);
            sta.setString(2, password);
            sta.executeUpdate();
            %> 
            <%  response.sendRedirect("login.jsp");%>
             }
          
   <% }
        
    else{
    %>
 	  
   <% catch (SQLException e) {
            // Handle any database errors
             out.println("An error occurred: " + e.getMessage());
        }
   %>
    <%}
    %>
--%>
  </body>
</html>