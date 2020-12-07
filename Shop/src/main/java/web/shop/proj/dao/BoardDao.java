package web.shop.proj.dao;

import java.util.List;

import javax.annotation.Resource;
 
import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
 
import web.shop.proj.dto.BoardDto;
import web.shop.proj.form.BoardForm;
 
@Repository
public class BoardDao { 
	protected final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Resource(name = "sqlSession")
    private SqlSession sqlSession;
 
    private static final String NAMESPACE = "web.shop.proj.boardMapper";
 
    /** 게시판 - 목록 조회  */
    public List<BoardDto> getBoardList(BoardForm boardForm) throws Exception {        
        return sqlSession.selectList(NAMESPACE + ".getBoardList", boardForm);
    }
    
    /** 게시판 - 조회 수 수정  */
    public int updateBoardHits(BoardForm boardForm) throws Exception {        
        return sqlSession.update(NAMESPACE + ".updateBoardHits", boardForm);
    }
    
    /** 게시판 - 상세 조회  */
    public BoardDto getBoardDetail(BoardForm boardForm) throws Exception {        
        return sqlSession.selectOne(NAMESPACE + ".getBoardDetail", boardForm);
    }
    
    /** 게시판 - 등록  */    
    public int insertBoard(BoardForm boardForm) throws Exception {
        return sqlSession.insert(NAMESPACE + ".insertBoard", boardForm);
    }
    
    /** 게시판 - 삭제  */
    public int deleteBoard(BoardForm boardForm) throws Exception {
        return sqlSession.delete(NAMESPACE + ".deleteBoard", boardForm);
    }
    
    /** 게시판 - 수정  */
    public int updateBoard(BoardForm boardForm) throws Exception {
        
        return sqlSession.update(NAMESPACE + ".updateBoard", boardForm);
    }
}
