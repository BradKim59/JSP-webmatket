<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!-- import 속성 사용방법 -->
    <%@ page import= "java.util.List" %>
<%@ page import= "dto.Product" %>
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
<!-- 메뉴 찢어내기 -->
	<jsp:include page="menu.jsp"/>
	<%!
	// 변수나 메서드 선언 시 <%! 사용
	String greeting = "웹 쇼핑몰에 오신것을 환영합니다.";
	String tagline = "welcome to web market!";
	%>
	<%
	// 그냥 자바로직코드 작성 시 <% 사용
	// 변수, 계산식, 메소드 호출결과를 문자열로 출력시 <%= 사용
	// out.println("<h1>hello world새로</h1>");
	%>
	
	<!-- mt-5 : margin top-->
	<!-- p-5 : 전체패딩5(많이) 3이 보통임-->
	<!-- bg primary : 기본색상 -->
	<!-- text white : 글자 하얗기 -->
	<div class="mt-4 p-5 bg-primary text-white">
	<!-- container : 좌우 가운데 정렬 -->
    	<div class="container">
	<!-- display : 글자 포인트 사이즈 -->
        	<h1 class="display-3">
        	<!-- 변수, 계산식, 메소드 호출결과를 문자열로 출력시 사용  -->
				<%=greeting%>
        	</h1>
    	</div>
	</div>
	<div class="container">
	<!-- 문자열 가운데 놓기 -->
	    <div class="text-center">
			<h3><%=	tagline	%></h3>
			<%
			//1초에 한번씩 새로고침
			response.setIntHeader("refresh", 1);
			
			Date today = new Date();
			SimpleDateFormat format = new SimpleDateFormat("hh:mm:ss a");
			out.println("헌재접속시간 : "+format.format(today));
			%>
  		</div>
	</div>
	<!-- footer 찢어내기 -->
<jsp:include page="footer.jsp"/>

</body>
</html>