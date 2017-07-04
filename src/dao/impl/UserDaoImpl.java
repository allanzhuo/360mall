package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dao.BaseDao;
import dao.UserDao;
import entity.User;

public class UserDaoImpl extends BaseDao implements UserDao{
	
	@Override
	public int insert(User user) {
		String sql="insert into user(userName,password,cellphone) values(?,?,?)";
		Object[] obj={user.getUsername(),user.getPassword(),user.getCellphone()};
		return this.executeUpdate(sql, obj);
	}

	@Override
	public int update(User user) {
		String sql="update user set password=?,cellphone=? where userName=?";
		Object[]obj={user.getPassword(),user.getCellphone(),user.getUsername()};
		return this.executeUpdate(sql, obj);
	}

	@Override
	public int delete(User user) {
		String sql="delete from user where userName=?";
		Object[]obj={user.getUsername()};
		return this.executeUpdate(sql, obj);
	}

	@Override
	public List<User> getAll() {
		Connection conn=this.getConnection();
		List<User> list=new ArrayList<User>();
		try {
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery("select * from user");
			while(rs.next()){
				User u=new User();
				u.setUsername(rs.getString("userName"));
				u.setPassword(rs.getString("password"));
				u.setCellphone(rs.getString("cellphone"));
				list.add(u);
				
			}
			this.closeAll(conn, stmt, rs);
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public User findUser(User user) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			conn=this.getConnection();
			String sql="select * from user where username=? and password=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, user.getUsername());
			pstmt.setString(2, user.getPassword());
			rs=pstmt.executeQuery();
			while (rs.next()) {
				User u=new User();
				u.setUsername(rs.getString("userName"));
				u.setPassword(rs.getString("password"));
				return u;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public List<User> getUserByName(String user) {
		Connection conn=this.getConnection();
		String sql="select * from user where username like ?";
		try {
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, "%"+user+"%");
			List<User> list=new ArrayList<User>();
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()){
				User u=new User();
				u.setUsername(rs.getString("userName"));
				u.setPassword(rs.getString("password"));
				u.setCellphone(rs.getString("cellphone"));
				list.add(u);
			}
			closeAll(conn, pstmt, rs);
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}

}
