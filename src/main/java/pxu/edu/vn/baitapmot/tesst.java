package pxu.edu.vn.baitapmot;

import java.sql.Connection;
import java.sql.DriverManager;

public class tesst {
	static Connection conn;
	private static Connection connnectDB() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/webtintuc";
			String userName = "root";
			String password = "123456";
			Class.forName("com.mysql.jdbc.Driver");
			if (conn == null) {
				conn = DriverManager.getConnection(dbURL, userName, password);
				System.out.println("connect successfully!");
			}
		} catch (Exception ex) {
			System.out.println("connect failure!");
			ex.printStackTrace();
		}
		return conn;
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		connnectDB();

}
}
