<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 연습 3 (for 문)</title>
</head>
<body>
	<!-- java for 문 -->
	<%
		for (int i=0;i<10;i++) {
			out.println(i + "<br>");
		}
	%>
	<%
		for (int i=0;i<=5;i++) {
			%> <h2>안녕하세요</h2> <%
		}
	%>
	
	<%
		String[] strs = {"이순신", "강감찬", "김유신"};
		
		request.setAttribute("strs", strs);
		
		for (String str : strs){
			out.println(str+"<br>");
		}
		
	%>
	
	
	<hr>
	<!-- JSTL for 문 연습 -->
	<c:forEach var="i" begin="0" end="9" step="2">
		<h4>${i}</h4>
	</c:forEach>
	<hr>
	
	<c:forEach var="i" begin="1" end="5" >
		<h2>안녕하세요!</h2>
	</c:forEach>
	<hr>
	<ul> <!-- 배열 -->
		<c:forEach var="str" items="${strs }">
			<li><h2>${str }</h2></li>
		</c:forEach>
	</ul>
</body>
</html>