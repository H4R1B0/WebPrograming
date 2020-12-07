package web.shop.proj.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import web.shop.proj.dao.MemberDao;
import web.shop.proj.dto.MemberDto;
import web.shop.proj.service.MemberService;

@Controller
@RequestMapping(value = "/member/*")
public class MemberController {

	@Autowired
    private MemberService memberService;
	protected final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	/** 회원가입 get */
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void getRegister() throws Exception {
		logger.info("get register");
		
	}
	
	/** 회원가입 post */
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String postRegister(MemberDto memberDto) throws Exception {
		logger.info("post register");
		
		memberService.register(memberDto);
		
		return "redirect:/member/login"; //회원가입 후에 로그인 화면으로 이동
	}
	
	/** 로그인 get */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void login() throws Exception {
		logger.info("get login");
		
	}
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(MemberDto memberDto, HttpServletRequest req, RedirectAttributes rttr) throws Exception{
		logger.info("post login");
		
		HttpSession session = req.getSession();
		MemberDto login = memberService.login(memberDto);
		
		if(login == null) {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
			return "redirect:/member/register";
		}else {
			session.setAttribute("member", login);
		}
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		
		session.invalidate();
		
		return "redirect:/";
	}
	
	//id 중복확인
	@RequestMapping(value = "/idcheck", method = RequestMethod.POST)
	@ResponseBody
	public int idcheck(@RequestBody String paramData) throws Exception{
		int cnt = memberService.idCheck(paramData);
		logger.info("cnt " + cnt);
		return cnt;
	}
}
