package signup;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class mysignup
 */
@WebServlet("/mysignup")
public class mysignup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public mysignup() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String firstName = request.getParameter("first_name");
	    String lastName = request.getParameter("last_name");
	    String userName = request.getParameter("email_id");
	    String password = request.getParameter("pwd");
	    String cpassword = request.getParameter("cpwd");
	    if (password.equals(cpassword) ) {
	    try {
	    	String url = "jdbc:mysql://localhost:3306/usersdb";
			String un = "root";
			String pass = "ranjani24$";
			//String sql = "select * from users";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, un, pass);
			Statement stmt=con.createStatement();
		    int i=stmt.executeUpdate("insert into users values('"+firstName+"','"+lastName+"','"+userName+"','"+password+"');");
		    out.println("User registered successfully!");
		    con.close();
	       } 
	            catch(Exception e){
	            System.out.println(e);
	            }}
	    else{
	    	out.println("Password doesn't match!");
	    }
	            
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
