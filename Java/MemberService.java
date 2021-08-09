package kr.or.ddit;

import java.util.Map;

public class MemberService {
	// 특징 1번
	private static MemberService instance;
	
	public MemberDao memberDao;
	
	// 컨트롤러(jsp)에서 사용할 service객체를 싱글톤방식으로 생성
	// 특징 2번 static method로 생성
	public static MemberService getInstance() {
		if(instance == null) {
			instance = new MemberService();
		}		
		return instance;
	}
	
	//DAO 객체 얻어오기
	//싱글톤 객체 사용
	public MemberService() {
		memberDao = MemberDao.getInstance();
	}
	
	//MemberDao memberdao = MemberDao.getInstance();
	
	public Map<String, Object> selectMemberOne(String name){
		Map<String, Object> map = memberDao.selectMemberOne(name);
		
		
		return map;
	}
	
}

