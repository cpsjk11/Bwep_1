package com.bwep.my;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import bwep.action.BmiCheck;
import bwep.dao.BmiDAO;
import bwep.dao.ReDAO;
import bwep.vo.BmiVO;
import bwep.vo.ReVO;

@Controller
public class BmiController {

	@Autowired
	private ReDAO r_dao;
	
	@Autowired
	private BmiDAO b_dao;
	
	// 사용자가 입력한 나이 키 몸무게를 기반으로 bmi수치를 계산하는 기능!
	public double bmiCheck(BmiVO bvo) {
		
		// bmi 계산하는 객체 생성!!
		double bmi = BmiCheck.Calculation(bvo.getB_cm(), bvo.getB_kg());

		// 계산을 완료하면 bmi결과와 횟수를 DB 에 저장하자!!
		ReVO vo = new ReVO();
		vo.setR_result(bmi);
		vo.setM_nick(bvo.getM_nick());
		r_dao.resultAdd(vo);
		
		// 사용자가 입력한 값을 DB에 저장!!
		b_dao.addBmi(bvo);
		
		return bmi;
	}
	
	@RequestMapping("bmiPage.my")
	public String goBmi() {
		return "bmiPage";
	}
}
