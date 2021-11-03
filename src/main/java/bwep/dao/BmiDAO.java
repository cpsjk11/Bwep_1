package bwep.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import bwep.vo.BmiVO;

@Component
public class BmiDAO {
	
	@Autowired
	private SqlSessionTemplate ss;
	
	// 사용자의 키 성별 몸무게를 받아서 테이블의 저장하는 기능!
	public int addBmi(BmiVO bvo) {
		return ss.insert("bmi.addBmi", bvo);
	}
}
