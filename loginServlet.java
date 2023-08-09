
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.annotation.WebServlet;
import java.util.*;
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {

protected void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {
//HttpSession session = request.getSession();
//boolean loggedIn = session != null && session.getAttribute("useremail") != null;
 // boolean loginRequest = loginurl.equals(request.getRequestURI());
		
	    String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		response.setContentType("text/html");
		
if (true){
	try {
	
		Class.forName("com.mysql.jdbc.Driver");
	    Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sas", "root", "paps@@@@");

	  // Create a prepared statement to retrieve the user data
	            PreparedStatement statement = connection.prepareStatement("SELECT * FROM logs WHERE username = ? AND password = ?");
	            statement.setString(1, username);
	            statement.setString(2, password);

	            // Execute the query
	    ResultSet resultSet = statement.executeQuery();

	            // Check if the user exists
	    if (resultSet.next()) {
	                // User is authenticated, redirect to a welcome page
	                response.sendRedirect("log.jsp");
	            } 
	    else {
	                // User is not authenticated, display an error message
	                System.out.println("Invalid username or password.");
	                request.setAttribute("er", "you are not registered");
	    			request.getRequestDispatcher("login.jsp").include(request, response);
	         }

	            // Close the database connection
	   resultSet.close();
	   statement.close();
	   connection.close();
	        } 
	catch (SQLException | ClassNotFoundException e) {
	            // Handle any database errors
	        	System.out.println("An error occurred: " + e.getMessage());
	        }
			
	} 		
else {
			request.setAttribute("er", "name or password does not match");
			request.getRequestDispatcher("login.jsp").include(request, response);
		}
	}
}
