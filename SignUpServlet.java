import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  
		 String username = request.getParameter("us");
	      String password = request.getParameter("fss");
	      response.setContentType("text/html");
	  try {
	        	Class.forName("com.mysql.jdbc.Driver");
	            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sas","root","paps@@@@");
	            String sql = "SELECT * FROM logs WHERE username=? AND password = ?";
	            PreparedStatement pstmt = conn.prepareStatement(sql);
	            pstmt.setString(1, username);
	            pstmt.setString(2, password);
	            ResultSet rs = pstmt.executeQuery();

	            if(rs.next()){
	              request.setAttribute("error","you are already registered");
	              System.out.println("you are already registered");
	  	    	  request.getRequestDispatcher("Signup.jsp").include(request, response);
	             
	            }
	            else {
	            sql = "INSERT INTO logs (username, password) VALUES (?, ?)";
	            pstmt = conn.prepareStatement(sql);
	            pstmt.setString(1, username);
	            pstmt.setString(2, password);
	            pstmt.executeUpdate();
                pstmt.close();
	            conn.close();
	            response.sendRedirect("login.jsp");
                }
	            }
	      
	     
	      catch (Exception e) {
	            // Handle any database errors
	        	response.sendRedirect("Signup.jsp");
	        	System.out.println(e);
	        	System.out.println("dsds");
	        	}
}
	     
}
