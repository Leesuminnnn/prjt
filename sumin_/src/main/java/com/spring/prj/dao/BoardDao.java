package com.spring.prj.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.prj.vo.BoardVo;

@Repository
public class BoardDao {

	
	//MyBatis를 이용해서 DB작업: SqlSession 객체 필요
	
	private SqlSession sqlSession;
	
	public static final String MAPPER = "board";
	
	@Autowired
	public BoardDao(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	public List<Map<String, Object>> list(BoardVo vo){
		return sqlSession.selectList(MAPPER+".list",vo);
	}
}
