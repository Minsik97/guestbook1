<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="com.javaex.dao.GuestbookDao" %>
<%@page import="com.javaex.vo.GuestbookVo" %>
<%@ page import="java.util.List"%>

<%
 	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String content = request.getParameter("content");
	String reg_date = request.getParameter("reg_date");

	GuestbookVo guestbookVo = new GuestbookVo(name, password, content, reg_date);
	
	GuestbookDao guestbookDao = new GuestbookDao();
	
	//저장
	guestbookDao.gbInsert(guestbookVo);
	
	response.sendRedirect("./addList.jsp");
%>
