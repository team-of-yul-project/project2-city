package com.example.teamproject.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.teamproject.Service.memberService;
import com.example.teamproject.Vo.MemberVo;

@Controller
public class member_Controller {

	@Autowired
	memberService memberService;
	
	//회원 메인페이지 이동
	@GetMapping("member_Main")
	public String member_Main() {
		
		
		return "/member/member_Main";
	}

	//회원 마이페이지 이동
	@GetMapping("member_mypage")
	public String member_Register(HttpSession session,Model model) {
		
		String M_ID = (String)session.getAttribute("session_id");
		
		System.out.println("test");
		System.out.println(M_ID);
		MemberVo memberVo = new MemberVo();
		
		memberVo = memberService.memberMypage(M_ID);
		
		model.addAttribute("memberVo", memberVo);

		return "/member/member_mypage";
	}
	
	//회원 정보 수정 페이지 이동
	@GetMapping("member_Modify")
	public String member_Modify(HttpSession session,Model model) {
		
		String M_ID = (String)session.getAttribute("session_id");
		
		System.out.println("수정");
		System.out.println(M_ID);
		
		MemberVo memberVo = new MemberVo();
		
		memberVo = memberService.memberMypage(M_ID);
		
		model.addAttribute("memberVo", memberVo);
		
		return "/member/member_Modify";
	}
	
	//회원 정보 수정 등록
	@PostMapping("member_Modify")
	public String member_Modify(HttpServletRequest request,Model model) {

		
		MemberVo memberVo = new MemberVo();

		
		
		String m_id = request.getParameter("m_id");
		String m_Name = request.getParameter("m_Name");
		String m_Nickname = request.getParameter("m_Nickname");
		String birth1 = request.getParameter("birth1");
		String birth2 = request.getParameter("birth2");
		String birth3 = request.getParameter("birth3");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String post = request.getParameter("post");
		String add1 = request.getParameter("add1");
		String add2 = request.getParameter("add2");
		String phone = request.getParameter("phone");
		
		memberVo.setM_id(m_id);
		memberVo.setM_Name(m_Name);
		memberVo.setM_Nickname(m_Nickname);
		memberVo.setM_Birth(birth1+birth2+birth3);
		memberVo.setM_Gender(gender);
		memberVo.setM_Email(email);
		memberVo.setM_Post(post);
		memberVo.setM_Add1(add1);		
		memberVo.setM_Add2(add2);		
		memberVo.setM_Phone(phone);		
		
		System.out.println("성별"+memberVo.getM_Gender());
		
		int result = memberService.member_Modify(memberVo);
		
		System.out.println("result 타입 "+result);
		
		model.addAttribute("result", result);
		
		return "/member/member_Modify";
	}
	

	//회원 1대1문의 현황 게시판
	@GetMapping("member_qua")
	public String member_qua() {
		
		return "/member/member_qua";
	}
	
	//회원 포인트 충전페이지
	@GetMapping("member_charge")
	public String member_charge(HttpSession session,Model model) {
		
		String M_ID = (String)session.getAttribute("session_id");

		MemberVo memberVo = new MemberVo();
		
		memberVo = memberService.member_charge(M_ID);
		
		model.addAttribute("memberVo", memberVo);
		
		return "/member/member_charge";
	}
	
	//회원 포인트 충전
	@PostMapping("member_charge")
	public String member_charge(@RequestParam (value = "point") int Point1,
			@RequestParam (value = "m_Point") String Point2,
			@RequestParam (value = "m_id") String m_id,
			Model model
			) {
		
		 int point3 =  Integer.parseInt(Point2);
		 
		 int chargepoint = Point1+point3;
		 String m_point = Integer.toString(chargepoint);
		
		 int result = memberService.member_pointcharge(m_id,m_point);
		
		return "redirect:member_charge";
	}
	
	//회원 예약 정보 확인
	@GetMapping("member_reserve")
	public String member_reserve() {
		
		return "/member/member_reserve";
	}
	

}
