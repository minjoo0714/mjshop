<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
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
		
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	int flag = dao.selectPwd(id,pwd);
	
 	if(flag == 0) { //틀린 경우
 		 %> <script> alert("로그인 실패"); history.go(-1); </script> <%
	} else if(flag == 1) { //맞은 경우
 		response.sendRedirect("login_ok.jsp");
	}
%>
