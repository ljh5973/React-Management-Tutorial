package com.itwill.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.command.UserVO;
import com.itwill.user.mapper.UserMapper;

@Service("userService")
public class UserServiceImpl implements UserService{

	
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public int join(UserVO vo) {
		
		return userMapper.join(vo);
	}

	
}
