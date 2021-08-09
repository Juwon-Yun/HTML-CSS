package kr.or.ddit;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JDBCUtil {
	
	//static 사용 - Class변수 공유해서 사용
	public static Connection conn;
	
	//생성자 - 를 호출하지 않고 static영역에 드라이버를 등록
	static {
	
		try {
			//Driver class를 
			Class.forName("oracle.jdbc.driver.oracleDriver");
			
		}catch (ClassNotFoundException e) {
			//driver class를 찾지 못하면 classNotFoundException 예외를 발생시킨다.
			e.printStackTrace();
		}
	}
	
	//DB Connection 연결
	public static Connection getConn() {
		
		String url = "jdbc:oracle:this:@localhost:1521:xe";
		
		try {
			//Connnection 객체 생성 + 접속
			//DriverManager의 역할 : jdbc 드라이버를 통해 Connection을 만드는 역할을 함
			conn = DriverManager.getConnection(url, "GJW", "java");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	/*
	 * Connection메소드 호출하여 sql문 조회 후 Connection 및 기타 개체를 닫아줘야 함
	 * java는 close가 필요한 객체들이 존재한다 - 생성된 객체들의 수가 증가하며 추후 생성이 안되는 문제가 발생될 수 있다.
	 * 그리고 close하지 않으면 불필요한 자원을(네트워크 및 메모리) 낭비하게 되므로 Connection 및 기타 객체를 꼭 닫아 줘야한다.
	 * 
	 * 기타 객체 - PrepareStatement : sql구문 실행 기능을 갖는 객체
	 * 				   - ResultSet : 쿼리를 실행하면 ResultSet 타입으로 반환해서 결과 값을 저장
	 * 
	 */
	
	public static void close(Connection conn, PreparedStatement ps, ResultSet rs) {
		
		try {
			if(rs != null) rs.close();
			if(ps != null) ps.close();
			if(conn != null) conn.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
	}
}
