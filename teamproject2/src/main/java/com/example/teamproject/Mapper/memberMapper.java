package com.example.teamproject.Mapper;

import org.apache.ibatis.annotations.Mapper;

import com.example.teamproject.Vo.MemberVo;

@Mapper
public interface memberMapper {

	//마이페이지 이동
	MemberVo memberMypage(String M_ID);

	//개인정보 수정확인
	int member_Modify(MemberVo memberVo);

	//충전페이지 이동
	MemberVo member_charge(String m_ID);

	//포인트 충전
	int member_pointcharge(String m_id, String m_point);

}
