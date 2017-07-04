package dao;

import java.util.List;

import entity.Cart;

public interface CartDao {
	public int insert(Cart cart);
	public int delete(Cart cart);
	public int update(Cart cart);
	public List<Cart> getAll(Cart cart);
	public List<Cart> getCartByGid(Cart cart);
	

}
