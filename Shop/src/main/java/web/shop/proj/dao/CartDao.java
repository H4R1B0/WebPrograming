package web.shop.proj.dao;

import java.util.List;

//오류떴었음...
import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import web.shop.proj.dto.CartDto;
import web.shop.proj.form.CartForm;

@Repository
public class CartDao {
	protected final Logger logger = LoggerFactory.getLogger(this.getClass());
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static final String NAMESPACE = "web.shop.proj.cartMapper";
	
	/** 장바구니 - 목록 조회  */
	//public List<CartDto> getCartList(CartForm cartForm) throws Exception {        
     //   return sqlSession.selectList(NAMESPACE + ".getCartList", cartForm);
    //}
	/**장바구니 리스트 가져오기*/
	public List<CartDto> listCart(String mem_id) {
        return sqlSession.selectList(NAMESPACE + ".listCart", mem_id);
    }
	/** 장바구니 - 추가  */    
    public void insertCart(CartDto cartDto) throws Exception {
    	int chk = sqlSession.selectOne(NAMESPACE + ".checkCart", cartDto);
    	logger.info("제품 번호 : "+cartDto.getProduct_id());
    	logger.info("멤버 아이디 : "+cartDto.getMem_id());
    	logger.info("장바구니 있는지 체크 : "+chk);
    	//logger.info("1234-Dao");
    	//장바구니에 있음
    	if(chk>0) {
    		logger.info("장바구니 있어서 업데이트");
    		sqlSession.insert(NAMESPACE + ".updateCart", cartDto);
    	}
    	else {
    		logger.info("장바구니 없어서 추가");
    		sqlSession.insert(NAMESPACE + ".insertCart", cartDto);
    	}
        
    }
    /**상품들 가격 합*/
    public int sumMoney(String mem_id) throws Exception{
    	return sqlSession.selectOne(NAMESPACE+".sumMoney",mem_id);
    }
    public void deleteCart(int cart_id) throws Exception{
    	sqlSession.delete(NAMESPACE + ".deleteCart",cart_id);
    }
    /** 장바구니 전부 삭제*/
    public void deleteCartAll(String mem_id) throws Exception{
    	sqlSession.delete(NAMESPACE + ".deleteCartAll",mem_id);
    }
}
