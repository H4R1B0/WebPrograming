package web.shop.proj.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
 
import web.shop.proj.dto.BoardDto;
import web.shop.proj.form.BoardForm;
import web.shop.proj.service.BoardService;
 
@Controller
@RequestMapping(value = "/error")
public class EtcController {
 
    /** 오류페이지 이동 */
    @RequestMapping( value = "/error-404")
    public String goError404(HttpServletRequest request, HttpServletResponse response) throws Exception{
        
        return "/error/error-404";
    }
}
