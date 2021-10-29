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
public class MembershipController {

	@Autowired
	private MemDAO m_dao;
	
	@RequestMapping(value = "/membership.my", method = RequestMethod.POST)
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
	
	@RequestMapping("membership.my")
	public String reg() {
		return "membership";
	}
	
}
