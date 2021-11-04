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
		String s = rvo.getM_nick();
		
		rvo.setM_nick("'"+s+"'");
		rvo.setR_num(resultNum(rvo.getM_nick()));
		// 만약 사용자가 bmi를 처음 정보를 저장하는 거라면 r_num의 값이 널이다 그 값을 1로 넣어주자
		if(rvo.getR_num() < 1)
			rvo.setR_num(1);
		
		return ss.insert("re.add", rvo);
	}
	
	// 사용자가 bmi결과를 몇번 받았는지 반환하는 기능
	public int resultNum(String m_nick) {
		return ss.selectOne("re.resultNum", m_nick);
	}
}
