package com.quiz.lesson03;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.quiz.lesson03.bo.RealEstateBO;
import com.quiz.lesson03.model.RealEstate;

@RestController
public class RealEstateQuiz01RestController {
	
	@Autowired
	private RealEstateBO realEstateBO;
	
	
	// http://localhost:8080/lesson03/quiz01/1?id=10
	@RequestMapping("/lesson03/quiz01/1")
	public RealEstate quiz01_1(
			@RequestParam("id") int id
			) {
		return realEstateBO.getRealEstate(id);
	}
	
	// http://localhost:8080/lesson03/quiz01/2?rentPrice=90
	@RequestMapping("/lesson03/quiz01/2")
	public List<RealEstate> quiz01_2(
			@RequestParam(value="rentPrice", required=false) Integer rentPrice
			) {
		return realEstateBO.getRealEstateByRentPrice(rentPrice);
	}
	
	// http://localhost:8080/lesson03/quiz01/3?area=90&price=130000
	@RequestMapping("/lesson03/quiz01/3")
	public List<RealEstate> quiz01_3(
			@RequestParam(value="area") int area, @RequestParam(value="price") int price
			) {
		return realEstateBO.getRealEstateByAreaPrice(area, price);
	}
}
