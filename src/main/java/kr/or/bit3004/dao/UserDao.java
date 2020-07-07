package kr.or.bit3004.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import kr.or.bit3004.dto.User;

public interface UserDao {
	public int insertUser(User user);
	public int idCheck(String id);
	public int loginCheck(String id, String pwd);
	public int updateUser(User user);
	public int updateUserPwd(String id, String pwd);
	
	public User getUser(String id);
	public List<User> getUserList();
	
	public int deleteUser(String id);
	
	
}
