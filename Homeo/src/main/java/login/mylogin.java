package login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class mylogin
 */
@WebServlet("/mylogin")
public class mylogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public mylogin() {
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
	    String userName = request.getParameter("email_id");
	    String password = request.getParameter("pwd");
	   
	    	String url = "jdbc:mysql://localhost:3306/usersdb";
			String un = "root";
			String pass = "ranjani24$";
			//String sql = "select * from users";
			try {
			String query = "SELECT username, password from users where username =? and password =?;";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, un, pass);
			Statement stmt=con.createStatement();
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, userName);
			st.setString(2, password);
			ResultSet resultSet = st.executeQuery();
			//out.println(resultSet);	
			
				if (resultSet.next()) {
					System.out.println("Login successful!");
					HttpSession session = request.getSession();
			    	session.setAttribute("name", userName)	;
			    	request.setAttribute("name", userName);
			    	String sql="select * from appointments where username ='"+userName+"' and datepref>NOW();";	
			    	Connection conn = DriverManager.getConnection(url, un, pass);
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
		            	
		            	aptlist.add(a);
		            	
		            	i+=1;
		            	
		                        
		        }
		           out.println(aptlist);
	           out.println(i);
		        request.setAttribute("list",aptlist);
		        request.setAttribute("length", Integer.toString(i));
		            		
				request.getRequestDispatcher("dashboardn.jsp").include(request,response);
				}
				else {
					System.out.println("Login Failure! Retry");
					request.getRequestDispatcher("login-signup.jsp").include(request,response);}
			} 

			catch(Exception e) {
				System.out.println(e);}
			}
	           
	   
	    
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
