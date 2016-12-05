<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
%>
<%  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	
	/* function sendIt()
	{
		f= document.myForm;
		
		str = f.subject.value;
		str = str.trim();
		//-- javascript 에는 『trim()』이 없다.
		//   외부 파일 『util.js』 파일을 참조한다.(외부에 생성)
		
		if(!str)
		{
			alert("\n제목을 입력하세요");
			f.subject.focus();
			return;
		}
		f.subject.value = str;
		
		str = f.name.value;
		str = str.trim();
		
		if(!str)
		{
			alert("\n이름을 입력하세요");
			f.name.focus();
			return;		
		}
		f.name.value = str;
		
		if(f.email.value)
		{
			if(!isValidEmail(f.email.value))
			{
				alert("\n형식에 맞는 E-Mail을 입력하세요");
				f.email.focus();
				return;						
			}
		}
		str = f.content.value;
		str = str.trim();
		
		if (!str)
		{
			alert("\n내용을 입력하세요");
			f.content.focus();
			return;			
		}
		f.content.value = str;
		
		str = f.pwd.value;
		str = str.trim();
		
		if(!str)
		{
			alert("\n패스워드를 입력하세요");
			f.pwd.focus();
			return;		
		}
		f.pwd.value = str;
		
		f.action = "created_ok.jsp"
		
		f.submit();
		
		
	} */
</script>
</head>
<body>
<center>
	<form action="login.jsp" method="post" >
		<table cellpadding="30px" style="font-family: GillSans; font-size: 14px; font-weight: 400;">
			<tr>
				<td align="center">
					<strong style="font-size: 28px;">SIGN IN</strong>
					<br><br>
					한국어 상담 고객센터: 01028571088 Email customer care | Packaging options | Shipping information | Return policy
				</td>
			</tr>
			<tr>
				<td style="    background-color: #ececec;    width: 920px;    padding: 15px;">
	    		<strong style="font-size: 20px;">REGISTERED CUSTOMERS</strong><br>
					If you have already registered with Joo_Attic, then sign in here. 
					Please note: if you have only subscribed to the weekly newsletter, you are not a registered user and need to register below.
				<br>
				<p><label style="width: 200px;     float: left;" for="name">Enter your ID</label><input style="margin: 0; width: 250px;" type="text" name="id"></p>
				<p><label style="width: 200px;     float: left;" for="pwd">Enter your password</label><input style="margin: 0; width: 250px;" type="password" name="pwd">
				<input type="submit" value ="Sign in Now" style="background-color: #000;
				    color: #fff;
				    font-size: 12px;
				    font-weight: normal;
				    padding: 8px 13px;
				    border: 1px solid black;
					float: right;
				    border-radius: 3;" >
				</p>			
				</td>
			</tr>
		</table>
	</form>	
</center>
</body>
</html>