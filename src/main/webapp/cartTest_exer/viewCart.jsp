<%@page import="com.khyuna0.dto.ProductDto"%>
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
	List<ProductDto> cart = (ArrayList<ProductDto>)session.getAttribute("cart");
	request.setAttribute("cart_request", session.getAttribute("cart"));
	
%>	
	<c:choose>
	<c:when test="${cart == null }">
		<h2>장바구니가 비었습니다.</h2>
		<a href="productList.jsp">상품 담으러 가기</a> <br><br>
	</c:when>
	<c:otherwise>
	<h2>장바구니 목록</h2>
		<hr>
		<table>
			<tr>
				<th>번호</th>
				<th>상품 종류</th>
				<th>색깔</th>
				<th>수량</th>
			</tr>	
		<c:forEach var="productDto" items="${ cart_request}" varStatus="loop" >
			<tr>
				<td>${productDto.num}</td> <!-- 자동으로 getter 호출 -->
				<td>${productDto.product}</td>
				<td>${productDto.color}</td>
				<td>${productDto.quantity}</td>
			</tr>
		</c:forEach>	
		</table>
		<a href="productList.jsp">상품 더 담기</a> <br><br>
		<a href="cartRemove.jsp">장바구니 비우기</a> <br><br>
	</c:otherwise>
	</c:choose>
		
</body>
</html>