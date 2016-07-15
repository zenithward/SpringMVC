package com.wg.service;

import java.util.List;

//import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wg.bean.User;
import com.wg.mapper.UserMapper;
import com.wg.service.UserService;

@Service("UserService")

public class UserServiceImpl implements UserService {
	
	@Autowired
	//@Resource
	public UserMapper userMapper;

	public User findUserByName(String username) {
		return userMapper.findUserByName(username);
	}
	
	 //将查询到的数据缓存到myCache中,并使用方法名称加上参数中的userNo作为缓存的key  
    //通常更新操作只需刷新缓存中的某个值,所以为了准确的清除特定的缓存,故定义了这个唯一的key,从而不会影响其它缓存值  
    public String getUsernameById(int id){  
        System.out.println("数据库中查到此用户号[" + id + "]对应的用户名为[" + userMapper.getUsernameById(id) + "]");  
        return userMapper.getUsernameById(id);  
    }
    
    public void addUser(String username,String password){
    	userMapper.addUser(username, password);
    }

}
