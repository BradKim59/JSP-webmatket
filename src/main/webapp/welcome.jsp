<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
	//nav �� �׺���̼�
	// ������ �޼��� ����
	String greeting = "welcome to shopping mall";
	String tagline = "welcome to web market!";
	%>
	<%
	// �׳� �ڹ��ڵ�
	// out.println("<h1>hello world����</h1>");
	%>
	<!-- p-5 : ��ü�е�5(����) 3�� ������-->
	<!-- bg primary : �⺻���� -->
	<!-- text white : ���� �Ͼ�� -->
	<div class="mt-4 p-5 bg-primary text-white rounded">
	<!-- container : �¿� ��� ���� -->
    	<div class="container">
        	<h1 class="display-3">
				<%=greeting%>
        	</h1>
    	</div>
	</div>
	<div class="container">
	    <div class="text-center">
			<h1><%=	tagline	%></h1>
  		</div>
	</div>
	<footer class="container">
		<p>&copy; webMarket</p>>
	</footer>
</body>
</html>