package com.bwep.my;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import bwep.action.BmiCheck;
import bwep.dao.ReDAO;
import bwep.vo.ReVO;

@Controller
public class BmiController {

	@Autowired
	private ReDAO r_dao;
	
	// 사용자가 입력한 나이 키 몸무게를 기반으로 bmi수치를 계산하는 기능!
	public double bmiCheck(double b_cm, double b_kg, int b_age, ReVO rvo) {
		
		// bmi 계산하는 객체 생성!!
		double bmi = BmiCheck.Calculation(b_cm, b_kg);

		// 계산을 완료하면 bmi결과와 횟수를 DB 에 저장하자!!
		rvo.setR_result(bmi);
		r_dao.resultAdd(rvo);
		
		return bmi;
	}
	
	@RequestMapping("bmi/bmiPage.my")
	public String goBmi() {
		return "bmiPage";
	}
}
