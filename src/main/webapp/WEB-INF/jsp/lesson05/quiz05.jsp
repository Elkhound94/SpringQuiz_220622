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
</head>

<body>
${result.date}
	<div id="wrap">
		<div class="d-flex">
			<div class="a1 col-2 bg-primary p-0 m-0">
			<div class="pt-3 pb-4 text-center"><img src="/img/lesson05quiz05/sig2.png" width="100px"></div>
				<ul class="font-wiehgt-bold">
					<li><a href="quiz05">날씨</a></li>
					<li><a href="quiz05_1">날씨입력</a></li>
					<li><a href="#">테마날씨</a></li>
					<li><a href="#">관측기후</a></li>
				</ul>
			</div>
			<div class="a1 col-10 pt-3">
				<h1>과거날씨</h1>
				<table class="table text-center">
					<thead>
						<tr>
							<th>날짜</th>
							<th>날씨</th>
							<th>기온</th>
							<th>강수량</th>
							<th>미세먼지</th>
							<th>풍속</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="result" items="${results}">
							<tr>
								<td>
									<fmt:formatDate value="${result.date}" pattern="yyyy년 MM월 dd일" />
								</td>
								<td>
									<c:choose>
										<c:when test="${result.weather eq '비'}">
											<img src="/img/lesson05quiz05/rainy.jpg" />
										</c:when>
										<c:when test="${result.weather eq '흐림'}">
											<img src="/img/lesson05quiz05/cloudy.jpg" />
										</c:when>
										<c:when test="${result.weather eq '구름조금'}">
											<img src="/img/lesson05quiz05/partlyCloudy.jpg" />
										</c:when>
										<c:otherwise>
											<img src="/img/lesson05quiz05/sunny.jpg" />
										</c:otherwise>
									</c:choose>
								</td>
								<td>${result.temperatures}℃</td>
								<td>${result.precipitation}mm</td>
								<td>${result.microDust}</td>
								<td>${result.windSpeed}km/h</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
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
</body>
</html>