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

	<%
	//ProductRepository repository = new ProductRepository();
	List<Product> products = repository.getAllProducts();
	for (Product product: products) {
		out.println(product + "<br><br>");
	}
	%>
	<jsp:include page="footer.jsp"/>
	
</body>
</html>