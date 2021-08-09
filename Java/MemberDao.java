package kr.or.ddit;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

public class MemberDao {
	
	// 특징 1번) private Constructor
	private static MemberDao instance; 
	
	private Connection conn;
	
		//생성자를 사용하지 않고 싱글톤 패턴을 활용해
		//최초에 한번만 메모리에 할당하고 그 메모리에 인스턴스를 만들어 사용한다
		
		// 싱글톤 패턴의 특징 2가지
		//		1- 외부에서 객체를 생성할 수 없도록 생성자에 private를 명시 (private constructor)
		//		2- static변수 초기화 시점에 자신의 객체를 생성하고 그 객체를 공유하여 사용한다. (static method)
		
		// public MemberDao(){
		//
		// }
		
		
		//static을 사용함으로서 최초 할당된 메모리를 계속 사용
		public static MemberDao getInstance() {
			if(instance == null) {
				//값이 없을 경우에 한번만 new를 통해 메모리에 할당한다
				instance = new MemberDao();
			}
			return instance;
			
		}
		
		
		//회원 이름으로 검색하여 상세정보 조회하는 메소드
		//public 리턴타입(받을 값의 형태), 메소드명(인자 값 : 넘겨주는 값-name)
		public Map<String, Object> selectMemberOne(String name){
			
			Map<String, Object> map = new HashMap<String, Object>();
			String sql = "select * from member where mem_name = ?";
			
			//Connection메소드 호출하여 sql문 작성
			conn = JDBCUtil.getConn();
			PreparedStatement ps = null;
			try {
				//sql구문 실행기능을 갖는 객체
				ps = conn.prepareStatement(sql);
				ps.setString(1, name);
				
				// executeQuery를 통해 실행하면 ResultSet 타입으로 결과 값을 저장한다.
				ResultSet rs = ps.executeQuery();
				
				//ResultSet에서는 next( )메소드를 지원 : select결과의 존재 여부를 알 수 있음
				//최초의 커서가 1행 이전에 존재하며, 다음행이 존재할 경우 true를 리턴하고
				// 그 행으로 이동하여 지정된 컬럼 값을 읽어온다.
				while(rs.next()) {
					map.put("id", rs.getString("mem_id"));
					map.put("name", rs.getString("mem_name"));
					map.put("hp", rs.getString("mem_hp"));
					map.put("mail", rs.getString("mem_mail"));
				}
				JDBCUtil.close(conn, ps, rs);

			} catch (SQLException e) {
				e.printStackTrace();
			}
			return null;
		}
		
		
		
}
