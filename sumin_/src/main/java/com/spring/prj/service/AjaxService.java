package com.spring.prj.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.prj.dao.MemberDao;
import com.spring.prj.vo.MemberVo;

@Service
public class AjaxService {
	
	private MemberDao memberDao;
	
	
	@Autowired// 의존 자동주입: 생성자 방식
	public AjaxService(MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	
	
	public int checkId(String id) {
		int result=0;
		result = memberDao.checkId(id);
		return result;
	}

	
	


}
