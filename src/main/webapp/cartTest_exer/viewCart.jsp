<%@page import="com.khyuna0.dto.BoardDto"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 보기</title>
<style type="text/css">
	table {
		width: 800px;
		border-collapse: collapse;
	}
	th, td {
		border: 1px solid; #dddddd;
		padding: 10px;
		text-align: center;
	}
	th {
		background-color: #f5f5f5;

	}

</style>
</head>
<body>
<%
	request.setAttribute("cart_request", session.getAttribute("cart"));

%>
	<h2>장바구니 목록</h2>
		<hr>
		<table>
			<tr>
				<th>번호</th>
				<th>상품 종류</th>
				<th>색깔</th>
				<th>수량</th>
			</tr>	
		<c:forEach var="productDto" items="${ cart_request}" >
			<tr>
				<td>${productDto.num}</td>
				<td>${productDto.product}</td>
				<td>${productDto.color}</td>
				<td>${productDto.quantity}</td>
			</tr>
		</c:forEach>	
		</table>
		
		
</body>
</html>