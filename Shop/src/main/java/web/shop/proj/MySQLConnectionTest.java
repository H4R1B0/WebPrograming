package web.shop.proj;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
 
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
 
public class MySQLConnectionTest {
	
	protected final Logger logger = LoggerFactory.getLogger(this.getClass());
 
    static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    static final String URL = "jdbc:mysql://127.0.0.1:3306/shopdb?characterEncoding=utf8&serverTimezone=UTC";
    static final String USERNAME = "admin";
    static final String PASSWORD = "Koreapark25!";
 
    @Test
    public void getMySQLConnectionTest() {
        
        Connection conn = null;
        Statement stmt = null;
        
        try {
            
            logger.info("==================== MySQL Connection START ====================");
            
            Class.forName(DRIVER);
            
            conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            stmt = conn.createStatement();
 
            String sql = "SELECT title, content, writer FROM board";
 
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                
                String boardTitle = rs.getString("title");
                String boardContent = rs.getString("content");
                String boardWriter = rs.getString("writer");
 
                logger.info("제목 : {}", boardTitle);
                logger.info("내용 : {}", boardContent);
                logger.info("작성자: {}", boardWriter);
                logger.info("========================================");
            }
 
            rs.close();
            stmt.close();
            conn.close();
 
        } catch (SQLException se1) {
            se1.printStackTrace();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            try {
                if (stmt != null) {
                    stmt.close();
                }
            } catch (SQLException se) {
                se.printStackTrace();
            }
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }
        
        logger.info("==================== MySQL Connection END ====================");
    }
}