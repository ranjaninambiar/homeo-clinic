package blog;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class myblog
 */
@WebServlet("/myblog")
public class myblog extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public myblog() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		HttpSession session=request.getSession(false);
		String userName=(String) session.getAttribute("name");
		PrintWriter out=response.getWriter();
		ArrayList<ArrayList<String>> dataList = new ArrayList<>(); 
		try {
	    	String url = "jdbc:mysql://localhost:3306/usersdb";
			String un = "root";
			String pass = "ranjani24$";
			//String sql = "select * from users";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, un, pass);
			Statement stm = con.createStatement();  
            ResultSet rs = stm.executeQuery("select * from patient");   
           
            while (rs.next()) 
            {  
            	Statement stmt = con.createStatement();  
                ResultSet rst = stmt.executeQuery("select s.name from patient p, person s where s.pid like '"+rs.getString("pid")+"' LIMIT 8;");
                rst.next();
                ArrayList<String> values = new ArrayList<String>();
                values.add(rst.getString("name"));
                values.add(rs.getString("doj"));
                values.add(rs.getString("feedback"));
                dataList.add(values);
            }   
		}
		catch(Exception e) {
			out.println(e);  
		}
		request.setAttribute("data",dataList);
		RequestDispatcher dispatcher = request.getRequestDispatcher("blog.jsp");
		if (dispatcher != null){
			dispatcher.forward(request, response);
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
