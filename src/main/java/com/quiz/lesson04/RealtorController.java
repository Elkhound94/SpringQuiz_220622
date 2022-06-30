package com.quiz.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quiz.lesson04.bo.RealtorBO;
import com.quiz.lesson04.model.Realtor;

@RequestMapping("/lesson04")
@Controller
public class RealtorController {

	@Autowired
	RealtorBO realtorBO;
	
	// http://localhost:8080/lesson04/quiz02/1
	@GetMapping("/quiz02/1")
	public String quiz02_1() {
		return "lesson04/addRealtorView";
	}
	
	// lesson04/quiz02/add_realtor
	@PostMapping("/quiz02/add_realtor")
	public String addRealtor(
			@ModelAttribute Realtor realtor
			,Model model) {
		
		realtorBO.addRealtor(realtor);
		
		realtor = realtorBO.getRealtorById(realtor.getId());
		
		model.addAttribute("result", realtor);
		
		
		
		return "lesson04/afterRealtorView";
	}
}
