<%@page import="com.khyuna0.dto.ProductDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니에 상품 넣기</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String product = request.getParameter("product");
		String productColor = request.getParameter("productColor");
		String quantity = request.getParameter("quantity");
	
		List<ProductDto> cart = (ArrayList<ProductDto>)session.getAttribute("cart");
		
		if (cart == null) { 
			cart = new ArrayList<ProductDto>(); 
		}
		
		System.out.println(cart.size()+ 1);
		cart.add(new ProductDto((cart.size()+ 1),product, productColor, quantity));
		session.setAttribute("cart", cart);
	%>
	
		<h2>장바구니에 색상이 <%=productColor%>인 <%= product %>이(가) <%= quantity %>개 추가되었습니다.</h2>
		<a href="productList.jsp">상품 더 담기</a> <br><br>
		<a href="viewCart.jsp">장바구니 보기</a> <br><br>
		
	
</body>
</html>