package com.Model;

public class EmpModel {
	int eid;
	String ename;
	String mail;
	String Password;
	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public EmpModel(int eid, String ename, String mail, String password) {
		
		this.eid = eid;
		this.ename = ename;
		this.mail = mail;
		Password = password;
	}
	public EmpModel() {
		
	}
	@Override
	public String toString() {
		return "EmpModel [eid=" + eid + ", ename=" + ename + ", mail=" + mail + ", Password=" + Password + "]";
	}

	
	
}
