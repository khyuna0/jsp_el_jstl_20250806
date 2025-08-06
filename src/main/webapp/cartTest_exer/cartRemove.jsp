<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 비우기</title>
</head>
<body>
	<%
		session.invalidate();
	%>
	<h2>장바구니를 비웠습니다.</h2>
	<a href="productList.jsp">상품 담기</a> <br><br>
</body>
</html>