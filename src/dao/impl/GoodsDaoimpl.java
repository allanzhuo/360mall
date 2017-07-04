package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.BaseDao;
import dao.GoodsDao;
import entity.Goods;
import entity.User;


public class GoodsDaoimpl extends BaseDao implements GoodsDao {

	@Override
	public List<Goods> getGoodById(Goods goods) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			conn=this.getConnection();
			String sql="select * from goods where id=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, goods.getId());
			rs=pstmt.executeQuery();
			List<Goods> list=new ArrayList<Goods>();
			while(rs.next()){
				Goods g=new Goods();
				g.setId(rs.getString("id"));
				g.setName(rs.getString("name"));
				g.setPrice(Double.parseDouble(rs.getString("price")));
				g.setImg1(rs.getString("img1"));
				g.setImg2(rs.getString("img2"));
				g.setImg3(rs.getString("img3"));
				g.setImg4(rs.getString("img4"));
				g.setStock(rs.getInt("stock"));
				list.add(g);
				return list;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(conn, pstmt, rs);
		}
		return null;
	}

	@Override
	public List<Goods> getAll() {
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			conn=this.getConnection();
			String sql="select * from goods";
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			List<Goods> list=new ArrayList<Goods>();
			while(rs.next()){
				Goods g=new Goods();
				g.setId(rs.getString("id"));
				g.setName(rs.getString("name"));
				g.setPrice(Double.parseDouble(rs.getString("price")));
				g.setImg1(rs.getString("img1"));
				g.setImg2(rs.getString("img2"));
				g.setImg3(rs.getString("img3"));
				g.setImg4(rs.getString("img4"));
				g.setStock(rs.getInt("stock"));
				list.add(g);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(conn, pstmt, rs);
		}
		return null;
	}

	@Override
	public List<Goods> getGoodByName(String goods) {
		Connection conn=this.getConnection();
		String sql="select * from goods where name like ?";
		try {
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, "%"+goods+"%");
			List<Goods> list=new ArrayList<Goods>();
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()){
				Goods g=new Goods();
				g.setId(rs.getString("id"));
				g.setName(rs.getString("name"));
				g.setPrice(Double.parseDouble(rs.getString("price")));
				g.setImg1(rs.getString("img1"));
				g.setImg2(rs.getString("img2"));
				g.setImg3(rs.getString("img3"));
				g.setImg4(rs.getString("img4"));
				g.setStock(rs.getInt("stock"));
				list.add(g);
			}
			closeAll(conn, pstmt, rs);
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}

	@Override
	public int delete(Goods goods) {
		String sql="delete from goods where id=?";
		Object[]obj={goods.getId()};
		return this.executeUpdate(sql, obj);
	}

	@Override
	public int update(Goods goods) {
			String sql="update goods set name=?,price=?,stock=?,img1=?,img2=?,img3=?,img4=? where id=?";
			Object[]obj={goods.getName(),goods.getPrice(),goods.getStock(),goods.getImg1(),goods.getImg2(),goods.getImg3(),goods.getImg4(),goods.getId()};
			return this.executeUpdate(sql, obj);
		}

	@Override
	public int insert(Goods goods) {
		String sql="insert into goods(id,name,price,stock,img1,img2,img3,img4) values(?,?,?,?,?,?,?,?)";
		Object[]obj={goods.getId(),goods.getName(),goods.getPrice(),goods.getStock(),goods.getImg1(),goods.getImg2(),goods.getImg3(),goods.getImg4()};
		return this.executeUpdate(sql, obj);
	}
	
	

}
