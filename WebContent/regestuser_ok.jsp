<%@page import="com.member.MemberDAO"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.util.DBConn"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="dto" class="com.member.MemberDTO" scope="page" />
<jsp:setProperty property="*" name="dto" />    
    
<%
	Connection conn = DBConn.getConnection();
	MemberDAO dao = new MemberDAO(conn);
	
	dao.insertUser(dto);
	
	DBConn.close();
	response.sendRedirect("main.jsp");
	
%>