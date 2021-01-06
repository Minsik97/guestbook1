<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import ="com.javaex.dao.GuestbookDao" %>
<%@ page import ="com.javaex.vo. GuestbookVo" %>

<%
	int no = Integer.parseInt(request.getParameter("no"));
	String password = request.getParameter("password");

	GuestbookDao guestbookDao = new GuestbookDao();
	int ex = guestbookDao.gbDelete(no, password);
	
	if( ex==1 ){
		response.sendRedirect("./addList.jsp");
	}

%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%if (ex == 0){%>
		잘못 입력했습니다.<br>
		<a href = "./deleteForm.jsp?no=<%=no %>">다시 입력하기</a>
	<% } else{%>
		삭제되었습니다.
	<%}%>
	
	
</body>
</html>