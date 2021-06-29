<%@page import="com.project.dto.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.project.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update</title>
</head>
<body>
<%
	BoardDAO bdao = BoardDAO.getInstance();
	ArrayList<BoardVO> bvc = bdao.getMemberList();
%>
<%
			for(int i = 0; i<bvc.size();i++){
				BoardVO vo = bvc.get(i);
%>
	<form action="update.do" method="post" name="frm">
		<table align="center" width="550">
			<tr>
				<td colspan="2" align="center">회원수정</td>
			</tr>
			<tr>
				<td id="front">아이디</td>
				<td><%=vo.getId() %></td>
			</tr>
			<tr>
				<td id="front">비밀번호</td>
				<td><input type="password" name="pwd"></td>
			</tr>
			<tr>
				<td id="front">이름</td>
				<td><input type="text" name="name" value="${member.name }"></td>
			</tr>
			<tr>
				<td id="front">이메일</td>
				<td><input type="text" name="email" value="${member.email }"></td>
			</tr>
			<tr>
				<td id="front">연락처</td>
				<td><input type="text" name="phone" value="${member.phone }"></td>
			</tr>
			<tr>
				<td align="center">성별</td>
				<td>
					<select name="gender">
					<c:choose>
							<c:when test='${member.gender == "1" }'>
								<option value="1" selected="selected">남자</option>
								<option value="2" >여자</option>
							</c:when>
							<c:otherwise>
								<option value="1">남자</option>
								<option value="2" selected="selected">여자</option>
							</c:otherwise>
						</c:choose>
					</select>
				</td>
			</tr>
			<tr align="center">
				<td colspan="2">
					<input type="submit" value="수정">
					<input type="reset" value="취소">
					<input type="button" value="메인 페이지로 이동" onclick="location.href='main.jsp'">
				</td>
			</tr>
		<%
			}
		%>	
		</table>
	</form>
</body>
</html>