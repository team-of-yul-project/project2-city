package com.example.teamproject.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.teamproject.Service.FmanagerService;
import com.example.teamproject.Vo.FmanagerVo;

@Controller
public class fac_admin_controller {
	
	@Autowired
	FmanagerService FMService;

	//시설 관리자 메인화면
	@GetMapping("fm_main")
	public String fm_main() {
		return "/fac_admin/fm_main";
	}
	
	//시설 관리자 예약 취소 목록
	@GetMapping("fac_cancel")
	public String fac_cancel() {
		return "/fac_admin/fac_cancel";
	}
	
	//시설 관리자 후기 댓글 모음
	@GetMapping("fac_comment")
	public String fac_comment() {
		return "/fac_admin/fac_comment";
	}
	
	//시설 관리자 시설 목록 현황
	@GetMapping("fac_list")
	public String fac_list() {
		return "/fac_admin/fac_list";
	}
	
	//시설 관리자 시설 수정 현황
	@GetMapping("fac_modify")
	public String fac_modify() {
		return "/fac_admin/fac_modify";
	}
	
	//시설 관리자 문의 현황
	@GetMapping("fac_qna")
	public String fac_qna() {
		return "/fac_admin/fac_qna";
	}
	
	//시설 관리자 시설 등록 페이지
	@GetMapping("fac_register")
	public String fac_register() {
		return "/fac_admin/fac_register";
	}
	
	//시설 관리자 예약 목록 현황
	@GetMapping("fac_reserve")
	public String fac_reserve() {
		return "/fac_admin/fac_reserve";
	}
	
	//시설 관리자 시설 뷰 페이지
	@GetMapping("fac_view")
	public String fac_view() {
		return "/fac_admin/fac_view";
	}
	
	//시설 관리자 정보 수정페이지
	@GetMapping("fm_modify")
	public String fm_modify(FmanagerVo fVo, HttpSession session, Model model) {

		String fm_id = (String)session.getAttribute("session_id");
		System.out.println("수정: " + fm_id);
		
		fVo = FMService.FmanagerMypage(fm_id);
		
		model.addAttribute("fVo", fVo);
		
		return "/fac_admin/fm_modify";
	}
	
	//시설 관리자 정보 수정페이지
	@PostMapping("fm_modify")
	public String fm_modify(FmanagerVo fVo, HttpServletRequest request, Model model) {
		
		String fm_id = request.getParameter("fm_id");
		String fm_name = request.getParameter("fm_name");
		String fm_add1 = request.getParameter("fm_add1");
		String fm_phone = request.getParameter("fm_phone");
		String fm_cor_num = request.getParameter("fm_cor_num");
		
		fVo.setFm_id(fm_id);
		fVo.setFm_name(fm_name);
		fVo.setFm_add1(fm_add1);
		fVo.setFm_phone(fm_phone);
		fVo.setFm_cor_num(fm_cor_num);
		
		int result = FMService.Fm_Modify(fVo);
		model.addAttribute("result", result);
		
		return "/fac_admin/fm_modify";
	}
	
	//시설 관리자 정산페이지
	@GetMapping("fm_money")
	public String fm_money() {
		return "/fac_admin/fm_money";
	}
	
	//시설 관리자 정보 마이 페이지
	@GetMapping("fm_mypage")
	public String fm_mypage(FmanagerVo fVo, HttpSession session, Model model) {
		
		String fm_id = (String)session.getAttribute("session_id");
		System.out.println("테스트: " + fm_id);
		
		fVo = FMService.FmanagerMypage(fm_id);
		
		model.addAttribute("fVo", fVo);
		
		return "/fac_admin/fm_mypage";
	}
}
