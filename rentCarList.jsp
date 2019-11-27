<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="rent.rentCarBean"%>
    <%@page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%request.setCharacterEncoding("utf-8");%>
<title>Insert title here</title>
</head>
<body>
<center>
<h2>rentCarList.jsp(목록보기)</h2>
<hr>
<a href="sessionMain.jsp"> 홈 </a>
<hr>
<a href="rentCarForm.jsp"> 예약하기 </a>
<hr>
<table border="1">
	<tr height="50">
		<td width="150" align="center">번호</td>
		<td width="150" align="center">이름</td>
		<td width="150" align="center">전화번호</td>
		<td width="150" align="center">렌트카</td>
		<td width="150" align="center">대여일</td>
		<td width="150" align="center">반납일</td>
	</tr>
	
	<!-- ArrayList에 저장한 전체 주소록은 addressDAO 클래스로부터 가져온다
		 addressDAO 클래스의 참조변수 선언 -->
	<jsp:useBean id="adao" class="rent.rentCarDAO" scope="application"/>
	<%
		ArrayList<rentCarBean> rentList = adao.getAddress();
		
		for(int i = 0; i<rentList.size(); i++){
			rentCarBean rent = rentList.get(i);
	%>	
			<tr height="50">
			<td width="150" align="center"><%=rent.getNum() %></td>
				<td width="150" align="center">
				<a href="rentCarInfo.jsp?num=<%=rent.getNum()%>">
				<%=rent.getName() %></a>
				</td>
				<td width="150" align="center"><%=rent.getPhone() %></td>
				<td width="150" align="center"><%=rent.getCar() %></td>
				<td width="150" align="center"><%=rent.getRent() %></td>
				<td width="150" align="center"><%=rent.getBack() %></td>
			</tr>
	<% 
		}
	%>
</table>
</center>
</body>
</html>