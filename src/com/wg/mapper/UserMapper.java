package com.wg.mapper;


import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.wg.bean.User;
//userMapperֻ�ܴ���һ������,����Ļ���Ҫע��

public interface UserMapper {
    //value ������Bean ����һ�£�
	public User findUserByName(@Param("username") String username);

	public String getUsernameById(@Param("id") int id);	
	
	public void addUser(@Param("username") String username,@Param("password") String password);
	
}
