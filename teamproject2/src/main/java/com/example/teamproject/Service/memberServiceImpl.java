package com.example.teamproject.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.teamproject.Mapper.memberMapper;
import com.example.teamproject.Vo.MemberVo;

@Service
public class memberServiceImpl implements memberService {

	@Autowired
	memberMapper memberMapper;
	
	//마이페이지 이동
	@Override
	public MemberVo memberMypage(String M_ID) {

		MemberVo memberVo = new MemberVo();
		
		System.out.println("전"+M_ID);
		
		memberVo = memberMapper.memberMypage(M_ID);
		System.out.println("후");
		
		return memberVo;
	}

	//개인정보 수정 확인
	@Override
	public int member_Modify(MemberVo memberVo) {

		System.out.println("수정");
		System.out.println(memberVo.getM_Email());
		
		int result = memberMapper.member_Modify(memberVo);
		
		return result;
	}

	//충전 페이지 이동
	@Override
	public MemberVo member_charge(String M_ID) {
		
		MemberVo memberVo = new MemberVo();
		
		memberVo = memberMapper.member_charge(M_ID);
		return memberVo;
	}

	//포인트 충전
	@Override
	public int member_pointcharge(String m_id, String m_point) {
		

		int result = memberMapper.member_pointcharge(m_id,m_point);
		
		return result;
	}
	

	
}
