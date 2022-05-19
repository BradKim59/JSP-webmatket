<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.List" %>
<%@ page import= "dto.Product" %>
<!-- 클래스를 생성해서 아이디로 쓰겠다는 의미 -->
<jsp:useBean id="repository" class="dao.ProductRepository" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
</head>
<body>
	<%
	//ProductRepository repository = new ProductRepository();
	List<Product> products = repository.getAllProducts();
	for (Product product: products) {
		out.println(product + "<br><br>");
	}
	%>
</body>
</html>