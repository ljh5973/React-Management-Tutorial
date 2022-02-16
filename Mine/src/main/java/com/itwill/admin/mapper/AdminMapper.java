package com.itwill.admin.mapper;

import java.util.ArrayList;

import com.itwill.command.FileUploadVO;

public interface AdminMapper {

	
	int insert(FileUploadVO vo);

	ArrayList<FileUploadVO> getProductList();
}
