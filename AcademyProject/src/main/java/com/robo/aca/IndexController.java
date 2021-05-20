package com.robo.aca;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {
	
	private static final Logger logger = LoggerFactory.getLogger(IndexController.class);
	
	@GetMapping(value = {"/", "index"})
	public String index() {
		logger.info("INDEX PAGE >>");
		
		return "index";
	}
	
	@GetMapping(value = "/board/main_board")
	public String main_board() {
		return "main_board";
	}
}