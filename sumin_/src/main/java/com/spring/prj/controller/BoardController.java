package com.spring.prj.controller;

import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.spring.prj.service.BoardService;
import com.spring.prj.vo.BoardVo;


@RequestMapping(value = "/board/")
@Controller
public class BoardController {
	
	private BoardService boardService;
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	public BoardController(BoardService boardService) {

		this.boardService = boardService;
	}
	@RequestMapping(value = "List", method = RequestMethod.GET)
	public ModelAndView list(Locale locale, ModelAndView mav, BoardVo vo) {
		
		List<Map<String, Object>> list = boardService.Boardlist(vo);
		
		mav.addObject("list", list);
		mav.setViewName("/board/List");
		System.out.println("list : " + list);
		
		return mav;
	}
	@RequestMapping(value = "Write", method = RequestMethod.GET)
	public ModelAndView write(Locale locale, ModelAndView mav, BoardVo vo, HttpServletRequest request) {
		
		mav.setViewName("/board/Write");
		
		return mav;
	}
	@RequestMapping(value = "WriteProcess", method = RequestMethod.GET)
	public ModelAndView writeProcess(Locale locale, ModelAndView mav, BoardVo vo, MultipartHttpServletRequest request) {
		
		mav.setViewName("/board/Write");
		
		return mav;
	}
}
