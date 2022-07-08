package com.quiz.lesson06.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson06.dao.FavoriteDAO;
import com.quiz.lesson06.model.Favorite;

@Service
public class FavoriteBO {
	@Autowired
	FavoriteDAO favoriteDAO;
	
	public List<Favorite> getFavorite() {
		return favoriteDAO.selectFavorite();
	}
	
	public void addFavorite(String name, String url) {
		favoriteDAO.insertFavorite(name, url);
	}
	
	public Favorite getFavoriteByUrl(String url) {
		return favoriteDAO.selectFavoriteByUrl(url);
	}

	public int deleteFavoriteById(int id) {
		return favoriteDAO.deleteFavoriteById(id);
	}
}