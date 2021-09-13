package com.example.teamproject.Service;

import com.example.teamproject.Vo.MemberVo;

public interface memberService {

	//마이페이지 이동
	MemberVo memberMypage(String M_ID);

	//개인정보 수정등록
	int member_Modify(MemberVo memberVo);

	//충전 페이지 이동
	MemberVo member_charge(String m_ID);

	//포인트 충전
	int member_pointcharge(String m_id, String m_point);

}
