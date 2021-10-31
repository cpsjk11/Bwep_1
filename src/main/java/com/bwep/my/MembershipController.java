package com.bwep.my;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import bwep.action.PwCheck;
import bwep.dao.MemDAO;
import bwep.vo.MemVO;

@Controller
public class MembershipController {

	@Autowired
	private MemDAO m_dao;
	
	@RequestMapping(value = "/memberships.my", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Integer> overlap(String m_nick){
		Map<String, Integer> map = new HashMap<String, Integer>();
		// 사용자의 아이디를 가지고 와서 비교한다.
		MemVO vo = m_dao.overlap(m_nick);
		if(vo != null)
			map.put("overlap", 2);
		else if(vo == null)
			map.put("overlap", 1);
		
		return map;
	}
	
	// 비밀번호 확인 함수
	@RequestMapping(value = "/password.my", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Integer> check(String m_pw){
		Map<String, Integer> map = new HashMap<String, Integer>();
		
		// 사용자가 입력한 비밀번호가 우리가 정한 규약의 맞는지 확인하는 클래스 호출!!
		int ck = PwCheck.checkPw(m_pw);
		
		// 이제 숫자 1,2,3 으로 구분지어서 값이 넘어올 것이다 그 값을 보내주자!
		map.put("check", ck);
		
		return map;
	}
	
	
	@RequestMapping("membership.my")
	public String reg() {
		return "membership";
	}
	
	@RequestMapping("/membership_ok.my")
	public ModelAndView userAdd(MemVO vo) {
		ModelAndView mv = new ModelAndView();
		
		int cnt = m_dao.userAdd(vo);
		
		if(cnt > 0)
			mv.setViewName("membership"); // 회원가입 성공시 원래 기존의 페이지 이동!!
		else
			mv.setViewName("redirect:/joinPage.my");
		
		return mv;
	}
	
}
