<%@page import="com.project.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>search</title>
</head>
<body>
	<form action="search.do" method="post">
	
		<jsp:useBean id="bvo" class="com.project.dto.BoardVO">
			<jsp:setProperty name="bvo" property="*" />
		</jsp:useBean>
		
		<table align="center">
			<th>이름을 입력하세요</th>
			<tr>
				<td><input type="text" name="name"></td>
				<td><input type="submit" value="찾기"></td>
			</tr>

		</table>
	</form>
</body>
</html>