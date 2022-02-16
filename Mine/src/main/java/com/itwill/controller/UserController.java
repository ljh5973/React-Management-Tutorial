package com.itwill.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.command.UserVO;
import com.itwill.user.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	@Qualifier("userService")
	private UserService userService;
	
	@RequestMapping("/userLogin")
	public String userLogin() {
		return "user/userLogin";
	}
	
	
	@RequestMapping("/userJoin")
	public String userJoin() {
		return "user/userJoin";
	}
	
	@PostMapping("/join")
	public String join(UserVO vo) {
		
		int result=userService.join(vo);
		System.out.println(result);
		
		return "redirect:/user/userLogin";
	}
}
