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
<style>
    body {
        font-family: 'Segoe UI', sans-serif;
        background-color: #f8f9fa;
        margin: 0;
        padding: 0;
    }

    h2 {
        text-align: center;
        margin-top: 30px;
        color: #333;
    }

    .container {
        width: 900px;
        margin: 30px auto;
        background-color: white;
        padding: 20px 30px;
        border-radius: 8px;
        box-shadow: 0 2px 12px rgba(0,0,0,0.1);
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 15px;
        font-size: 14px;
    }

    th, td {
        border: 1px solid #dddddd;
        padding: 12px 10px;
        text-align: center;
    }

    th {
        background-color: #f5f5f5;
        font-weight: bold;
        color: #333;
    }

    tr:nth-child(even) {
        background-color: #fafafa;
    }

    tr:hover {
        background-color: #f0f8ff;
        transition: background-color 0.2s;
    }

    .btn-box {
        margin-top: 20px;
        text-align: center;
    }

    .btn {
        display: inline-block;
        padding: 8px 16px;
        background-color: #4a90e2;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 13px;
        text-decoration: none;
        margin: 0 5px;
        transition: background-color 0.2s;
    }

    .btn:hover {
        background-color: #357ab7;
    }
</style>
</head>
<body>

<%
    List<ProductDto> cart = (ArrayList<ProductDto>)session.getAttribute("cart");
    request.setAttribute("cart_request", session.getAttribute("cart"));
%>  

<div class="container">
    <c:choose>
        <c:when test="${empty sessionScope.cart}"> 
        <!-- sessionScope로 로그인 여부도 알 수 있음 -->
            <h2>장바구니가 비었습니다.</h2>
            <div class="btn-box">
                <a href="productList.jsp" class="btn">상품 담으러 가기</a>
            </div>
        </c:when>
        <c:otherwise>
            <h2>장바구니 목록</h2>
            <table>
                <tr>
                    <th>번호</th>
                    <th>상품 종류</th>
                    <th>색깔</th>
                    <th>수량</th>
                </tr>
                <c:set var="count" value="0"/>
                <!-- sessionScope 세션에서 직접 가져오기 -->
                <c:forEach var="productDto" items="${sessionScope.cart}">
                    <tr>
                        <td>${count=count+1}</td>
                        <td>${productDto.product}</td>
                        <td>${productDto.color}</td>
                        <td>${productDto.quantity}</td>
                    </tr>
                </c:forEach>
            </table>
            <div class="btn-box">
                <a href="productList.jsp" class="btn">상품 더 담기</a>
                <a href="cartRemove.jsp" class="btn">장바구니 비우기</a>
            </div>
        </c:otherwise>
    </c:choose>
</div>

</body>
</html>
