<%@page import="com.member.MemberDAO"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.util.DBConn"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
%>

<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	Connection conn = DBConn.getConnection();
	MemberDAO dao = new MemberDAO(conn);
	
	String selectPwd = dao.selectPwd(id);
	
	if(pwd==selectPwd)
	{
		response.sendRedirect("main.jsp"); 
		System.out.println("로그인 성공");
	}
	else
	{
		response.sendRedirect("main.jsp"); 
		System.out.println("로그인 성공");
	}

%>