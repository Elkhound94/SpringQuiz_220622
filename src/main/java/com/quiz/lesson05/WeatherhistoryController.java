package com.quiz.lesson05;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quiz.lesson05.bo.WeatherhistoryBO;
import com.quiz.lesson05.model.Weatherhistory;

@RequestMapping("/lesson05")
@Controller
public class WeatherhistoryController {

	@Autowired
	private WeatherhistoryBO weatherhistoryBO;
	
	// http://localhost:8080/lesson05/quiz05
	@RequestMapping("/quiz05")
	public String quiz05(
			Model model) {
		
		model.addAttribute("results", weatherhistoryBO.getWeatherhistory());
		
		return "lesson05/quiz05";
	}
	
	// http://localhost:8080/lesson05/quiz05_1
	@RequestMapping("/quiz05_1")
	public String quiz05_1() {
		return "lesson05/quiz05_1";
	}
	
	
	@PostMapping("/addWeather")
	public String addWeather(
			@ModelAttribute Weatherhistory weatherhistory) {
		
		weatherhistoryBO.addWeatherhistoryByField(weatherhistory);
		
		return "redirect:quiz05";
	}
}
