<%@page import="com.project.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>searchproc</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	%>
	<jsp:useBean id="bvo" class="com.project.dto.BoardVO">
		<jsp:setProperty name="bvo" property="*" />
	</jsp:useBean>
	
	<%
		String name = request.getParameter("name");
		BoardDAO bdao = BoardDAO.getInstance();
		String name2 = bdao.getName(name);
		
		if (bvo.getName() != "") {
			if (bvo.getName().equals(name)) {
				bdao.searchMember(name);
				response.sendRedirect("search.jsp");
			} else{
	%> 
	<script type="text/javascript">
		alert("이름이 맞지 않습니다. 다시 확인해 주세요!!!");
		hitory.go(-1);
	</script>
 <%
	}
	}else{
%> 
	<script type="text/javascript">
		alert("이름을 입력해주세요!!!");
		hitory.go(-1);
	</script>
 <%
	}
%>
</body>
</html>