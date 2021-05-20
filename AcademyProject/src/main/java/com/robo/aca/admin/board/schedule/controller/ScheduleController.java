package com.robo.aca.admin.board.schedule.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ScheduleController {
	@GetMapping(value = "/schedule/main_board")
	public String main_board() {
		return "main_board";
	}
}