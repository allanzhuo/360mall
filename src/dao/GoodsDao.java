package dao;

import java.util.List;

import entity.Goods;


public interface GoodsDao {
	public List<Goods> getGoodById(Goods goods);
	public List<Goods> getAll();
	public List<Goods> getGoodByName(String goods);
	public int delete(Goods goods);
	public int update(Goods goods);
	public int insert(Goods goods);

}
