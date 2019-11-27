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
<h2> 예약 내역 (rentCarInfo.jsp) </h2>
<table border="1">
	<tr height="50">
		<td width="100" align="center"> 이름 </td>
		<td width="200" align="center">
			<%=rentbean.getName() %>
		</td>
	</tr>
	<tr height="50">
		<td width="100" align="center"> 전화번호 </td>
		<td width="200" align="center">
			<%=rentbean.getPhone() %>
		</td>
	</tr>
	<tr height="50">
		<td width="100" align="center"> 렌트카 </td>
		<td width="200" align="center">
			<%=rentbean.getCar() %>
		</td>
	</tr>
	<tr height="50">
		<td width="100" align="center"> 대여일 </td>
		<td width="200" align="center">
			<%=rentbean.getRent() %>
		</td>
	</tr>
	<tr height="50">
		<td width="100" align="center"> 반납일 </td>
		<td width="200" align="center">
			<%=rentbean.getBack() %>
		</td>
	</tr>
	<tr height="50">
		<td colspan="2" align="center">
		<input type="button" value="수정하기"
			onclick="location.href='rentCarModify.jsp?num=<%=rentbean.getNum()%>'">
		<input type="button" value="전체목록보기"
			onclick="location.href='rentCarList.jsp'">
		</td>
	</tr>
</table>
</center>
</body>
</html>