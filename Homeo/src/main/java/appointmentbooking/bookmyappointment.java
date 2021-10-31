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
import javax.servlet.http.HttpSession;

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
		HttpSession session=request.getSession(false);
		String userName=(String) session.getAttribute("name");
	    String date = request.getParameter("appointment-date");
	    String time = request.getParameter("appointment-time");
	    String reason = request.getParameter("reason");
	    String msg = request.getParameter("Message");
	    String doctor = request.getParameter("doctor");
	    String url = "jdbc:mysql://localhost:3306/usersdb";
		String un = "root";
		String pass = "ranjani24$";
	    try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, un, pass);
			Statement stmt=con.createStatement();
			ResultSet pid=stmt.executeQuery("select pid from person where uname like '"+ userName+"';");
		    pid.next();
		    Statement stmt1=con.createStatement();
		    ResultSet uid=stmt1.executeQuery("select uid from patient where pid like '"+pid.getString("pid")+"';");
	
		    Statement stmt3=con.createStatement();
		    ResultSet doctorpid=stmt3.executeQuery("select pid from person where name like '"+ doctor+"';");
		    doctorpid.next();
		    Statement stmt4=con.createStatement();
		    ResultSet did=stmt4.executeQuery("select did from doctors where pid like '"+doctorpid.getString("pid")+"';");
		   
			if(uid.next() && did.next()) {
				Statement stmt2=con.createStatement();
			    int i=stmt2.executeUpdate("insert into appointment values(null,'"+date+"','"+time+"','"+reason+"','"+msg+"','"+did.getString("did")+"','"+uid.getString("uid")+"');");
			    out.println("Patient appointment booked successfully!");
			    //request.getRequestDispatcher("dashboardn.jsp").include(request,response);
			    response.sendRedirect("http://localhost:8080/Homeo/dashboard");
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
