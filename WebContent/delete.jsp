<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delete</title>
</head>
<body>
	<form action="delete.jsp" method="post" name="frm">
			<table width="550" align="center">
				<tr>
					<td colspan="2" align="center">회원삭제</td>
				</tr>
			<tr>
				<td id="front">아이디</td>
				<td><input type="text" name="id" value="${loginUser.id }" readonly="readonly"></td>
			</tr>
			<tr>
				<td id="front">비밀번호</td>
				<td><input type="password" name="pwd"></td>
			</tr>
			<tr>
				<td id="front">이름</td>
				<td><input type="text" name="name" value="${loginUser.name }"></td>
			</tr>
			<tr>
				<td id="front">이메일</td>
				<td><input type="text" name="email" value="${loginUser.email }"></td>
			</tr>
			<tr>
				<td id="front">연락처</td>
				<td><input type="text" name="phone" value="${loginUser.phone }"></td>
			</tr>
			<tr>
				<td align="center">성별</td>
				<td><input type="text" name="gender" value="${loginUser.gender }"></td>
			</tr>
			<tr align="center">
				<td colspan="2">
					<input type="submit" value="삭제">
					<input type="reset" value="취소">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>