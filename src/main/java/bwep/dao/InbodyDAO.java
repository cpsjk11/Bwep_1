package bwep.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class InbodyDAO {

	@Autowired
	private SqlSessionTemplate ss;
	
	// 저장하는 기능
	public int in_add(String m_nick, String i_protein) {
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("m_nick", m_nick);
		map.put("i_protein", i_protein);
		
		return ss.insert("in.in_add", map);
	}
	
	// 검색기능
	public String in_search(String m_nick) {
		return ss.selectOne("in.in_search", m_nick);
	}
}
