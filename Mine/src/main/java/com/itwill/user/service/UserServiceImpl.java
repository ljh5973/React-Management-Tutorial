package com.itwill.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.command.UserVO;
import com.itwill.command.cartVO;
import com.itwill.user.mapper.UserMapper;
@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired private UserMapper userMapper;
	
	@Override
	public int insert(UserVO vo) {
		return userMapper.join(vo);
	}
	
	@Override
	public UserVO login(UserVO vo) {
		
		return userMapper.login(vo);
	}
	
	@Override
	public boolean isValidId(String userId) {
		UserVO vo = userMapper.check(userId);
		if(vo == null) {
			return true;
		} else {
			return false;
		}
	}
	
	@Override
	public UserVO check(UserVO vo) {
		return userMapper.check(vo);
	}
	
	@Override
	public cartVO cartInsert(cartVO co) {
		return userMapper.cartInsert(co);
	}

	public cartVO cartSelect(cartVO co) {
		return userMapper.cartSelect(co);
	}
}

