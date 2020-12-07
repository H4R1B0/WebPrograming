package web.shop.proj.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import web.shop.proj.dao.CartDao;
import web.shop.proj.dto.BoardDto;
import web.shop.proj.dto.CartDto;
import web.shop.proj.form.BoardForm;
import web.shop.proj.form.CartForm;

@Service
public class CartService {
	
	protected final Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired
    private CartDao cartDao;
	
    /** 장바구니 - 목록 조회 */
    //public List<CartDto> getCartList(CartForm cartForm) throws Exception { 
     //   return cartDao.getCartList(cartForm);
    //}
    
	public List<CartDto> listCart(String mem_id){
		return cartDao.listCart(mem_id);
	}
    /** 장바구니 - 추가 */
    public void insertCart(CartDto cartDto) throws Exception {
    	//logger.info("1234-service");
    	cartDao.insertCart(cartDto);
    }
    public int sumMoney(String mem_id) throws Exception{
    	return cartDao.sumMoney(mem_id);
    }
    /** 장바구니 - 삭제 */
    public void deleteCart(int cart_id) throws Exception{
    	cartDao.deleteCart(cart_id);
    }
    /** 장바구니 - 주문완료 전부삭제*/
    public void deleteCartAll(String mem_id) throws Exception{
    	cartDao.deleteCartAll(mem_id);
    }
}
