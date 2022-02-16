package com.itwill.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.itwill.admin.service.AdminService;
import com.itwill.command.FileUploadVO;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	@Qualifier("adminService")
	AdminService adminService;

	
	@RequestMapping("/adminpage")
	public String adminPage() {
		
		return "admin/adminpage";
	}

	//상품목록 조회요청
	
	@ResponseBody
	@RequestMapping(value="/getProductList", method=RequestMethod.GET)
	public ArrayList<FileUploadVO> getProductList(){
		return adminService.getProductList();
	}
	
	// 상품 등록 요청
	@ResponseBody
	@RequestMapping(value="registProduct", method=RequestMethod.POST)
	public String registProduct(@RequestParam("pName") String pName,
								@RequestParam("pCategory") String pCategory,
								@RequestParam("pTitle") String pTitle,
								@RequestParam("pBrand") String pBrand,
								@RequestParam("uniqueName") String uniqueName,
								@RequestParam("price") String price,
								@RequestParam("pDetail") String pDetail,
								@RequestParam("file") MultipartFile file)
	{	
		
		try {
			
	
		// 업로드별 날짜 폴더 생성
		Date date=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyymmdd");
		
		String uploadDate=sdf.format(date);
		
		File folder = new File(GLOBAL_LOCAL.UPLOAD_PATH);
		
		if(!folder.exists()) {// 폴더가 없으면
			folder.mkdir(); // 폴더 생성
		}
		
		// 파일명
		String fileRealName= file.getOriginalFilename();
		System.out.println("fileRealName : " + fileRealName);
		
		// 사이즈
		Long size = file.getSize();
		System.out.println("size : "+ size);
		
		
		// 저장된 전체 경로
		String uploadPath= folder.getPath();
		
		System.out.println("uploadPath : " + uploadPath);
		
		// 확장자
		String fileExtention = fileRealName.substring(fileRealName.lastIndexOf("."), fileRealName.length()); // 확장자 추출
		System.out.println("fileExtention : "+ fileExtention);
		UUID uuid= UUID.randomUUID();
		
		System.out.println("uuid : "+ uuid);
		String uuids=uuid.toString().replaceAll("-", ""); // 가짜 파일명
		System.out.println("uuids : " + uuids);
		String p_imgAddr= uploadDate+uuids+fileExtention;
		System.out.println("p_imgAddr : "+ p_imgAddr);
		
		File saveFile = new File(uploadPath+"\\"+p_imgAddr);
		System.out.println("saveFile : "+ saveFile);
		// TODO transferTo 파일 업로드 처리
		file.transferTo(saveFile);
		
		FileUploadVO vo=new FileUploadVO(null, pCategory, pName, pTitle, pBrand, uniqueName, price, pDetail, p_imgAddr, null);
		int result=adminService.insert(vo);
		
		System.out.println("result : " + result);
		if(result==1) {
			return "success";
		}else {
			return "fail";
		}
		
		} catch (NullPointerException e) {
			return "idFail";
		}catch(Exception e) {
			
			return "fail";
		}
	}
	
}
