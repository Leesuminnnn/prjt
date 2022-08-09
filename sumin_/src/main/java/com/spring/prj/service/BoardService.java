package com.spring.prj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.prj.dao.BoardDao;
import com.spring.prj.vo.BoardVo;

@Service
public class BoardService {
	
	private BoardDao boardDao;
	
	@Autowired
	public BoardService(BoardDao boardDao) {
		this.boardDao = boardDao;
	}

	public List<Map<String, Object>> Boardlist(BoardVo vo) {
		// TODO Auto-generated method stub
		return boardDao.list(vo);
	
	}
		
}
