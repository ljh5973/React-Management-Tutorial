package com.itwill.user.mapper;

import com.itwill.command.UserVO;
import com.itwill.command.cartVO;

public interface UserMapper {
	
	int join(UserVO vo);
	UserVO login(UserVO vo);
	UserVO check(String userId);
	UserVO check(UserVO vo);
	cartVO cartInsert(cartVO co);
	cartVO cartSelect(cartVO co);
}
