package com.wg.mapper;


import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.wg.bean.User;
//userMapper只能传入一个参数,多个的话需要注解

public interface UserMapper {
    //value 必须与Bean 属性一致！
	public User findUserByName(@Param("username") String username);

	public String getUsernameById(@Param("id") int id);	
	
	public void addUser(@Param("username") String username,@Param("password") String password);
	
}
