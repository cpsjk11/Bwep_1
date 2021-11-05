package bwep.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import bwep.vo.ReVO;

@Component
public class ReDAO {
	
	@Autowired
	private SqlSessionTemplate ss;
	
	// bmi값이 나올때 나온값과 사용자의 닉네임 그리고 몇번째 저장하는 횟수를 저장하자!
	public int resultAdd(ReVO rvo) {
		
		int num = num(rvo.getM_nick());
		
		num++;
		
		rvo.setR_num(num);
		return ss.insert("re.add", rvo);
	}
	
	// 사용자가 bmi결과를 몇번 받았는지 반환하는 기능
	public ReVO[] resultNum(String m_nick) {
		
		ReVO[] rvo = null;
		
		
		List<ReVO> list = ss.selectList("re.resultNum", m_nick);
		
		if(list != null && !list.isEmpty()) {
			rvo = new ReVO[list.size()];
			list.toArray(rvo);
		}
		
		return rvo;
	}
	
	// 사용자가 bmi결과를 몇번 받았는지 반환하는 기능
		public int num(String m_nick) {
			return ss.selectOne("re.Num",m_nick);
		}
}
