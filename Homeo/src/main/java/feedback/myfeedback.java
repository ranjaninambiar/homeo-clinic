package feedback;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class myfeedback
 */
@WebServlet("/myfeedback")
public class myfeedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public myfeedback() {
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
	
	    request.setAttribute("name", userName);
		String doctor = request.getParameter("name");
	    String feedback = request.getParameter("feedback");
	    try {
	    	String url = "jdbc:mysql://localhost:3306/usersdb";
			String un = "root";
			String pass = "ranjani24$";
			//String sql = "select * from users";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, un, pass);
			Statement stmt1=con.createStatement();
	    	ResultSet pid=stmt1.executeQuery("select pid from person where uname like '"+ userName+"';");
		    pid.next();
			Statement stmt=con.createStatement();
			int i = stmt.executeUpdate("update patient p inner join person s on p.pid = '"+pid.getString("pid")+"' set p.feedback = '"+feedback+"';");
		    //int i=stmt.executeUpdate("insert into feedback values('"+userName+"','"+doctor+"','"+feedback+"');");
			//rst.next();			
		    out.println("Feedback given successfully!");
		    //request.getRequestDispatcher("/Homeo/dashboard").include(request,response);
		    response.sendRedirect("http://localhost:8080/Homeo/dashboard");
		    con.close();
	       } 
	            catch(Exception e){
	            System.out.println(e);
	            }}
	}


