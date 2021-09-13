package com.example.teamproject.Service;

import com.example.teamproject.Vo.FmanagerVo;

public interface FmanagerService {

	//시설 관리자 마이 페이지 이동
	FmanagerVo FmanagerMypage(String fm_id);

	//시설 관리자 정보 수정등록
	int Fm_Modify(FmanagerVo fVo);


}
