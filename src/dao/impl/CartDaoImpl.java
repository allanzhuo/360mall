package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.BaseDao;
import dao.CartDao;
import entity.Cart;

public class CartDaoImpl extends BaseDao implements CartDao{

	@Override
	public int insert(Cart cart) {
		String sql="insert into cart(id,gid,img,name,type,price,num) values(?,?,?,?,?,?,?)";
		Object[] obj={cart.getId(),cart.getGid(),cart.getImg(),cart.getName(),cart.getType(),cart.getPrice(),cart.getNum()};
		return this.executeUpdate(sql, obj);
	}

	@Override
	public int delete(Cart cart) {
		String sql="delete from cart where gid=? and id=? and type=?";
		Object[] obj={cart.getGid(),cart.getId(),cart.getType()};
		return this.executeUpdate(sql, obj);
	}

	@Override
	public int update(Cart cart) { 
		String sql="update cart set num=? where id=? and gid=? and type=?";
		Object[] obj={cart.getNum(),cart.getId(),cart.getGid(),cart.getType()};
		return this.executeUpdate(sql, obj);
	}

	@Override
	public List<Cart> getAll(Cart cart) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			conn=this.getConnection();
			String sql="select * from cart where id=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, cart.getId());
			rs=pstmt.executeQuery();
			List<Cart> list=new ArrayList<Cart>();
			while(rs.next()){
				Cart c=new Cart();
				c.setId(rs.getString("id"));
				c.setGid(rs.getString("gid"));
				c.setImg(rs.getString("img"));
				c.setName(rs.getString("name"));
				c.setType(rs.getString("type"));
				c.setPrice(rs.getDouble(("price")));
				c.setNum(rs.getInt("num"));
				list.add(c);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			this.closeAll(conn, pstmt, rs);
		}
		return null;
	}

	@Override
	public List<Cart> getCartByGid(Cart cart) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			conn=this.getConnection();
			String sql="select * from cart where id=? and gid=? and type=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, cart.getId());
			pstmt.setString(2, cart.getGid());
			pstmt.setString(3, cart.getType());
			rs=pstmt.executeQuery();
			List<Cart> list=new ArrayList<Cart>();
			while(rs.next()){
				Cart c=new Cart();
				c.setId(rs.getString("id"));
				c.setGid(rs.getString("gid"));
				c.setImg(rs.getString("img"));
				c.setName(rs.getString("name"));
				c.setType(rs.getString("type"));
				c.setPrice(rs.getDouble(("price")));
				c.setNum(rs.getInt("num"));
				list.add(c);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			this.closeAll(conn, pstmt, rs);
		}
		return null;
	}



}
