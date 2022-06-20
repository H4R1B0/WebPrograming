package web.shop.proj.dto;

import java.util.Date;

public class MemberDto {
 
	String mem_id;
    String mem_pw;
    String mem_name;
    String mem_email;
    String mem_phonenum;
    
    String result;

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getMem_pw() {
		return mem_pw;
	}

	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public String getMem_email() {
		return mem_email;
	}

	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}

	public String getMem_phonenum() {
		return mem_phonenum;
	}

	public void setMem_phonenum(String mem_phonenum) {
		this.mem_phonenum = mem_phonenum;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	
}
