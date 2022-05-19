<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!-- import �Ӽ� ����� -->
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
<!-- �޴� ����� -->
	<jsp:include page="menu.jsp"/>
	<%!
	// ������ �޼��� ���� �� <%! ���
	String greeting = "�� ���θ��� ���Ű��� ȯ���մϴ�.";
	String tagline = "welcome to web market!";
	%>
	<%
	// �׳� �ڹٷ����ڵ� �ۼ� �� <% ���
	// ����, ����, �޼ҵ� ȣ������ ���ڿ��� ��½� <%= ���
	// out.println("<h1>hello world����</h1>");
	%>
	
	<!-- mt-5 : margin top-->
	<!-- p-5 : ��ü�е�5(����) 3�� ������-->
	<!-- bg primary : �⺻���� -->
	<!-- text white : ���� �Ͼ�� -->
	<div class="mt-4 p-5 bg-primary text-white">
	<!-- container : �¿� ��� ���� -->
    	<div class="container">
	<!-- display : ���� ����Ʈ ������ -->
        	<h1 class="display-3">
        	<!-- ����, ����, �޼ҵ� ȣ������ ���ڿ��� ��½� ���  -->
				<%=greeting%>
        	</h1>
    	</div>
	</div>
	<div class="container">
	<!-- ���ڿ� ��� ���� -->
	    <div class="text-center">
			<h3><%=	tagline	%></h3>
			<%
			//1�ʿ� �ѹ��� ���ΰ�ħ
			response.setIntHeader("refresh", 1);
			
			Date today = new Date();
			SimpleDateFormat format = new SimpleDateFormat("hh:mm:ss a");
			out.println("�������ӽð� : "+format.format(today));
			%>
  		</div>
	</div>
	<!-- footer ����� -->
<jsp:include page="footer.jsp"/>

</body>
</html>