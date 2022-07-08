package com.quiz.lesson06;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quiz.lesson06.bo.FavoriteBO;
import com.quiz.lesson06.model.Favorite;

@RequestMapping("/lesson06")
@Controller
public class FavoriteController {
	
	@Autowired
	FavoriteBO favoriteBO;
	
	// http://localhost:8080/lesson06/quiz01
	@RequestMapping("/quiz01")
	public String quiz01() {
		return "lesson06/quiz01";
	}
	
	
	
	
	
	// url 중복 확인 - AJAX로 온 요청
	@ResponseBody
	@PostMapping("/is_duplication_url")
	public Map<String, Boolean> isDuplicationUrl(
			@RequestParam("url") String url) {
		
		// 결과를 map -> JSON string
		Map<String, Boolean> result = new HashMap<>();
		result.put("is_duplication", false);
		
		// db select -> 중복확인
		Favorite favorite = favoriteBO.getFavoriteByUrl(url);
		if (favorite != null) {
			// 중복일 때
			result.put("is_duplication", true);
		}
		return result;
	}
	
	
	// AJAX로 들어온 요청은 반드시 @ResponseBody가 붙어있어야 하고, String을 리턴해야 한다.
	// 즐겨찾기 데이터 추가 - AJAX로 들어오는 요청
	@ResponseBody
	@PostMapping("/add_list")
	public Map<String, Object> addList(
			@RequestParam("name") String name
			, @RequestParam("url") String url) {
		
		favoriteBO.addFavorite(name, url);
		
		// 성공 여부를 map에 담는다.
		// {"result":"success"}
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		result.put("result_code", 1);
		
		return result;
	}
	
	@RequestMapping("/after_add_list_view")
	public String addListView(Model model) {
		
		model.addAttribute("favoriteList", favoriteBO.getFavorite());
		
		return "lesson06/afterAddList";
	}
	
	
	// 삭제
	// AJAX 요청 - @ResponseBody return Map
	@ResponseBody
	@PostMapping("/delete_favorite")
	public Map<String, Object> deleteFavorite(
			@RequestParam("id") int id) {
		
		// delete db by id
		int deleteRow = favoriteBO.deleteFavoriteById(id);
		
		Map<String, Object> map = new HashMap<>();
		if (deleteRow > 0) {
			map.put("result", "success");
		} else {
			map.put("result", "failure");
		}
		
		return map;
	}
	
}