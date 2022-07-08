<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 추가 하기</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script> 
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h1>즐겨찾기 추가 하기</h1>
		<div class="form-group">
			<label for="name" class="mt-2 mb-0 font-weight-bold">제목</label>
			<input type="text" id="name" name="name"
				class="form-control col-11" placeholder="제목을 입력하세요.">
		</div>
		<div class="form-group">
			<label for="url" class="mt-2 mb-0 font-weight-bold">주소</label>
			<div class="form-inline">
				<input type="text" id="url" name="url"
					class="form-control col-10" placeholder="주소를 입력하세요.">
				<button type="button" id="checkDuplicateBtn" class="btn btn-info">중복확인</button>
			</div>
			<small id="duplicationText" class="text-danger d-none">중복된 url 입니다.</small>
			<small id="availableUrlText" class="text-success d-none">저장 가능한 url 입니다.</small>
		</div>
		<input type="button" id="addBtn" class="btn btn-success mt-2" value="추가">
	</div>	
</body>
<script>
	$(document).ready(function(){
		
		// url 중복확인
		$('#checkDuplicateBtn').on('click', function(){
			let url = $('#url').val().trim();
			if (url == '') {
				alert("URL을 입력하세요.");
				return;
			}
			
			// 중복확인 AJAX 통신 - db 확인
			$.ajax({
				// request
				type: "POST"
				, url: "/lesson06/is_duplication_url"
				, data: {"url":url}
				
				// response
				, success: function(data) {
					if (data.is_duplication) {
						// 중복일 때
						$('#duplicationText').removeClass('d-none');
						$('#availableUrlText').addClass('d-none');
					} else {
						// 사용 가능
						$('#duplicationText').addClass('d-none');
						$('#availableUrlText').removeClass('d-none');
					}
				}
				, error: function(e) {
					alert("중복 검사에 실패했습니다.")
				}
				
			});
		});
		
		
		$('#addBtn').on('click', function(){
			let name = $('#name').val().trim();
			let url = $('#url').val().trim();
			
			if (name == "") {
				alert("제목을 입력하세요.");
				return;
			}
			
			if (url == "") {
				alert("주소를 입력해주세요.")
				return;
			}
			
			// http 도 아니고(그리고) https도 아닐 때 => alert
			if (url.startsWith("http") == false && url.startsWith("https") == false) {
				alert("주소 형식이 잘못되었습니다.");
				return;
			}
			
			// url 중복확인 체크
			// '저장 가능한 url 입니다.' 문구가 숨겨져 있을 때 alert을 띄운다.
			// d-none이 있을 때
			if ($('#availableUrlText').hasClass('d-none')) {
				alert("URL 중복확인을 다시 해주세요.");
				return;
			}
			
			
			
			$.ajax({
				type: "POST"
				, url: "/lesson06/add_list"
				, data: {"name":name, "url":url}
				
				, success: function(data) {
					if (data.result == "success") {
						alert("입력 성공했습니다.");
						location.href = "/lesson06/after_add_list_view"
					}
				}
				
				, error: function(e) {
					alert("e:" + e);
				}
				
			});
		});
	});
</script>
</html>