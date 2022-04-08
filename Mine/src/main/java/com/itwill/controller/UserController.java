package com.itwill.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwill.command.UserVO;
import com.itwill.command.cartVO;
import com.itwill.user.service.UserService;


@Controller
@RequestMapping("/user")
public class UserController {
	private static final Logger log = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	@Qualifier("userService")
	UserService userService;
	
	@RequestMapping("/userLogin")
	public void userLogin(String url, Model model) {
		log.info("userLogin() GET 호출");
		System.out.println(">>>>> userLogin(url=" + url + ") GET invoked");
		
		// 로그인 페이지가 요청 됐을 때, 로그인 성공 후 이동할 페이지가 질의 문자열에 포함되어 있는 경우
		if(url != null && !url.equals("")) {
			model.addAttribute("url", url); // 로그인 이후 이동할 페이지를 저장.
		}
	}
	
	@PostMapping("/userLogin")
	public void userLogin(UserVO vo, Model model) {
		log.info("userLogin({}) POST 호출", vo);
		System.out.println(">>>>> userLogin(userVO=" + vo + ") POST invoked");
		
		UserVO logInUser = userService.login(vo);
		log.info("logInUser: {}", logInUser); // 로그인 O: not null, 로그인 X: null
		
		// 로그인 여부를 판단할 수 있는 정보를 Model 객체에 속성으로 저장.
		model.addAttribute("logInUser", logInUser);
		
	}

	@RequestMapping("/userJoin")
	public String userJoin() {
		return "user/userJoin";
	}
	
	@PostMapping("/join")
	public String userJoin(UserVO vo) {
		int result = userService.insert(vo);
		System.out.println(result);
		return "redirect:/user/userLogin";
	}
	
	@RequestMapping(value = "userIdCheck", method = RequestMethod.POST)
	@ResponseBody
	public String usercheckId(String userId) {
		if(userService.isValidId(userId)) {
			return "valid";
		} else {
			return "invalid";
		}
	}
	
	@RequestMapping("/logout")
	public String Logout(HttpSession session) {
		session.removeAttribute("loginUserId");
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping("/myPageCheck")
	public String myPageCheck() {
		return "user/myPageCheck";
	}
	
	@RequestMapping(value ="/myPageCheck" ,method=RequestMethod.POST)
	public String checkPw(HttpServletRequest request, @RequestParam("password")String pw) {
		HttpSession session = request.getSession();
		System.out.println(session);
		UserVO userVO= (UserVO)session.getAttribute("loginUserId");
		System.out.println(userVO);
		UserVO result = userService.check(userVO);
		System.out.println(result);
		if(result.getUserPw().equals(pw)) {
			return "user/myPage";
		}else {
			return "redirect:/user/myPageCheck";
		}
	}
	
	@RequestMapping("/myPage")
	public String myPage() {
		return "user/myPage";
	}
	
	@PostMapping("/myPage")
	public String myPage(UserVO vo) {
		int result = userService.insert(vo);
		System.out.println(result);
		return "redirect:/user/myPage";
	}
	
	@RequestMapping("/cart")
	public void cart(cartVO co, Model model) {
		log.info("cart() 호출");
		List<cartVO> list = (List<cartVO>) userService.cartSelect(co);
		model.addAttribute("cartList", list);
	}
	
	@PostMapping("/cart")
	public String cart(cartVO co) {
		cartVO result = userService.cartInsert(co);
		System.out.println(result);
		return "redirect:/user/cart";
	}

}
