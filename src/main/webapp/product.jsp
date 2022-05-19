<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.List" %>
<%@ page import= "dto.Product" %>
<jsp:useBean id="repository" class="dao.ProductRepository" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<jsp:include page="menu.jsp"/>
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
				상품 상세정보
        	</h1>
    	</div>
	</div>
	<%
	// product.jsp?id=p1234 이런식으로 넘어온 값 받기
	//념거준 ID 이런식으로 받는다. 무조건 String으로 받는다.
	String id = request.getParameter("id");
	Product product = repository.getProductById(id);
	%>
	<div class="container">
    <div class="row">
    <!-- 12/6 -->
        <div class="col-md-6">
        <h3><%= product.getName() %></h3>
        <p><%= product.getDescription() %></p>
        <p><b>상품코드 : </b><span class="badge bg-danger">
        <%= product.getProductId() %></span></p>
        <p><b>제조사 : </b> <%= product.getMenufacturer() %></p>
        <p><b>분류 : </b> <%= product.getCategory() %></p>
        <p><b>재고수 : </b> <%= product.getUnitsInStock() %></p>
        <p><%= product.getUnitPrice() %>원</p>
        <p>
        <a href="#" class="btn btn-info">상품주문 &raquo;</a>
		<a href="./products.jsp" class="btn btn-secondary">상품목록 &raquo;</a>
        </p>
        <!-- 니머지는 책에 -->
        </div>
    </div>
	</div>
	<jsp:include page="footer.jsp"/>

</body>
</html>