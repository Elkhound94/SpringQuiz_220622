package com.quiz.lesson05;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/lesson05")
@Controller
public class WeatherhistoryController {

	// http://localhost:8080/lesson05/quiz05
	@RequestMapping("/quiz05")
	public String quiz05() {
		return "lesson05/quiz05";
	}
	
}
