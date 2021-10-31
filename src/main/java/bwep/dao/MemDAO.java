package bwep.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;

import bwep.vo.MemVO;

@Component
public class MemDAO {

	
	@Autowired
	private SqlSessionTemplate ss;
	
	// 아이디 비동기식 중복확인
	public MemVO overlap(String m_nick) {
		MemVO mvo = ss.selectOne("mem.overlap", m_nick);
		
		return mvo; 
	}
	
	// 회원가입 기능!!
	public int userAdd(MemVO mvo) {
		return ss.insert("mem.userAdd", mvo);
	}
	
	// 로그인 기능!!
	public MemVO login(String m_nick, String m_pw) {
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("m_nick", m_nick);
		map.put("m_pw", m_pw);
		
		MemVO mvo = ss.selectOne("mem.login", map);
		return mvo;
	}
}
