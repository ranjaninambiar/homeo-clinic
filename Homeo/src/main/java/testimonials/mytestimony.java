package testimonials;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Statement;

/**
 * Servlet implementation class mytestimony
 */
@WebServlet("/mytestimony")
public class mytestimony extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public mytestimony() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		try {
	    	String url = "jdbc:mysql://localhost:3306/usersdb";
			String un = "root";
			String pass = "ranjani24$";
			//String sql = "select * from users";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, un, pass);
			Statement stm = con.createStatement();  
            ResultSet rs = stm.executeQuery("select * from doctor");  
            out.println("<table border=1 width=50% height=50%>");  
            out.println("<tr><th>Doctor's Name</th><th>Years of experience</th><th>Area of expertise</th><tr>");  
            while (rs.next()) 
            {  
                String n =rs.getString("name");
                int nm = rs.getInt("serviceage");   
                String s =rs.getString("areaofexpertise");
                out.println("<tr><td>" + n + "</td><td>" + nm + "</td><td>" + s + "</td></tr>");   
            }  
            out.println("</table>");  
            out.println("</html></body>");  
            con.close();  
		}
		catch(Exception e) {
			out.println(e);  
		}
		
	}

}
