<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action = "sessionLoginProc.jsp" method="post">
<table border="1">
	<tr height ="60">
		<td width ="150" align="center">아이디</td>
		<td width ="150" align="center">
			<input type="text" name="id">
		</td>
	</tr>
	<tr height ="40">
		<td align="center" colspan="2">
			<input type="submit" value="확인">
			<input type="reset" value="취소">
		</td>
	</tr>
</table>
</form>
</body>
</html>