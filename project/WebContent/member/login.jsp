<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../include/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#btnLogin").click(function(){
		var param="email="+$("#email").val()
		+"&passwd="+$("#passwd").val();
		$.ajax({
			type: "post",
			url: "/project/member_servlet/login.do",
			data: param,
			success: function(result){
				$("#result").html(result);
				
			}
		});
	});
});


</script>
</head>
<body>
아이디 : <input id="email"><br>
비번 : <input type="password" id="passwd"><br>
<button id="btnLogin">로그인</button>
<div id="result"></div>
</body>
</html>