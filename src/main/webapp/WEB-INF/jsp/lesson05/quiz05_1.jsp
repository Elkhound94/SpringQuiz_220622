<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날씨</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  
  <script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link rel="stylesheet" href="/css/lesson05quiz05.css">

  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>

</head>
<body>
	<div>
		<div class="d-flex">
			<div class="a3 col-2 bg-primary p-0 m-0">
			<div class="pt-3 pb-4 text-center"><img src="/img/lesson05quiz05/sig2.png" width="100px"></div>
				<ul class="font-wiehgt-bold">
					<li><a href="quiz05">날씨</a></li>
					<li><a href="quiz05_1">날씨입력</a></li>
					<li><a href="#">테마날씨</a></li>
					<li><a href="#">관측기후</a></li>
				</ul>
			</div>
			<div class="a3 col-10 pt-3">
				<h1>날씨 입력</h1>
				<form method="post" action="/lesson05/addWeather">
					<div class="d-flex justify-content-around">
						<div class="input-group mb-3 a4">
						<span class="p-2">날짜</span>
						  <input type="text" class="form-control" name="date" id="datepicker">
						</div>
						<div class="input-group mb-3 a4">
						<span class="p-2">날씨</span>
						  <select class="custom-select" id="inputGroupSelect01" name="weather">
						    <option value="맑음">맑음</option>
						    <option value="흐림">흐림</option>
						    <option value="구름조금">구름조금</option>
						    <option value="비">비</option>
						  </select>
						</div>
						<div class="input-group mb-3 a4">
						<span class="p-2">미세먼지</span>
						  <select class="custom-select" id="inputGroupSelect01" name="microDust">
						    <option value="좋음">좋음</option>
						    <option value="보통">보통</option>
						    <option value="나쁨">나쁨</option>
						    <option value="최악">최악</option>
						  </select>
						</div>
					</div>
				
					<div class="d-flex justify-content-around">
						<div class="input-group ml-3 a4">
							<span class="p-2">기온</span>
						  <input type="text" class="form-control" name="temperatures">
						  <div class="input-group-append">
						    <span class="input-group-text" id="basic-addon2">℃</span>
						  </div>
						</div>
						<div class="input-group ml-3 a4">
							<span class="p-2">강수량</span>
						  <input type="text" class="form-control" name="precipitation">
						  <div class="input-group-append">
						    <span class="input-group-text" id="basic-addon2">mm</span>
						  </div>
						</div>
						<div class="input-group ml-3 a4">
							<span class="p-2">풍속</span>
						  <input type="text" class="form-control" name="windSpeed">
						  <div class="input-group-append">
						    <span class="input-group-text" id="basic-addon2">km/h</span>
						  </div>
						</div>
					</div>
					<div class="text-right mr-5 mt-3 pr-5">
						<button type="submit" class="btn btn-success">저장</button>
					</div>
				</form>
			</div>
		</div>
		<footer class="d-flex">
			<div class="a2 col-2 m-0 text-center">
				<img src="/img/lesson05quiz05/sig1.png" alt="로고" width="180px">
			</div>
			<div class="a2 col-10 mt-2">
				(07062) 서울시 동작구 여의대방로16길 61<br>
				Copyright@2020 KMA. All Rights RESERBED.
			</div>
		</footer>
	</div>
	<script>
		$(document).ready(function(){
			$("#datepicker").datepicker({
				dateFormat: "yy년 mm월 dd일"
			});
		});
	</script>
</body>
</html>