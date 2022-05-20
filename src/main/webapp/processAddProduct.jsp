<%@page import="dao.ProductRepository"%>
<%@page import="dto.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//한글 안깨지게
request.setCharacterEncoding("UTF-8");

String productId = request.getParameter("productId");
String name = request.getParameter("name");
int unitPrice = Integer.parseInt(request.getParameter("unitPrice"));
String description = request.getParameter("description");
String menufacturer = request.getParameter("menufacturer");
String category = request.getParameter("category");
int unitsInStock = Integer.parseInt(request.getParameter("unitsInStock"));


Product newProduct =new Product (productId, name, unitPrice);
newProduct.setDescription(description);
newProduct.setMenufacturer(menufacturer);
newProduct.setCategory(category);
newProduct.setUnitsInStock(unitsInStock);

ProductRepository repository = ProductRepository.getInstance();
repository.addProduct(newProduct);

response.sendRedirect("products.jsp");
%>