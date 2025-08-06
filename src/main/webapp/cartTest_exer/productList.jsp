<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니에 넣을 상품 선택</title>
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
	<h2>장바구니에 넣을 상품을 선택하세요</h2>
	<hr>
	<form action="addToCart.jsp">
		<select name="product">
			<option value="스마트폰">스마트폰</option>
			<option value="노트북">노트북</option>
			<option value="아이패드">아이패드</option>
			<option value="무선이어폰">무선이어폰</option>
		</select>
		<br>
		상품 색깔 : 
		<select name="productColor">
			<option value="black">검정</option>
			<option value="gray">회색</option>
			<option value="blue">파란색</option>
		</select>
		<br>
		상품 수량 : <input type="text" name="quantity" size="5" value="1"><br>
		
		<input type="submit" value="장바구니에 담기"> 
	</form>
	<a href="viewCart.jsp" >장바구니 바로가기</a>
</body>
</html>