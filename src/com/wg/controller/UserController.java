package com.wg.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.wg.bean.User;
import com.wg.mapper.UserMapper;
import com.wg.service.UserService;

@Controller
public class UserController {

	@Autowired
	//private UserMapper usermapper;
	
	private UserService userService;
	//private UserService userService;

	@RequestMapping(value = "regist", method = RequestMethod.POST)
	public ModelAndView regist(HttpServletRequest request, @RequestParam String username, @RequestParam String password,@RequestParam String repassword) {
		if(password!=repassword){
			 
			return new ModelAndView("regist");
		}
		try {
			userService.addUser(username,password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("username", username);
		request.setAttribute("password", password);
		//System.out.println(user.toString());
		return new ModelAndView("login");
	}

	/***
	 * �û���½
	 * <p>
	 * ע�����ã�ֻ����POST�ύ���÷���
	 * 
	 * @param username
	 * @param password
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request,@RequestParam String username, @RequestParam String password) throws Exception {
		// ��֤���ݹ����Ĳ����Ƿ���ȷ�����򷵻ص���½ҳ�档
		User user_login=userService.findUserByName(username);
		if(user_login!=null){
			if(user_login.getPassword().equals(password)){
				request.getSession().setAttribute("userId", user_login.getId());
				request.getSession().setAttribute("user", username);
				
				ModelAndView mav = new ModelAndView("index-2");
				// ���������ظ�ҳ��
				mav.addObject("username", username);
				mav.addObject("password", password);
				System.out
						.println("username=" + username + " password=" + password);
				return mav;
			}
			
		}
		return new ModelAndView("home");
	}

	@RequestMapping(value = "buy", method = RequestMethod.GET)
	public ModelAndView buy(HttpServletRequest request) throws Exception {
		// ��֤���ݹ����Ĳ����Ƿ���ȷ�����򷵻ص���½ҳ�档
		 String goodID = request.getParameter("goodID");
		 String number = request.getParameter("number");  
		 String price =request.getParameter("price");
		
		
				
				ModelAndView mav = new ModelAndView("checkout");
				// ���������ظ�ҳ��
				mav.addObject("goodID", goodID);
				mav.addObject("number", number);
				mav.addObject("price",price);
				System.out
						.println("goodID=" + goodID + " number=" + number+ " price="+ price);
				
				return mav ;
				
	}
	
	
	/***
	 * ��֤�����Ƿ�Ϊ��
	 * 
	 * @param params
	 * @return
	 */
	private boolean checkParams(String[] params) {
		for (String param : params) {
			if (param == "" || param == null || param.isEmpty()) {
				return false;
			}
		}
		return true;
	}
}
