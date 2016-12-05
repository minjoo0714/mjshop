<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table  style="font-family: GillSans;
    font-size: 14px;
    font-weight: 400;">
		<tr height="300" align="center">
			<td width="250">
				<a href="Gucci.jsp" target="bottom"><img src="image\Gucci1.jpg"></a>
			</td>
			<td width="250">
                <a href="item001.jsp" target="bottom"><img src="image\item01.jpg"></a>
			</td>
			<td width="250">
                <a href="item001.jsp" target="bottom"><img src="image\item01.jpg"></a>
			</td>
		</tr>
		<tr align="center" valign="top">
			<td>
			<span><strong>GUCCI</strong><br> 
					GG Marmont small textured-leather tote<br>
					$2,360 
			</span>
			</td>
			<td>
				<span><strong><a href="Gucci.jsp" style="color: black; text-decoration: none;" target="bottom">BALENCIAGA</a></strong><br> 
                    GG Marmont small textured-leather tote <br>
                    $2,360 
				</span>
			</td>

			<td>
				<span><strong>GUCCI</strong><br> 
					Boston mini printed coated canvas and leather shoulder bag<br>
					$1,012 
				</span>
			</td>
		</tr>
	</table>
</body>

</html>