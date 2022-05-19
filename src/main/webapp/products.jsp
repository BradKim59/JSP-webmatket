<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.List" %>
<%@ page import= "dto.Product" %>
<!-- 클래스를 생성해서 아이디로 쓰겠다는 의미 -->
<!-- session 서버측에 저장 -->
<!-- application 서버 죽을때까지 유지 -->
<!-- page 매번 불러오기 new로 생성하는것과 같음 -->
<jsp:useBean id="repository" class="dao.ProductRepository" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
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
				상품 목록
        	</h1>
    	</div>
	</div>

	<%
	//ProductRepository repository = new ProductRepository();
	List<Product> products = repository.getAllProducts();
	%>
	<div class="container">
    <div class="row text-center">
    	<%
    	for (Product product: products) {
    	%>	
        <div class="col-md-4">
        <h3><%= product.getName() %></h3>
        <p><%=product.getDescription() %></p>
        <p><%=product.getUnitPrice()%>원</p>
        </div>
    	<%
    	}    	
    	%>	
    </div>
	</div>
	<jsp:include page="footer.jsp"/>
	
</body>
</html>