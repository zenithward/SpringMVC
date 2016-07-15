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
	
	 //����ѯ�������ݻ��浽myCache��,��ʹ�÷������Ƽ��ϲ����е�userNo��Ϊ�����key  
    //ͨ�����²���ֻ��ˢ�»����е�ĳ��ֵ,����Ϊ��׼ȷ������ض��Ļ���,�ʶ��������Ψһ��key,�Ӷ�����Ӱ����������ֵ  
    public String getUsernameById(int id){  
        System.out.println("���ݿ��в鵽���û���[" + id + "]��Ӧ���û���Ϊ[" + userMapper.getUsernameById(id) + "]");  
        return userMapper.getUsernameById(id);  
    }
    
    public void addUser(String username,String password){
    	userMapper.addUser(username, password);
    }

}
