package com.wg.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	
	@RequestMapping("/logininfo")
	public String logininfo(){
		return "login";
	}
	
	@RequestMapping("/signup")
		public String signup(){
			return "regist";
		}
	@RequestMapping("/product_page")
	public String Productpage(){
		return "product_page";
	}
	
	
	
}


