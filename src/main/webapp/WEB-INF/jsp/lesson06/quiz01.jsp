<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 추가 하기</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h1>즐겨찾기 추가 하기</h1>
		<div class="from-group">
				<label for="title" class="mt-2 mb-0 font-weight-bold">제목</label><br>
				<input type="text" id="title" name="title"
					class="from-control col-3" placeholder="제목을 입력하세요.">
			</div>
			<div class="from-group">
				<label for="address" class="mt-2 mb-0 font-weight-bold">주소</label><br>
				<input type="text" id="address" name="address"
					class="from-control col-3" placeholder="주소를 입력하세요.">
			</div>
			<input type="button" id="addBtn" class="btn btn-success mt-2" value="추가">
	</div>	
</body>
<script>
	$(document).ready(function(){
		$('#addBtn').on('click', function(){
			let title = $('#title').val().trim();
			if (title == "") {
				alert("제목을 입력하세요.");
				return;
			}
			
			let address = $('#address').val().trim;
			if (address == "") {
				alert("주소를 입력해주세요.")
				return;
			}
			
			
		});
	});
</script>
</html>