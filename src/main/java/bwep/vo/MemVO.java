package bwep.vo;

import java.util.List;

public class MemVO {
	
	private String m_nick, m_pw, m_gender;
	
	private List<BmiVO> b_list;

	public String getM_nick() {
		return m_nick;
	}

	public void setM_nick(String m_nick) {
		this.m_nick = m_nick;
	}

	public String getM_pw() {
		return m_pw;
	}

	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}

	public String getM_gender() {
		return m_gender;
	}

	public void setM_gender(String m_gender) {
		this.m_gender = m_gender;
	}

	public List<BmiVO> getB_list() {
		return b_list;
	}

	public void setB_list(List<BmiVO> b_list) {
		this.b_list = b_list;
	}
	
	
	
}
