package login;
import java.sql.Connection;
import java.sql.DriverManager;

public class dbutil {
	public static Connection getCon()
	{
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wangzhe", "root", "root");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if(con!=null)
			System.out.println("连接成功！");
		else
			System.out.println("连接失败");
		
		return con;
		
	}
	
}
