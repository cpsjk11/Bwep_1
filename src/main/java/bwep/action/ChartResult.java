package bwep.action;

import bwep.vo.ReVO;

public class ChartResult {

	// 사용자의 수치를 받아서 반복문으로 그래프로 표현하자!
	public String getChart(ReVO[] rvo) {
		StringBuffer sb = new StringBuffer("[");
		for(int i = 0; i<rvo.length;i++) {
			sb.append(rvo[i].getR_result());
			if(i != rvo.length-1) 
				sb.append(",");
		}
		sb.append("]");
		return sb.toString();
	}
	
	public double getLastBmiresult(ReVO[] rvo) {
		double bmi = 0;
		int length = 0;
		
		if(rvo == null) {
			length = 1;
			bmi = 0.0;
		}else 
			length = rvo.length;
		
		for(int i=0; i< length; i++) {
		
			
			if(i == length -1 && rvo != null)
				bmi = rvo[i].getR_result();
			
		}
		return bmi;
	}
}
