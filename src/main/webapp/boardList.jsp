<%@page import="com.khyuna0.dto.BoardDto"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>    
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판</title>
<style type="text/css">
	table {
		width: 500px;
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
	<!-- 게시판 글 리스트 -->
	<%
		// 게시판 더미 데이터
		List<BoardDto> boardList = new ArrayList<BoardDto>();
		
		boardList.add(new BoardDto(1,"안녕하세요.안녕하세요.안녕하세요.안녕하세요.안녕하세요.안녕하세요.안녕하세요.안녕하세요.안녕하세요.안녕하세요. 첫 글입니다.", "이순신","2025-08-01"));
		boardList.add(new BoardDto(2,"안녕하세요. 두번째 글입니다.", "김유신","2025-08-02"));
		boardList.add(new BoardDto(3,"안녕하세요. 세번째 글입니다.세번째 글입니다.세번째 글입니다.세번째 글입니다.세번째 글입니다.세번째 글입니다.세번째 글입니다.세번째 글입니다. 세번째 글입니다.", "강감찬","2025-08-03"));
		boardList.add(new BoardDto(4,"안녕하세요. 네번째 글입니다.", "홍길동","2025-08-04"));
		boardList.add(new BoardDto(5,"안녕하세요. 다섯번째 글입니다.", "이순신","2025-08-05"));
		
		request.setAttribute("boardList_request", boardList);
	%>
	<h2>자유 게시판 목록</h2>
	<hr>
	<table>
		<tr>
			<th>No.</th>
			<th>제목</th>
			<th>글쓴이</th>
			<th>날짜</th>
		</tr>
		
		<c:forEach var="boardDto" items="${boardList_request}"> <!-- items 에 배열 또는 컬렉션만 가능 -->
			<tr>
				<td>${boardDto.bnum}</td>
				<td>	
				<!-- 게시판 글 제목이 20자 이상일 때 20자 까지만 보여주고 ... 처리하기 -->				
				<c:choose>
					<c:when test="${fn:length(boardDto.btitle) > 20}">
					<a href="#">${fn:substring(boardDto.btitle,0,20)}...</a>
					</c:when>
					<c:otherwise>
					<a href="#">${boardDto.btitle}</a>
					</c:otherwise>
				</c:choose>
				</td>
				<td>${boardDto.bwriter}</td>
				<td>${boardDto.bdate}</td>
			</tr>
		</c:forEach>
	</table>
	
	
</body>
</html>