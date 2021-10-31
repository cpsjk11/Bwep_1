package com.bwep.my;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import bwep.dao.MemDAO;
import bwep.vo.MemVO;

@Controller
public class LoginController {

	@Autowired
	private MemDAO m_dao;
	
	// 로그인 기능 비 동기식!!!
	@RequestMapping(value="/login.my",method = RequestMethod.POST)
	@ResponseBody
	public Map<String, String> login(String m_nick, String m_pw){
		// 반환객체 생성
		Map<String, String> map = new HashMap<String, String>();
		
		MemVO mvo = m_dao.login(m_nick, m_pw);
		if(mvo != null) {
			// 로그인 성공시!!
			map.put("success", m_nick);
			map.put("value", "1");
		}else {
			// 로그인 실패시!!
			map.put("fail", "아이디 혹은 비밀번호가 틀렸습니다.");
			map.put("value", "2");
		}
		
		return map;
	}
	
}
