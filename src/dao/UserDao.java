package dao;

import java.util.List;

import entity.User;

public interface UserDao {
	public int insert(User user);
	public int update(User user);
	public int delete(User user);
	public List<User> getAll();   //查询全部
	public User findUser(User user);//用于登陆判断
	public List<User> getUserByName(String user);

}
