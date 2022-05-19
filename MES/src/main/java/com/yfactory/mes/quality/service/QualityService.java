package com.yfactory.mes.quality.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

public interface QualityService {
	// 조회
	// 자재 품질검사요청(modal)
	List<Map> selectpoDtlRequest();
	
	// 제품 품질검사요청(modal)
	
	// 자재 품질검사관리
	List<Map> selectMtCheckMgr();
	
	// 제품 품질검사관리
	
	// 자재 검사결과
	List<Map> selectMtCheck();
	
	// 제품 검사결과
	
	// 자재 불량내역
	List<Map> selectMtErrList();
	
	// 제품 불량내역
	
	// ------------------------------------------------
	
	// 검색
	// 자재 품질검사요청(modal)
	List<Map> searchpoDtlRequest();
	
	// 자재품질결과
	List<Map> searchMtQuality( Date startDate, Date endDate, String mtName);
	
	// 제품품질결과
	List<Map> searchProdQuality(String prodName);
	
	// 자재불량내역
	List<Map> searchMtErrList(String errDtl, String mtName);
	
	// 제품불량내역
	List<Map> searchProdErrList(String errDtl, String prodName);
	
	// ------------------------------------------------
	
	// 입력
	// 자재 품질검사요청
	
	// 제품 품질검사요청
	
	// ------------------------------------------------
	
	// 수정
	// 자재 품질검사
	
	// 제품 품질검사
}
