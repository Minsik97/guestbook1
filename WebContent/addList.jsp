<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import = "com.javaex.dao.GuestbookDao" %>
<%@ page import = "java.util.List" %>
<%@ page import = "com.javaex.vo.GuestbookVo" %>


<%
	GuestbookDao guestbookDao = new GuestbookDao();
	List<GuestbookVo> guestbookList = guestbookDao.getgdList();

	
%>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="./add.jsp" method="get">
		<table border="3" >
		
			<tr>
				<td bgcolor="EEEEEE" align="center">이름</td>
				<td ><input type="text" name ="name"></td>
				<td bgcolor="EEEEEE">비밀번호</td>
				<td><input type="text" name ="password"></td>
			</tr>
			
			<tr>
				<td colspan="4" ><textarea  name="content"></textarea></td>
			</tr>
			
			<tr>
				<td  bgcolor="EEEEEE" colspan="4" ><button type = "submit">확인</button></td>
			</tr>
			
		</table>
	</form>
	
	
	<% for (int i = 0; i<guestbookList.size(); i++) { %>
		<table border="2">
			<tr>
				<td><%=guestbookList.get(i).getNo() %></td>
				<td><%=guestbookList.get(i).getName() %></td>
				<td><%=guestbookList.get(i).getRegDate() %></td>
				<td><a href="./deleteForm.jsp?no=<%=guestbookList.get(i).getNo() %>">삭제</a></td>
			</tr>
			<tr>
				<td colspan="4"><%=guestbookList.get(i).getContent() %></td>
			</tr>
		</table>
	
	<%}%>
	
</body>
</html>