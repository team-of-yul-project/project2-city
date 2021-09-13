package com.example.teamproject.Vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemberVo {

	private int m_No;
	private String m_id;
	private String m_Pw;
	private String m_Name;
	private String m_Nickname;
	private String m_Birth;
	private String m_Gender;
	private String m_Email;
	private String m_Post;
	private String m_Add1;
	private String m_Add2;
	private String m_Phone;
	private String m_Grade;
	private String m_Point;
	private String m_hit;
}
