package web.shop.proj.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import web.shop.proj.dto.CartDto;
import web.shop.proj.dto.MemberDto;
import web.shop.proj.form.CartForm;
import web.shop.proj.service.CartService;

@Controller
@RequestMapping(value = {"/cart", "/salad","/lunchbox"})
public class CartController {

	@Autowired
    private CartService cartService;
	protected final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	/** 장바구니  - 목록 페이지 이동 */
	/**@RequestMapping( value = "/cartList")
    public String CartList(HttpServletRequest request, HttpServletResponse response) throws Exception{        
        return "cart/cartList";
    }
	*/
	/** 장바구니  - 목록 조회 */
	/**@RequestMapping(value = "/getCartList")
    @ResponseBody
    public List<CartDto> getCartList(HttpServletRequest request, HttpServletResponse response, CartForm cartForm) throws Exception { 
        List<CartDto> cartDtoList = cartService.getCartList(cartForm);
        return cartDtoList;
    }
	*/
	
	/** 샐러드 리스트  - 목록 페이지 이동 */
	@RequestMapping( value = "/salad-list")
    public String CartList(HttpServletRequest request, HttpServletResponse response) throws Exception{        
        return "/salad/salad-list";
    }
	/** 런치박스 리스트  - 목록 페이지 이동 */
	@RequestMapping( value = "/lunchbox-list")
    public String lunchboxList(HttpServletRequest request, HttpServletResponse response) throws Exception{        
        return "/lunchbox/lunchbox-list";
    }
	
	/** 샐러드 1 - 페이지 이동 */
	@RequestMapping( value = "/salad_1")
    public String go_salad_1(HttpServletRequest request, HttpServletResponse response) throws Exception{        
        return "/salad/salad_1";
    }	
	/** 샐러드 2 - 페이지 이동 */
	@RequestMapping( value = "/salad_2")
    public String go_salad_2(HttpServletRequest request, HttpServletResponse response) throws Exception{        
        return "/salad/salad_2";
    }	
	/** 샐러드 3 - 페이지 이동 */
	@RequestMapping( value = "/salad_3")
    public String go_salad_3(HttpServletRequest request, HttpServletResponse response) throws Exception{        
        return "/salad/salad_3";
    }
	/** 런치박스 1 - 페이지 이동 */
	@RequestMapping( value = "/lunchbox_1")
    public String go_lunchbox_1(HttpServletRequest request, HttpServletResponse response) throws Exception{        
        return "/lunchbox/lunchbox_1";
    }	
	/** 런치박스 2 - 페이지 이동 */
	@RequestMapping( value = "/lunchbox_2")
    public String go_lunchbox_2(HttpServletRequest request, HttpServletResponse response) throws Exception{        
        return "/lunchbox/lunchbox_2";
    }	
	/** 런치박스 3 - 페이지 이동 */
	@RequestMapping( value = "/lunchbox_3")
    public String go_lunchbox_3(HttpServletRequest request, HttpServletResponse response) throws Exception{        
        return "/lunchbox/lunchbox_3";
    }
	/** 샐러드,런치박스 - 장바구니 추가*/
   @RequestMapping( value = {"/insertSalad","/insertlunchbox"}, method = RequestMethod.POST)
   public String insertSalad(CartDto cartDto, HttpSession session) throws Exception{    
      MemberDto memberDto = (MemberDto)session.getAttribute("member");
      if(memberDto==null) {
         return "/member/login";
      }      
      String mem_id= memberDto.getMem_id();
      int cart_id = cartDto.getCart_id();
      logger.info("cart_id" + cart_id);
      cartDto.setMem_id(mem_id);//Mem id
      cartDto.setCart_id(cart_id);
      cartService.insertCart(cartDto);
      //logger.info("1234" + cartDto.getCart_id());
      
      return "redirect:/cart/cartList";//cartlist로 변경할것                
   }
	/** 장바구니  - 목록 페이지 이동 */
	@RequestMapping(value = "/cartList")
    public ModelAndView list(HttpSession session, ModelAndView mav) throws Exception {
        Map<String, Object> map=new HashMap<>();
        //hashmap은 map(key,value)로 이뤄져 있고,
        //key값은 중복이 불가능 하고 value는 중복이 가능하다.
        //value에 null값도 사용이 가능하다.
        //전달할 정보가 많을 경우에는 HashMap<>을 사용하는 것이 좋다.
        //장바구니에 담을 값들이 많기 때문에 여기선 HashMap<>를 사용한다.                

        MemberDto memberDto = (MemberDto)session.getAttribute("member");

        //session에 저장된 userid를 getAttribute()메소드를 사용해서 얻어오고 오브젝트 타입이기 때문에
        //String 타입으로 타입변환한다.
                
        if(memberDto!=null) { 
            //로그인한 상태이면 실행
            List<CartDto> list=cartService.listCart(memberDto.getMem_id());//장바구니 목록     
            int sumMoney = cartService.sumMoney(memberDto.getMem_id());
           //hasp map에 장바구니에 넣을 각종 값들을 저장함                   
            map.put("list", list); //장바구니 목록            
            map.put("sumMoney",sumMoney);
                        
           //ModelAndView mav에 이동할 페이지의 이름과 데이터를 저장한다.
            mav.setViewName("/cart/cartList"); //이동할 페이지의 이름
            mav.addObject("map", map); //데이터 저장
            return mav; //화면 이동
        }else { //로그인하지 않은 상태
        	logger.info("1234");
            return new ModelAndView("/member/login", "", null);
            //로그인을 하지 않았으면 로그인 페이지로 이동시킨다.
        }
    }
	
	//장바구니 수량변경
	@RequestMapping(value = "/changeAmount", method = RequestMethod.POST)
	@ResponseBody
	public void changeAmount(CartDto cartDto) throws Exception{
		logger.info("cart_id " + cartDto.getCart_id()+ ", amount "+cartDto.getAmount());
		//cartService.changeAmount();
	}
	/** 장바구니 - 삭제 */
	@RequestMapping(value = "/deleteCart",method = RequestMethod.GET)
	public String deleteCart(@RequestParam int cart_id) throws Exception{
		cartService.deleteCart(cart_id);
		return "redirect:/cart/cartList";
	}	
	/** 장바구니 주문 완료 - 목록 전부 삭제 */
	@RequestMapping(value = "/deleteCartAll")
	public String deleteCartAll(HttpSession session) throws Exception{
        MemberDto memberDto = (MemberDto)session.getAttribute("member");
        String mem_id = memberDto.getMem_id();
		cartService.deleteCartAll(mem_id);
		return "/cart/confirm";
	}	
}
