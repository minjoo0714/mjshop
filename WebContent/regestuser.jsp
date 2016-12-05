<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원가입</title>
</head>
<body>
<center>
	<form action="regestuser_ok.jsp"method="post">
			<table cellpadding="50px" style="font-family: GillSans; font-size: 14px; font-weight: 400;">
		<tr  align="center">
			<td colspan="2" align="center">
				<strong style="font-size: 25px">REGISTER NOW</strong>
				<br><br>
		Set up a Min-Joo-Attic account and enjoy these key benefits and more.
			</td>
		</tr>
		<tr>
			<td style="    background-color: #ececec;    width: 920px;    padding: 15px;">
    		<strong style="font-size: 20px;">REGISTERED CUSTOMERS</strong><br>
			<br>
		
			<p>id :<input style="position: relative;
				    width: 420px;
				    font-size: 14px;
				    border: none;
				    background: 0 0;
				    font-family: GillSans;
				    padding: 22px 10px 16px 18px;
				    margin: 0; 
				    width: 250px;" 
				    type="text" name="id"></p>
			<p>pwd :<input style="position: relative;
				    width: 420px;
				    font-size: 14px;
				    border: none;
				    background: 0 0;
				    font-family: GillSans;
				    padding: 22px 10px 16px 18px;
				    margin: 0; 
				    width: 250px;"
				    type="password" name="pwd"></p>
			<p>name :<input style="position: relative;
				    width: 420px;
				    font-size: 14px;
				    border: none;
				    background: 0 0;
				    font-family: GillSans;
				    padding: 22px 10px 16px 18px;" 
				     type = "text" name = "name"></p>
			<input style=" border-radius: 3px;
    padding: 20px 180px;
    text-align: center;
    font-size: 14px;
    line-height: 15px;
    background: #000;
    color: #FFF;
    float: right;
    border: 1px solid #000;"
    type="submit" value ="회 원 가 입">
   					 	</form>
   					 </td>
   					 <td valign="top">
			<img src="image/regester.jpg" width="400"><br><br>
			<span style="font-family: GillSans; font-size: 14px;">
			- Fast sign in and checkout plus delivery updates by SMS <br>
			- Fashion, beauty and fitness emails from our Editors<br>
			- Create and save wish lists of pieces you love<br>
			- Receive invites to sales, offers and more<br>
			- Alerts when items arrive from your favourite designers<br>
			</span>
		</td>
   	</tr>
   					 </table>
   					 </center>
	
</body>
</html>