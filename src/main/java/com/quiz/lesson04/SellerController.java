package com.quiz.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.quiz.lesson04.bo.SellerBO;
import com.quiz.lesson04.model.Seller;

@RequestMapping("/lesson04")
@Controller
public class SellerController {

	@Autowired
	private SellerBO sellerBO;

	// http://localhost:8080/lesson04/quiz01/1
	@RequestMapping("/quiz01/1")
	public String quiz01_1() {
		return "lesson04/add_seller";
	}

	// http://localhost/lesson04/quiz01/add_seller
	@PostMapping("/quiz01/add_seller")
	public String addSeller(@RequestParam("nickname") String nickname,
			@RequestParam(value = "profileImageUrl", required = false) String profileImageUrl,
			@RequestParam("temperature") double temperature) {

		sellerBO.addSellerAsField(nickname, profileImageUrl, temperature);

		return "lesson04/after_add_seller";
	}

	// http://localhost:8080/lesson04/quiz01/seller_info
	// http://localhost:8080/lesson04/quiz01/seller_info?id=1
	@GetMapping("/quiz01/seller_info")
	public String sellerInfo(@RequestParam(value = "id", required = false) Integer id, Model model) {

		Seller seller = null;
		if (id == null) {
			seller = sellerBO.getLastSeller();
		} else {
			seller = sellerBO.getSellerById(id);
		}

		model.addAttribute("result", seller);
		model.addAttribute("title", "판매자정보");

		return "lesson04/seller_info";
	}

}
