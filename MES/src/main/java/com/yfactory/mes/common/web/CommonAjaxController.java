package com.yfactory.mes.common.web;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.yfactory.mes.common.service.CommonService;

@RestController
public class CommonAjaxController {

	@Autowired private CommonService service;
	
	// 주문서 조회
	@GetMapping("/mainOrdersList")
	public List<Map> mainOrdersList(){
		return service.mainOrdersList();
	}
	
	//완제품 재고 간단조회
	@GetMapping("/mainProdList")
	public List<Map> mainProdList(){
		return service.mainProdList();
	}
	//원자재 재고 간단조회
	@GetMapping("/mainMtrlList")
	public List<Map> mainMtrlList(){
		return service.mainMtrlList();
	}

}