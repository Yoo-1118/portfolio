<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%request.setCharacterEncoding("utf-8");%>
</head>
<body>
<center>
<h2> 입력내용 확인 </h2>
<jsp:useBean id="rent" class="rent.rentCarBean"/> 
<jsp:setProperty name="rent" property="*"/>

<jsp:useBean id="adao" class="rent.rentCarDAO" scope="application"/>
 <%
 	adao.insertAddr(rent);
 %>
<table  border="1">
<tr>
<td width=100 align="center">이름</td>
<td width=250 align="center"><%=rent.getName() %></td>
</tr>
<tr>
<td width=100 align="center">비밀번호</td>
<td width=250 align="center"><%=rent.getPassword() %></td>
</tr>
<tr>
<td width=100 align="center">전화번호</td>
<td width=250 align="center"><%=rent.getPhone() %></td>
</tr>
<tr>
<td width=100 align="center">이메일</td>
<td width=250 align="center"><%=rent.getEmail() %></td>
</tr>
<tr>
<td width=100 align="center">경력</td>
<td width=250 align="center"><%=rent.getWork() %></td>
</tr>
<tr>
<td width=100 align="center">차량선택</td>
<td width=250 align="center"><%=rent.getCar() %></td>
</tr>
<tr>
<td width=100 align="center">취미</td>
<td width=250 align="center"><%=rent.getHobby() %></td>
</tr>
<tr>
<td width=100 align="center">직업분야</td>
<td width=250 align="center"><%=rent.getJob() %></td>
</tr>
<tr>
<td width=100 align="center">대여일</td>
<td width=250 align="center"><%=rent.getRent() %></td>
</tr>
<tr>
<td width=100 align="center">반납일</td>
<td width=200 align="center"><%=rent.getBack() %></td>
</tr>
</table>
<a href="rentCarList.jsp"> 전체 예약내역 보기</a>
<a href="rentCarForm.jsp"> 홈 </a>
</center>
</body>
</html>