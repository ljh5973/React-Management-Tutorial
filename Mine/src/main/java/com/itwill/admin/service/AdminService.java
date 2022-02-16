package com.itwill.admin.service;

import java.util.ArrayList;

import com.itwill.command.FileUploadVO;

public interface AdminService {

	int insert(FileUploadVO vo);

	ArrayList<FileUploadVO> getProductList();
}
