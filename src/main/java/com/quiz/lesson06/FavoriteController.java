package com.quiz.lesson06;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/lesson06")
@Controller
public class FavoriteController {
	
	// http://localhost:8080/lesson06/quiz01
	@RequestMapping("/quiz01")
	public String quiz01() {
		return "lesson06/quiz01";
	}
	
	@PostMapping("/add_list")
	public String addList() {
		return "lesson06/afterAddList";
	}
}
