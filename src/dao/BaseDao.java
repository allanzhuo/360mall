package dao;
import java.sql.*;


import javax.naming.Context;
import javax.naming.InitialContext;

import javax.sql.DataSource;

public class BaseDao {
	private static String driver = "com.mysql.jdbc.Driver";
	private static String url = "jdbc:mysql://localhost:3306/db?user=root&password="; 
	Connection conn = null;
	
	public Connection getConnection() {
		if(conn==null){
			try {
				Class.forName(driver);
				conn = DriverManager.getConnection(url);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return conn;
	}
/*	public Connection getConnection() {
		if(conn==null){
			Context ctx;
	         try {
	              ctx = new InitialContext();
					//获取与逻辑名相关联的数据源对象
					DataSource ds=(DataSource)ctx.lookup("java:comp/env/jdbc/db");
					conn=ds.getConnection();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return conn;
	}*/
	
	
	

	public void closeAll(Connection conn, Statement stmt, ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		if (stmt != null) {
			try {
				stmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	
	public int executeUpdate(String sql, Object[] obj) {
		PreparedStatement pstmt = null;
		int num = 0;
		conn =  getConnection(); 
		try {
			pstmt = conn.prepareStatement(sql);
			if (obj != null) {
				for (int i = 0; i < obj.length; i++) {
					pstmt.setObject(i + 1, obj[i]); 
				}
			}
			num = pstmt.executeUpdate(); 
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			closeAll(conn, pstmt, null);
		}
		return num;
	}
}
