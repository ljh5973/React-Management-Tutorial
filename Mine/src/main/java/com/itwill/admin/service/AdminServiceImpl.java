package com.itwill.admin.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.admin.mapper.AdminMapper;
import com.itwill.command.FileUploadVO;

@Service("adminService")
public class AdminServiceImpl implements AdminService{

	
	@Autowired
	private AdminMapper adminMapper;
	
	
	@Override
	public int insert(FileUploadVO vo) {
		return adminMapper.insert(vo);
	}
	
	@Override
	public ArrayList<FileUploadVO> getProductList() {
		// TODO Auto-generated method stub
		return adminMapper.getProductList();
	}
}
