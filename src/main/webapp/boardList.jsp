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
<title>자유게시판</title>
</head>
<body>
	<!-- 게시판 글 리스트 -->
	<%
		// 게시판 더미 데이터
		List<BoardDto> boardList = new ArrayList<BoardDto>();
		
		boardList.add(new BoardDto(1,"안녕하세요. 첫 글입니다.", "이순신","2025-08-01"));
		boardList.add(new BoardDto(2,"안녕하세요. 두번째 글입니다.", "김유신","2025-08-02"));
		boardList.add(new BoardDto(3,"안녕하세요. 세번째 글입니다.", "강감찬","2025-08-03"));
		boardList.add(new BoardDto(4,"안녕하세요. 네번째 글입니다.", "홍길동","2025-08-04"));
		boardList.add(new BoardDto(5,"안녕하세요. 다섯번째 글입니다.", "이순신","2025-08-05"));
		
		request.setAttribute("boardList_request", boardList);
	%>
	<h2>자유 게시판 목록</h2>
	<hr>
	<table border="1" cellpadding="0" cellspacing="0">
		<tr>
			<th>No.</th>
			<th>제목</th>
			<th>글쓴이</th>
			<th>날짜</th>
		</tr>
		
		<c:forEach var="boardDto" items="${boardList_request}">
			<tr>
				<td>${boardDto.bnum}</td>
				<td>${boardDto.btitle}</td>
				<td>${boardDto.bwriter}</td>
				<td>${boardDto.bdate}</td>
			</tr>
		</c:forEach>
	</table>
	
	
</body>
</html>