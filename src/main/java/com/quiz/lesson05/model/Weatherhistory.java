package com.quiz.lesson05.model;

import java.util.Date;

public class Weatherhistory {
	private int id;
	private Date date;
	private String weather;
	private String temperatures;
	private String precipitation;
	private String microDust;
	private String windSpeed;
	private Date reatedAt;
	private Date updatedAt;
	
	public int getId() {
		return id;
	}
	public Date getDate() {
		return date;
	}
	public String getWeather() {
		return weather;
	}
	public String getTemperatures() {
		return temperatures;
	}
	public String getPrecipitation() {
		return precipitation;
	}
	public String getMicroDust() {
		return microDust;
	}
	public String getWindSpeed() {
		return windSpeed;
	}
	public Date getReatedAt() {
		return reatedAt;
	}
	public Date getUpdatedAt() {
		return updatedAt;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public void setWeather(String weather) {
		this.weather = weather;
	}
	public void setTemperatures(String temperatures) {
		this.temperatures = temperatures;
	}
	public void setPrecipitation(String precipitation) {
		this.precipitation = precipitation;
	}
	public void setMicroDust(String microDust) {
		this.microDust = microDust;
	}
	public void setWindSpeed(String windSpeed) {
		this.windSpeed = windSpeed;
	}
	public void setReatedAt(Date reatedAt) {
		this.reatedAt = reatedAt;
	}
	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
	
	
}
