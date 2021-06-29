<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>searchSuccess</title>
</head>
<body>
<div align="center">

<h3>회원찾기</h3>
	<table width="800" border="1">
		<tr height = "50">
			<td align="center" width="150">아이디</td>
			<td align="center" width="150">이름</td>
			<td align="center" width="250">이메일</td>
			<td align="center" width="200">전화번호</td>
			<td align="center" width="200">성별</td>
			<td align="center" width="150">삭제</td>
			<td align="center" width="150">수정</td>
		</tr>
			<tr height = "50">
				<td align="center" width="150">${member.getId() }</td>
				<td align="center" width="150">${member.getName() }</td>				
				<td align="center" width="250">${member.getEmail() }</td>				
				<td align="center" width="200">${member.getPhone() }</td>				
				<td align="center" width="200">${member.getGender() }</td>	
				<td align="center" width="200"><button onclick="location.href='delete.jsp'">삭제</button></td>
				<td align="center" width="200"><button onclick="location.href='update.jsp'">수정</button></td>			
			</tr>
	</table>
</div>
</body>
</html>