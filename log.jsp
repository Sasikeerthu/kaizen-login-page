<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ page import="java.sql.*,java.io.*" %>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="log.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
<div class="container-fluid">
<li><a class="navbar-brand" style="color:white;">Kaizen</a></li>
<div class="collapse navbar-collapse" id="navbarSupportedContent">
<ul class="navbar-nav me-auto mb-2 mb-lg-0">
<center><li class="nav-item" ><button class="nav-link active" id="dfo" aria-current="page" 
style="color:black;" name="inter" value="pro" >enrollment</button></li>
</center>
&nbsp&nbsp&nbsp&nbsp&nbsp
<li class="nav-item" class="navbar-brand" ><button class="nav-link active" id="dsa"
aria-current="page" style="color:black;" >Verification</button></li>
</ul> 
</div>

<a class="nav-link p-3" href="login.jsp">Logout</a></li>
	</div></nav>

<center>
<div id="sas" style="display:none;">
<% 
 Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/voicedb","root","paps@@@@");  
 Statement statement = con.createStatement();
 ResultSet rs= statement.executeQuery("SELECT * FROM info");
%>
 <center><table border=1>
 
 <td>customer id</td>
 <td>unique id</td>
 <td>status</td>
 <td>flag</td>
 <td>voice file path</td>

<% while(rs.next()){%> 
        <tr>    
        <td><%=rs.getInt(1)%></td> 
        <td><%=rs.getInt(2)%></td> 
        <td><%=rs.getString(3)%></td> 
        <td><%=rs.getString(4)%></td> 
        <td><%=rs.getString(5)%></td> 
        </tr>
          <%}%>
</table></center></div>
<script type="text/javascript">
var button = document.getElementById('dfo');
var sas = document.getElementById("sas");
button.onclick = function() {
    if (true) {
    	sas.style.display="block";
    	
    	det.style.display="none";
    } else {
    	sas.style.display="none";
    }
  };
</script>
<div id="det" style="display:none;"><% 
 Class.forName("com.mysql.jdbc.Driver");
  Connection co=DriverManager.getConnection("jdbc:mysql://localhost:3306/voicedb","root","paps@@@@");  
 Statement statemen = co.createStatement();
 ResultSet s= statemen.executeQuery("SELECT * FROM Verification");
%>
 <center><table border=1>
  <tr>
 <td>customer id</td>
 <td>unique id</td>
 <td>digit  </td>
  <td>verification1</td>
  <td>verification2</td>
 <td>status</td>
 <td>flag</td>
 <td>voice file path</td>
  <td>created_Date_Time</td>
<% while(s.next()){%> 
<tr>    
<td><%=s.getString(1)%></td> 
<td><%=s.getString(2)%></td> 
<td><%=s.getString(3)%></td> 
<td><%=s.getString(4)%></td> 
<td><%=s.getString(5)%></td> 
<td><%=s.getString(6)%></td> 
<td><%=s.getString(7)%></td> 
<td><%=s.getString(8)%></td> 
<td><%=s.getString(9)%></td> 
</tr>
                 <%}%>
</table></center></div>

<script type="text/javascript">
var det = document.getElementById("det");
var but=document.getElementById("dsa");
but.onclick = function() {
if(true){
det.style.display="block";
sas.style.display="none";
}
else{
det.style.display="none";
}
}
</script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

