package com.wg.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import com.wg.bean.User;

@Repository("UserDao")
public interface UserDao {
	 public List<User> getUser(); 
	
	 public User getUser(User user);
	 
	
	 public void insertUser(User user);
	
	 public int updateUser(User user);
	
	 public int deleteUser(Long id);
	
	 
}
