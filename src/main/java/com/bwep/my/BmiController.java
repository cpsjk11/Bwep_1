package com.bwep.my;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import bwep.action.BmiCheck;

@Controller
public class BmiController {

	
	// 사용자가 입력한 나이 키 몸무게를 기반으로 bmi수치를 계산하는 기능!
	public double bmiCheck(double b_cm, double b_kg, int b_age) {
		
		// bmi 계산하는 객체 생성!!
		double bmi = BmiCheck.Calculation(b_cm, b_kg);
		
		
		return bmi;
	}
}
