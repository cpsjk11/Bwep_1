package com.bwep.my;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import bwep.action.BmiCheck;
import bwep.action.ChartResult;
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
	
	@Autowired
	private HttpSession session;
	
	// 사용자가 입력한 나이 키 몸무게를 기반으로 bmi수치를 계산하는 기능!
	@RequestMapping("/bmi.my")
	public ModelAndView bmiCheck(BmiVO bvo) {
		
		ModelAndView mv = new ModelAndView();
		
		// bmi 계산하는 객체 생성!!
		double bmi = BmiCheck.Calculation(bvo.getB_cm(), bvo.getB_kg());
		ReVO vo = new ReVO(); 
		 vo.setR_result(bmi); 
		 vo.setM_nick(bvo.getM_nick());
		 r_dao.resultAdd(vo);
		
		//System.out.println(chart);
		// 계산을 완료하면 bmi결과와 횟수를 DB 에 저장하자!!
		b_dao.addBmi(bvo);
		ReVO[] rvo = r_dao.resultNum(bvo.getM_nick());
		
		ChartResult result = new ChartResult();
		String chart = result.getChart(rvo);
		double bmis = result.getLastBmiresult(rvo);
		
		session.removeAttribute("bmi");
		session.setAttribute("bmi", bmis);
		
		// 사용자가 입력한 값을 DB에 저장!!
		mv.addObject("chart", chart);
		mv.addObject("bmi", bmi);
		mv.setViewName("bmiPage");
		
		
		
		return mv;
	}
	
	@RequestMapping("bmiPage.my")
	public String goBmi(Model m, String m_nick) {
		ReVO[] rvo = r_dao.resultNum(m_nick);
		 ChartResult result = new ChartResult();
		 String chart = result.getChart(rvo);
		 m.addAttribute("chart", chart);
		return "bmiPage";
	}
	
	
}
