package net.member.db;

public class MemberBean {
	private String ID;
	private String PASSWORD;
	private String EMAIL;
	private int ORDERNO;
	private String PAYDAY;
	private String LECTURE;
	private String PAY;
	private String PAYWAY;
	private String STATUS;
	
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public String getPASSWORD() {
		return PASSWORD;
	}
	public void setPASSWORD(String pASSWORD) {
		PASSWORD = pASSWORD;
	}
	public String getEMAIL() {
		return EMAIL;
	}
	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}
	public int getORDERNO() {
		return ORDERNO;
	}
	public void setORDERNO(int oRDERNO) {
		ORDERNO = oRDERNO;
	}
	public String getPAYDAY() {
		return PAYDAY;
	}
	public void setPAYDAY(String pAYDAY) {
		PAYDAY = pAYDAY;
	}
	public String getLECTURE() {
		return LECTURE;
	}
	public void setLECTURE(String lECTURE) {
		LECTURE = lECTURE;
	}
	public String getPAY() {
		return PAY;
	}
	public void setPAY(String pAY) {
		PAY = pAY;
	}
	public String getPAYWAY() {
		return PAYWAY;
	}
	public void setPAYWAY(String pAYWAY) {
		PAYWAY = pAYWAY;
	}
	public String getSTATUS() {
		return STATUS;
	}
	public void setSTATUS(String sTATUS) {
		STATUS = sTATUS;
	}
}
