package com.example.teamproject.Mapper;

import org.apache.ibatis.annotations.Mapper;

import com.example.teamproject.Vo.FmanagerVo;

@Mapper
public interface FManagerMapper {

	// 시설관리자 마이페이지 이동
	FmanagerVo FmanagerMypage(String fm_id);

	//시설 관리자 정보 수정등록
	int Fm_Modify(FmanagerVo fVo);

}
