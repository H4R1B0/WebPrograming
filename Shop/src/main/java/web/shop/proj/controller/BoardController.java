package web.shop.proj.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import web.shop.proj.dto.BoardDto;
import web.shop.proj.dto.CartDto;
import web.shop.proj.dto.MemberDto;
import web.shop.proj.form.BoardForm;
import web.shop.proj.service.BoardService;
 
@Controller
@RequestMapping(value = "/board")
public class BoardController {
	protected final Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private BoardService boardService;
 
    /** 게시판 - 목록 페이지 이동 */
    @RequestMapping( value = "/boardList")
    public String boardList(HttpServletRequest request, HttpServletResponse response) throws Exception{        
        return "board/boardList";
    }
        
    /** 게시판 - 목록 조회  */
    @RequestMapping(value = "/getBoardList")
    @ResponseBody
    public List<BoardDto> getBoardList(HttpServletRequest request, HttpServletResponse response, BoardForm boardForm) throws Exception { 
        List<BoardDto> boardDtoList = boardService.getBoardList(boardForm); 
        return boardDtoList;
    }
    
    /** 게시판 - 상세 페이지 이동 */
    @RequestMapping( value = "/boardDetail")
    public String boardDetail(HttpServletRequest request, HttpServletResponse response) throws Exception{        
        return "board/boardDetail";
    }    
    
    /** 게시판 - 상세 조회  */
    @RequestMapping(value = "/getBoardDetail")
    @ResponseBody
    public BoardDto getBoardDetail(HttpServletRequest request, HttpServletResponse response, BoardForm boardForm) throws Exception { 
        BoardDto boardDto = boardService.getBoardDetail(boardForm); 
        return boardDto;
    }
    
    /** 게시판 - 작성 페이지 이동 */
    @RequestMapping( value = "/boardWrite")
    public String boardWrite(HttpSession session, HttpServletRequest request, HttpServletResponse response) throws Exception{
    	MemberDto memberDto = (MemberDto)session.getAttribute("member");
		if(memberDto==null) {
			//logger.info("로그인 안됨");
			return "/member/login";
		}
        return "board/boardWrite";
    }
    
    /** 게시판 - 등록 */
    @RequestMapping( value = "/insertBoard")
    @ResponseBody
    public BoardDto insertBoard(HttpSession session, BoardForm boardForm) throws Exception{
    	MemberDto memberDto = (MemberDto)session.getAttribute("member");    	
    	logger.info("1234" + boardForm.getMem_id());
    	BoardDto boardDto = boardService.insertBoard(boardForm); 
    	//logger.info("1234" + boardDto.getMem_id());
        return boardDto;
    }
    
    /** 게시판 - 삭제 */
    @RequestMapping( value = "/deleteBoard")
    @ResponseBody
    public BoardDto deleteBoard(HttpServletRequest request, HttpServletResponse response, BoardForm boardForm) throws Exception{
        BoardDto boardDto = boardService.deleteBoard(boardForm);        
        return boardDto;
    }
    
    /** 게시판 - 수정 페이지 이동 */
    @RequestMapping( value = "/boardUpdate")
    public String boardUpdate(HttpSession session, HttpServletRequest request, HttpServletResponse response) throws Exception{
    	MemberDto memberDto = (MemberDto)session.getAttribute("member");    	
    	if(memberDto!=null) { 
            //로그인한 상태이면 실행
           return "/board/boardUpdate";
        }else { //로그인하지 않은 상태
        	logger.info("1234");
            return "/member/login";
            //로그인을 하지 않았으면 로그인 페이지로 이동시킨다.
        }
        
    }
    
    /** 게시판 - 수정 */
    @RequestMapping( value = "/updateBoard")
    @ResponseBody
    public BoardDto updateBoard(HttpServletRequest request, HttpServletResponse response, BoardForm boardForm) throws Exception{
        
        BoardDto boardDto = boardService.updateBoard(boardForm);
        
        return boardDto;
    }
}
