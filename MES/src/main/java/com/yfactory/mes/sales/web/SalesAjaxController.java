package com.yfactory.mes.sales.web;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.yfactory.mes.sales.service.SalesService;

@RestController
public class SalesAjaxController {

	@Autowired private SalesService salesService;
	
	//주문서 조회
	@GetMapping("/salesOrder")
	public List<Map>  selectOrdersList() {
		
		return salesService.selectOrderList();
	}
	
	//주문서 검색
	@GetMapping("/searchOrderList")
	public List<Map> searchOrderList( String pnm, String vnm,
			  String req1, String req2,
			  String res1, String res2, String key) {
		
		return salesService.searchOrderList(pnm, vnm, req1, req2, res1, res2, key);
	}


	@GetMapping("/bomListAjax")
	public List<Map> BomList(){
		return salesService.selectBomList();
	}
	
	//완제품LOT 조회
	@GetMapping("/prodLot")
	public List<Map> prodLot(){
		return salesService.selectProdLotList();
	}
	
	//완제품LOT 검색
	@GetMapping("/searchProdLot")
	public List<Map> searchProdLot(String pnm, String pcd, String fdt1, String fdt2){		
		return salesService.searchProdLotList(pnm, pcd, fdt1, fdt2);
	}
		
	//완제품modal리스트
	@GetMapping("/prodModalList")
	public List<Map> prodModalList(){
		return salesService.prodModalList();
	}
	




}
