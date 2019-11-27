<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%request.setCharacterEncoding("utf-8");%>
<title>Insert title here</title>
</head>
<body>
<form action = "rentCarProc.jsp" method="post">
<center>
<h2>예약하기 (rentCarForm.jsp) </h2>
<hr>
<a href="sessionMain.jsp"> 홈 </a>
<table  border="1">
<tr>
<td width=100 align="center">이름</td>
<td width=250 align="center"><input type="text" name="name"></td>
</tr>
<tr>
<td width=100 align="center">비밀번호</td>
<td width=250 align="center"><input type="text" name="password"></td>
</tr>
<tr>
<td width=100 align="center">전화번호</td>
<td width=250 align="center"><input type="text" name="phone"></td>
</tr>
<tr>
<td width=100 align="center">이메일</td>
<td width=250 align="center"><input type="text" name="email"></td>
</tr>
<tr>
<td width=100 align="center">경력</td>
<td width=250 align="center">
	<select name="work">
	<option value="1년 미만">1년 미만</option>
	<option value="3년 이상">3년 이상</option>
	<option value="5년 이상">5년 이상</option>
	<option value="10년 이상">10년 이상</option>
	</select>
</td>
</tr>
<tr>
<td width=100 align="center">차량선택</td>
<td width=250 align="center">
	<select name="car">
	<option value="모닝">모닝</option>
	<option value="아반테">아반테</option>
	<option value="소나타">소나타</option>
	<option value="그랜져">그랜져</option>
	<option value="투싼">투싼</option>
	<option value="싼타페">싼타페</option>
	</select>
</td>
</tr>
<tr>
<td width=100 align="center">취미</td>
<td width=250 align="center">
<input type="radio" name="hobby" value="낚시">낚시
<input type="radio" name="hobby" value="독서">독서
<input type="radio" name="hobby" value="영화감상">영화감상
<input type="radio" name="hobby" value="음악감상">음악감상
<input type="radio" name="hobby" value="공부">공부
</td>
</tr>
<tr>
<td width=100 align="center">직업분야</td>
<td width=250 align="center">
<input type="radio" name="job" value="student">학생
<input type="radio" name="job" value="teacher">교사
<input type="radio" name="job" value="professor">교수
<input type="radio" name="job" value="none">백수
<input type="radio" name="job" value="angel">천사
</td>
</tr>
<tr>
<td width=100 align="center">대여일</td>
<td width=250 align="center"><input type="text" name="rent"></td>
</tr>
<tr>
<td width=100 align="center">반납일</td>
<td width=200 align="center"><input type="text" name="back"></td>
</tr>
	<tr height ="40">
		<td align="center" colspan="2">
			<input type="submit" value="확인">
			<input type="reset" value="취소">
		</td>
	</tr>
</table>
</center>
</form>
</body>
</html>