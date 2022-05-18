<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import= "java.util.Date" %>
<%@ page import= "java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-expand navbar-dark bg-dark">
    <div class="container">
        <div class="navber-header"><a class="navbar-brand" href="./welcome.jsp">Home</a></div>
    </div>
    </nav>
	<%!
	//nav 는 네비게이션
	// 변수나 메서드 선언
	String greeting = "웹 쇼핑몰에 오신것을 환영합니다.";
	String tagline = "welcome to web market!";
	%>
	<%
	// 그냥 자바코드
	// out.println("<h1>hello world새로</h1>");
	%>
	<!-- p-5 : 전체패딩5(많이) 3이 보통임-->
	<!-- bg primary : 기본색상 -->
	<!-- text white : 글자 하얗기 -->
	<div class="mt-4 p-5 bg-primary text-white rounded">
	<!-- container : 좌우 가운데 정렬 -->
    	<div class="container">
        	<h1 class="display-3">
				<%=greeting%>
        	</h1>
    	</div>
	</div>
	<div class="container">
	    <div class="text-center">
			<h3><%=	tagline	%></h3>
			<%
			Date today = new Date();
			SimpleDateFormat format = new SimpleDateFormat("hh:mm:ss a");
			out.println("헌재접속시간 : "+format.format(today));
			%>
  		</div>
	</div>
	<footer class="container">
		<p>&copy; webMarket</p>
	</footer>
</body>
</html>