<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Function 라이브러리 연습</title>
</head>
<body>
	<%
		String str = "korea";
		//System.out.println("문자열 str의 길이 : " + str.length());
	%>
	<c:set var ="str1" value ="Korea"/>
	<h2>문자열 str1의 길이 : ${fn:length(str1)}</h2>
	<hr>
	<!-- 아래 에러는 문제 없음, 인식 문제 
	<c:set var ="strArr" value ="${['kor','jap','usa']}"/>
	<h2>배열 strArr : ${fn:length(strArr)}</h2>
	<hr>
	<h2>대문자로 변환 : ${fn:toUpperCase(str1)}</h2>
	<h2>소문자로 변환 : ${fn:toLowerCase(str1)}</h2>
	<hr>
	-->
	<c:set var="str2" value="I Love You!!" />
	<h2>앞에서 4글자 추출 : ${fn:substring(str2,0,4)}</h2>
	<h2>중간 4글자 Love 추출 :  ${fn:substring(str2,2,6)}</h2>
	<h2>뒤로부터 5글자 추출 : ${fn:substring(str2,7,12)}</h2>
	
	
	
</body>
</html>