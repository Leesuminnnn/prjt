package com.spring.prj.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.prj.vo.BoardVo;
import com.spring.prj.vo.MemberVo;

@Repository
public class MemberDao {

	
	//MyBatis를 이용해서 DB작업: SqlSession 객체 필요
	
	private SqlSession sqlSession;
	
	public static final String MAPPER = "member";
	
	@Autowired
	public MemberDao(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public void joinProcess(MemberVo vo) {
		sqlSession.insert(MAPPER+".insert",vo);		
	}

	public String login(MemberVo vo){
		return sqlSession.selectOne(MAPPER+".login",vo);
	}
	
}
