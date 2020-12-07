package web.shop.proj.dao;

import java.util.List;

//오류떴었음...
import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ResponseBody;

import web.shop.proj.dto.MemberDto;

@Repository
public class MemberDao {
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	protected final Logger logger = LoggerFactory.getLogger(this.getClass());
	private static final String NAMESPACE = "web.shop.proj.memberMapper";
	
	/** 회원가입  */    
    public void register(MemberDto memberDto) throws Exception {
        sqlSession.insert(NAMESPACE + ".register", memberDto);
    }
    
    /** 로그인  */    
    public MemberDto login(MemberDto memberDto) throws Exception {
        return sqlSession.selectOne(NAMESPACE + ".login", memberDto);
    }
    
    /** 아이디 중복확인  */
    public int idCheck(String id) throws Exception {
    	int cnt = sqlSession.selectOne(NAMESPACE + ".idcheck", id);
    	logger.info("cnt " + cnt);
        return cnt;
    }
}
