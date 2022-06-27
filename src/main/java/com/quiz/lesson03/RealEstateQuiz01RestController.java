package com.quiz.lesson03;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.quiz.lesson03.bo.RealEstateBO;
import com.quiz.lesson03.model.RealEstate;

@RequestMapping("/lesson03")
@RestController
public class RealEstateQuiz01RestController {
	
	@Autowired
	private RealEstateBO realEstateBO;
	
	
	// http://localhost:8080/lesson03/quiz01/1?id=10
	@RequestMapping("/quiz01/1")
	public RealEstate quiz01_1(
			@RequestParam("id") int id
			) {
		return realEstateBO.getRealEstate(id);
	}
	
	// http://localhost:8080/lesson03/quiz01/2?rent_price=90
	@RequestMapping("/quiz01/2")
	public List<RealEstate> quiz01_2(
			@RequestParam(value="rent_price", required=false) Integer rentPrice
			) {
		return realEstateBO.getRealEstateByRentPrice(rentPrice);
	}
	
	// http://localhost:8080/lesson03/quiz01/3?area=90&price=130000
	@RequestMapping("/quiz01/3")
	public List<RealEstate> quiz01_3(
			@RequestParam(value="area") int area,   
			@RequestParam(value="price") int price
			) {
		return realEstateBO.getRealEstateByAreaPrice(area, price);
	}
	
	// http://localhost:8080/lesson03/quiz02/1
	@RequestMapping("/quiz02/1")
	public String quiz02_1() {
		RealEstate realEstate = new RealEstate();
		realEstate.setRealtorId(3);
		realEstate.setAddress("푸르지용 리버 303동 1104호");
		realEstate.setArea(89);
		realEstate.setType("매매");
		realEstate.setPrice(100000);
		
		int row = realEstateBO.addRealEstate(realEstate);
		return row > 0 ? "입력 성공 : " + row : "실패했습니다.";
	}
	
	// http://localhost:8080/lesson03/quiz02/2?realtor_id=5
	@RequestMapping("/quiz02/2")
	public String quiz02_2(
			@RequestParam("realtor_id") int realtorId) {
		
		int row = realEstateBO.addRealEstateAsField(realtorId, "썅떼빌리버 오피스텔 814호", 45, "월세", 100000, 120);
				
		return "입력 성공 : " + row;
	}
}
