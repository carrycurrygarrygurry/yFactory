package com.yfactory.mes.mtrl.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.yfactory.mes.mtrl.mapper.MtrlMapper;
import com.yfactory.mes.mtrl.mapper.MtrlService;
import com.yfactory.mes.proc.vo.PrdtPlVO;

public class MtrlServiceImpl implements MtrlService {
	
	@Autowired MtrlMapper map;
	
	@Override
	public List<PrdtPlVO> selectPl(PrdtPlVO vo) {
		
		return map.selectPl(vo);
	}

}
