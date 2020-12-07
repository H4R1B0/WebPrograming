package web.shop.proj.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.shop.proj.dao.MemberDao;
import web.shop.proj.dto.MemberDto;

@Service
public class MemberService {
	@Autowired
    private MemberDao memberDao;
	protected final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	/** 회원가입 */
    public void register(MemberDto memberDto) throws Exception { 
    	memberDao.register(memberDto);
    }
    
    /** 로그인 */
    public MemberDto login(MemberDto memberDto) throws Exception { 
    	return memberDao.login(memberDto);
    }
    
    /** 아이디 중복확인 */
  	public int idCheck(String id) throws Exception { 
  		int cnt = memberDao.idCheck(id);
  		logger.info("cnt " + cnt);
  		return cnt;
  	}
}
