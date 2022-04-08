package com.itwill.user.service;

import com.itwill.command.UserVO;
import com.itwill.command.cartVO;

public interface UserService {
	
	int insert(UserVO vo);
	UserVO login(UserVO vo);
	boolean isValidId(String userId);
	UserVO check(UserVO vo);
	cartVO cartInsert(cartVO co);
	cartVO cartSelect(cartVO co);
}
