package com.quiz.lesson05.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.quiz.lesson05.model.Weatherhistory;

@Repository
public interface WeatherhistoryDAO {
	public List<Weatherhistory> selectWeatherhistory();
	public void insertWeatherhistoryByField(Weatherhistory weatherhistory);

}
