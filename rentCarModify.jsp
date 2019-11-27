<%@page import="rent.rentCarBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
%>
 <jsp:useBean id="adao" class="rent.rentCarDAO" scope="application"/>
 <%
 	int num = Integer.parseInt(request.getParameter("num"));
 	rentCarBean rentbean = adao.getAddrOne(num);
 %>

<center>
<h2> 렌트내역 수정 (rentCarModify.jsp) </h2>
<hr>
<form action="rentCarModifyProc.jsp" method="post">
<table border="1">
	<tr height="50">
		<td width="100" align="center"> 이름 </td>
		<td width="200" align="center">
		<input type="text" value="<%=rentbean.getName() %>" name="name">
		</td>
	</tr>
	<tr height="50">
		<td width="100" align="center"> 전화번호 </td>
		<td width="200" align="center">
		<input type="text" value="<%=rentbean.getPhone() %>" name="phone">	
		</td>
	</tr>
	<tr height="50">
		<td width="100" align="center"> 렌트카 </td>
		<td width="200" align="center">
		<input type="text" value="<%=rentbean.getCar() %>" name="car">		
		</td>
	</tr>
	<tr height="50">
		<td width="100" align="center"> 대여일 </td>
		<td width="200" align="center">
		<input type="text" value="<%=rentbean.getRent() %>" name="rent">	
		</td>
	</tr>
	<tr height="50">
		<td width="100" align="center"> 반납일 </td>
		<td width="200" align="center">
		<input type="text" value="<%=rentbean.getBack() %>" name="back">	
		</td>
	</tr>
	<tr height="50">
		<td colspan="2" align="center">
		<input type="hidden" name="num" value="<%=rentbean.getNum() %>">
		<input type="submit" value="수정확인">
		<input type="button" value="전체목록보기"
			onclick="location.href=rentCarList2.jsp">
		</td>
	</tr>
</table>
</form>
</center>
</body>
</html>