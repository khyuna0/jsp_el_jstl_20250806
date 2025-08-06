<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니에 넣을 상품 선택</title>

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
        width: 500px;
        margin: 30px auto;
        background-color: white;
        padding: 20px 30px;
        border-radius: 8px;
        box-shadow: 0 2px 12px rgba(0,0,0,0.1);
    }

    form {
        display: flex;
        flex-direction: column;
        gap: 15px;
    }

    label {
        font-weight: bold;
        margin-bottom: 5px;
        display: block;
    }

    select, input[type="text"] {
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 14px;
        width: 100%;
    }

    input[type="submit"] {
        padding: 10px;
        background-color: #4a90e2;
        color: white;
        border: none;
        border-radius: 4px;
        font-size: 14px;
        cursor: pointer;
        transition: background-color 0.2s;
    }

    input[type="submit"]:hover {
        background-color: #357ab7;
    }

    .cart-link {
        display: block;
        text-align: center;
        margin-top: 15px;
        text-decoration: none;
        color: #4a90e2;
        font-weight: bold;
    }

    .cart-link:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>

<h2>장바구니에 넣을 상품을 선택하세요</h2>

<div class="container">
    <form action="addToCart.jsp" >
        <div>
            <label>상품 종류</label>
            <select name="product">		
                <option value="스마트폰">스마트폰</option>
                <option value="노트북">노트북</option>
                <option value="아이패드">아이패드</option>
                <option value="무선이어폰">무선이어폰</option>
            </select>
        </div>

        <div>
            <label>상품 색깔</label>
            <select name="productColor">
                <option value="검정">검정</option>
                <option value="회색">회색</option>
                <option value="파란색">파란색</option>
            </select>
        </div>

        <div>
            <label>상품 수량</label>
            <input type="text" name="quantity" size="5" value="1">
        </div>
        
        <input type="submit" value="장바구니에 담기"> 
    </form>

    <a href="viewCart.jsp" class="cart-link">장바구니 바로가기</a>
</div>

</body>
</html>
