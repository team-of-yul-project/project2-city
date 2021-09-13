package com.example.teamproject.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.teamproject.Mapper.FManagerMapper;
import com.example.teamproject.Vo.FmanagerVo;

@Service
public class FmanagerServiceImpl implements FmanagerService {

	@Autowired
	FManagerMapper FMMapper;
	
	// 시설관리자 마이페이지 이동
	@Override
	public FmanagerVo FmanagerMypage(String fm_id) {
		
		FmanagerVo fVo = new FmanagerVo();
		fVo = FMMapper.FmanagerMypage(fm_id);
		
		return fVo;
	}

	//시설관리자 정보 수정등록
	@Override
	public int Fm_Modify(FmanagerVo fVo) {
		System.out.println("수정");

		int result = FMMapper.Fm_Modify(fVo);
		
		return result;
	}

}
