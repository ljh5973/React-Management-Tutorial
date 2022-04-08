package com.itwill.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/product")
public class ProductController {

//	@Autowired
//	@Qualifier("productService");

	@RequestMapping("/detail")
	public String detail() {
		return "product/detail";
	}
	
	@RequestMapping("/payment")
	public String payment() {
		return "product/payment";
	}
}
