package com.quiz.lesson05.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson05.dao.WeatherhistoryDAO;
import com.quiz.lesson05.model.Weatherhistory;

@Service
public class WeatherhistoryBO {
	
	@Autowired
	WeatherhistoryDAO weatherhistoryDAO;
	
	public List<Weatherhistory> getWeatherhistory() {
		return weatherhistoryDAO.selectWeatherhistory();
	}
	
	public void addWeatherhistoryByField(Weatherhistory weatherhistory) {
		weatherhistoryDAO.insertWeatherhistoryByField(weatherhistory);
	}
}
