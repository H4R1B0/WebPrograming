package web.shop.proj.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.shop.proj.form.MemberForm;
import web.shop.proj.common.SHA256Util;
import web.shop.proj.dao.MemberDao;
import web.shop.proj.dto.MemberDto;

@Service
public class MemberService {
	@Autowired
    private MemberDao memberDao;
	protected final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	/** 회원가입 */
    public void register(MemberForm memberForm) throws Exception {
    	String salt = SHA256Util.generateSalt();
    	memberForm.setMem_salt(salt);
    	
    	String password = memberForm.getMem_pw();
    	password = SHA256Util.getEncrypt(password, salt);
    	
    	memberForm.setMem_pw(password);
    	memberDao.register(memberForm);
    }
    
    /** 로그인 */
    public MemberDto login(MemberForm memberForm) throws Exception {
    	String salt = memberDao.getSaltId(memberForm.getMem_id());
    	String password = memberForm.getMem_pw();
    	
    	password = SHA256Util.getEncrypt(password, salt);
    	memberForm.setMem_pw(password);
    	
    	return memberDao.login(memberForm);
    }
    
    /** 아이디 중복확인 */
  	public int idCheck(String id) throws Exception { 
  		int cnt = memberDao.idCheck(id);
  		logger.info("cnt " + cnt);
  		return cnt;
  	}
}
