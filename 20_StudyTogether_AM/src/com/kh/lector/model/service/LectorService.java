package com.kh.lector.model.service;

import static com.kh.common.JDBCTemplate.close;//static  import!!!!!!!!!
import static com.kh.common.JDBCTemplate.commit;//static  import!!!!!!!!!
import static com.kh.common.JDBCTemplate.getConnection; //static  import!!!!!!!!!
import static com.kh.common.JDBCTemplate.rollback;//static  import!!!!!!!!!

import java.sql.Connection;
import java.util.List;

import com.kh.lector.model.dao.LectorDao;
import com.kh.lector.model.vo.Lector;
import com.kh.lector.model.vo.LectorChannel;

public class LectorService {

	private LectorDao dao=new LectorDao();

	public int insertLector(Lector l) {

		Connection conn=getConnection();
		int result=dao.insertLector(conn,l);
		if(result>0) commit(conn);
		else rollback(conn);
		close(conn);
		return result;
	}

	public List<Lector> searchLector(int cPage, int numPerPage) {
		
		Connection conn=getConnection();
		List<Lector> list=dao.searchLector(conn,cPage,numPerPage);
		close(conn);
		
		return list;
	}

	
	public int lectorCount() {
		Connection conn=getConnection();
		int result=dao.lectorCount(conn);
		close(conn);
		return result;
	}

	public Lector selectLector(int no) {

		Connection conn=getConnection();
		Lector l=dao.selectLector(conn,no);
		close(conn);
		return l;
		
	}

	public int deleteLector(int no) {
		Connection conn=getConnection();
		
		int result=dao.deleteLector(conn,no);
		if(result>0) commit(conn);
		else rollback(conn);
		
		return result;
	}

	public int updateLector(Lector l) {
		Connection conn=getConnection();
		int result=dao.updateLector(conn,l);
		if(result>0) commit(conn);
		else rollback(conn);
		close(conn);
		return result;
	}
////////////강좌 채널 내 강의 추가하기

	public int insertChannelLector(LectorChannel lc) {

		Connection conn=getConnection();
		int result=dao.insertChannelLector(conn,lc);
		if(result>0) commit(conn);
		else rollback(conn);
		close(conn);
		return result;
	}
	

	

}
