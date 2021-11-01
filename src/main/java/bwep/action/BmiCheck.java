package bwep.action;

public class BmiCheck {
	
	
	public static double Calculation(double b_cm, double b_kg) {
		
		// 키를 받은 값을 작게 만들어야 한다!! ex) 170 = 1.7
		b_cm = b_cm * 0.01;
		b_cm = Math.round(b_cm*100)/100.0;
		
		double bmi = b_kg / (b_cm*b_cm);
		
		bmi = Math.round(bmi*100)/100.0; // 두번째 자리까지만 표현한다!!
		
		return bmi;
	}
	
	
}
