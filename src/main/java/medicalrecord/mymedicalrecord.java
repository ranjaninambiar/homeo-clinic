package medicalrecord;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class mymedicalrecord
 */
@WebServlet("/mymedicalrecord")
public class mymedicalrecord extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public mymedicalrecord() {
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
	   
	   
	    	String url = "jdbc:mysql://localhost:3306/usersdb";
			String un = "root";
			String pass = "ranjani24$";
			//String sql = "select * from users";
			try {
				HttpSession session=request.getSession(false);
				String userName=(String) session.getAttribute("name");
			
			    	request.setAttribute("name", userName);
			    	//String sql="select * from appointment where username ='"+userName+"' and datepref<NOW();";
			    	
			    	Connection conn = DriverManager.getConnection(url, un, pass);
			    	Statement stmt=conn.createStatement();
			    	ResultSet pid=stmt.executeQuery("select pid from person where uname like '"+ userName+"';");
				    pid.next();
				    Statement stmt1=conn.createStatement();
				    ResultSet uid=stmt1.executeQuery("select uid from patient where pid like '"+pid.getString("pid")+"';");
				    uid.next();
				  String sql="select * from appointment where uid like'"+uid.getString("uid")+"' and (datepref<NOW() or timepref<CURRENT_TIME);";
		            PreparedStatement prep = conn.prepareStatement(sql);
		            ResultSet rs=prep.executeQuery();
		            out.println(rs);
		            ArrayList<ArrayList<String>> aptlist = new ArrayList<>();
		            int i=0;
		            while(rs.next()){ 
		            	ArrayList<String> a = new ArrayList<String>();
		            	a.add(rs.getString("issue"));
		            	a.add(rs.getString("datepref"));
		            	a.add(rs.getString("timepref"));
		            	Statement stmt2=conn.createStatement();
					    ResultSet did=stmt1.executeQuery("select pid from doctors where did like '"+rs.getString("did")+"';");
					    did.next();
					    Statement stmt3=conn.createStatement();
					    ResultSet doctor=stmt1.executeQuery("select name from person where pid like '"+did.getString("pid")+"';");
					    doctor.next();
					    a.add(doctor.getString("name"));
					    	            	
		            	aptlist.add(a);
		            	
		            	i+=1;
		                                   
		        }
//		           out.println(aptlist);
//		           out.println(i);
		        request.setAttribute("list",aptlist);
		        request.setAttribute("length", Integer.toString(i));
		            		
				request.getRequestDispatcher("medicalrecords.jsp").include(request,response);
				}
				

			catch(Exception e) {
				System.out.println(e);}
			
	}

}
