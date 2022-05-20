<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="mt-4 p-5 bg-primary text-white">
	<!-- container : 좌우 가운데 정렬 -->
    	<div class="container">
	<!-- display : 글자 포인트 사이즈 -->
        	<h1 class="display-3">
        	<!-- 변수, 계산식, 메소드 호출결과를 문자열로 출력시 사용  -->
				상품 등록
        	</h1>
    	</div>
	</div>
	
	    <div class="container">
	  <form name="newProduct" action="./processAddProduct.jsp" class="form-horizontal" method="post">
	    <div class="form-grout row mt-3">
	      <label class="col-sm-2">상품명</label>
	      <div class="col-sm-3">
	        <input type="text" name="name" class="form-control">
	      </div>
	    </div>
	    <div class="form-grout row mt-3">
	      <label class="col-sm-2">상품설명</label>
	      <div class="col-sm-3">
	        <input type="text" name="description" class="form-control">
	      </div>
	    </div>
	    <div class="form-grout row mt-3">
	      <label class="col-sm-2">상품 코드</label>
	      <div class="col-sm-3">
	        <input type="text" name="productId" class="form-control">
	      </div>
	    </div>
	    <div class="form-grout row mt-3">
	      <label class="col-sm-2">제조사</label>
	      <div class="col-sm-3">
	        <input type="text" name="menufacturer" class="form-control">
	      </div>
	    </div>
	    <div class="form-grout row mt-3">
	      <label class="col-sm-2">분류</label>
	      <div class="col-sm-3">
	        <input type="text" name="category" class="form-control">
	      </div>
	    </div>
	    <div class="form-grout row mt-3">
	      <label class="col-sm-2">재고수</label>
	      <div class="col-sm-3">
	        <input type="text" name="unitsInStock" class="form-control">
	      </div>
	    </div>
	    <div class="form-grout row mt-3">
	      <label class="col-sm-2">가격</label>
	      <div class="col-sm-3">
	        <input type="text" name="unitPrice" class="form-control">
	      </div>
	    </div>
	    
	    <div class="form-group row">
	      <div class="col-sm-offset-2 col-sm-10">
	        <input type="submit" class="btn btn-primary" value="등록">
	      </div>
	    </div>
	  </form>
	</div>
	
	<jsp:include page="footer.jsp"/>
</body>
</html>