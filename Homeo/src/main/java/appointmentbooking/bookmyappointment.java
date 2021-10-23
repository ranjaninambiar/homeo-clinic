package appointmentbooking;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class bookmyappointment
 */
@WebServlet("/bookmyappointment")
public class bookmyappointment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public bookmyappointment() {
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
	    String fname = request.getParameter("firstname");
	    String contact = request.getParameter("Contact");
	    String username = request.getParameter("email");
	    String date = request.getParameter("appointment-date");
	    String time = request.getParameter("appointment-time");
	    String reason = request.getParameter("reason");
	    String msg = request.getParameter("Message");
	    String url = "jdbc:mysql://localhost:3306/usersdb";
		String un = "root";
		String pass = "ranjani24$";
	    try {
			String query = "SELECT username from users where username =? ;";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, un, pass);
			Statement stmt=con.createStatement();
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, username);
			ResultSet resultSet = st.executeQuery();
			if(resultSet.next()) {
				Statement stmt2=con.createStatement();
			    int i=stmt2.executeUpdate("insert into appointments values('"+fname+"','"+contact+"','"+username+"','"+date+"','"+time+"','"+reason+"','"+msg+"');");
			    out.println("Patient appointment booked successfully!");
			    con.close();
				}
			else {
				out.println("Please enter your registered email id!");
				
			}
			}
	    
		            catch(Exception e){
		            System.out.println(e);
		            }}
		    
	

}
