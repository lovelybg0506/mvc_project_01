<%@page import="com.project.dto.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.project.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 보기</title>
</head>
<body>
<%
	BoardDAO bdao = BoardDAO.getInstance();
	ArrayList<BoardVO> bvc = bdao.getMemberList();
%>
<div align="center">

<h3>모든 회원 보기</h3>
	<table width="800" border="1">
		<tr height = "50">
			<td align="center" width="150">아이디</td>
			<td align="center" width="150">이름</td>
			<td align="center" width="250">이메일</td>
			<td align="center" width="200">전화번호</td>
			<td align="center" width="200">성별</td>
			<td align="center" width="200"></td>
			<td align="center" width="200"></td>
		</tr>
		<%
			for(int i = 0; i<bvc.size();i++){
				BoardVO vo = bvc.get(i);
		%>
			<tr height = "50">
				<td align = "center" width = "150"><%=vo.getId() %></td>
				<td align="center" width="150"><%=vo.getName() %></td>				
				<td align="center" width="250"><%=vo.getEmail() %></td>				
				<td align="center" width="250"><%=vo.getPhone() %></td>				
				<td align="center" width="200"><%=vo.getGender() %></td>				
				<td align="center" width="200"><input type="button" value="수정" onclick="location.href='update.do'"></td>
				<td align="center" width="200"><input type="button" value="삭제" onclick="location.href='delete.do'"></td>
			</tr>
		<%
			}
		%>		
	</table>
</div>
</body>
</html>