package login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class register extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8861882210290024203L;

	/**
	 * Constructor of the object.
	 */
	public register() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("user");
		String password = request.getParameter("password");
		user user = new user();
		user.setUsername(name);
		user.setPassword(password);
		
		
		Connection con = null;
		PreparedStatement stmt = null;
		
		
		try {
			
			con = dbutil.getCon();
			
			String sql = "insert into user(username, password) value(?,?)";
			
			 stmt = con.prepareStatement(sql);
			 stmt.setString(1, user.getUsername());
			 stmt.setString(2, user.getPassword());
			 
			 stmt.executeUpdate();
			
			
			stmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally
		{
			response.sendRedirect("user/welcome.jsp");
		}
		
	}

	public void init() throws ServletException {
		// Put your code here
	}

}
