package com.spring.prj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.prj.dao.BoardDao;
import com.spring.prj.dao.MemberDao;
import com.spring.prj.vo.BoardVo;
import com.spring.prj.vo.MemberVo;

@Service
public class MemberService {
	
	private MemberDao memberDao;
	
	@Autowired
	public MemberService(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	public void joinProcess(MemberVo vo) {
		
		memberDao.joinProcess(vo);
	}

	public String login(MemberVo vo) {
		
		return memberDao.login(vo);
	}

	
		
}
