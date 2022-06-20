package web.shop.proj.service;

import java.util.List;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.shop.proj.dao.BoardDao;
import web.shop.proj.dto.BoardDto;
import web.shop.proj.form.BoardForm;
 
@Service
public class BoardService {
 
    @Autowired
    private BoardDao boardDao;
    protected final Logger logger = LoggerFactory.getLogger(this.getClass());
    /** 게시판 - 목록 조회 */
    public List<BoardDto> getBoardList(BoardForm boardForm) throws Exception {
 
        return boardDao.getBoardList(boardForm);
    }
 
    /** 게시판 - 상세 조회 */
    public BoardDto getBoardDetail(BoardForm boardForm) throws Exception {
 
        BoardDto boardDto = new BoardDto();
 
        String searchType = boardForm.getSearch_type();
 
        if("S".equals(searchType)){
            
            int updateCnt = boardDao.updateBoardHits(boardForm);
        
            if (updateCnt > 0) {
                boardDto = boardDao.getBoardDetail(boardForm);
            }
            
        } else {
            
            boardDto = boardDao.getBoardDetail(boardForm);
        }
 
        return boardDto;
    }
 
    /** 게시판 - 등록 */
    public BoardDto insertBoard(BoardForm boardForm) throws Exception {
 
        BoardDto boardDto = new BoardDto();
 
        int insertCnt = boardDao.insertBoard(boardForm);
 
        if (insertCnt > 0) {
            boardDto.setResult("SUCCESS");
        } else {
            boardDto.setResult("FAIL");
        }
 
        return boardDto;
    }
 
    /** 게시판 - 삭제 */
    public BoardDto deleteBoard(BoardForm boardForm) throws Exception {
 
        BoardDto boardDto = new BoardDto();
 
        int deleteCnt = boardDao.deleteBoard(boardForm);
        
        if (deleteCnt > 0) {
            boardDto.setResult("SUCCESS");
        } else {
            boardDto.setResult("FAIL");
        }
 
        return boardDto;
    }
 
    /** 게시판 - 수정 */
    public BoardDto updateBoard(BoardForm boardForm) throws Exception {
 
        BoardDto boardDto = new BoardDto();
        logger.info(boardForm.getMem_id());
        int updateCnt = boardDao.updateBoard(boardForm);
 
        if (updateCnt > 0) {
            boardDto.setResult("SUCCESS");
        } else {
            boardDto.setResult("FAIL");
        }
 
        return boardDto;
    }
}
