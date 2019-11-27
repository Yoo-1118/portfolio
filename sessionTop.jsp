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
<center>
<table width="800">
<tr height="100"><!-- 그림과 사이트 제목이 들어감 -->
	<td align="center" colspan="2"><!-- 그림(colspan="2") -->
		<img src="Image/carimage.png" width="300" height="100">
	</td>
	<td align="center" colspan="4"><!-- 사이트 제목(colspan="4") -->
		<font size="15">하이유 렌터카</font>
	</td>
</tr>
<tr height="50"><!-- 메뉴가 들어간다 -->
	<td align="center" width="130"><a href="rentCarForm.jsp"> 렌터카예약 </a></td>
	<td align="center" width="130"><a href="rentCarList.jsp"> 전체예약보기 </a></td>
	<td align="center" width="130"><a href="#"> 이용안내 </a></td>
	<td align="center" width="130"><a href="#"> 우대사항 </a></td>
	<td align="center" width="130"> 
		<%
			//logout이 1이면 session을 초기화해준다. -> id=null
			String logout = request.getParameter("logout");
			if(logout != null){
				session.setAttribute("id",null);
				session.setMaxInactiveInterval(0); // 계속 유지되지 않도록
			}
			//세션으로부터 id값을 읽어오기. 초기에는 null값이 저장되어 있음
			String id = (String)session.getAttribute("id");
			if(id==null){ //처음 읽어올 경우 초기 값을 지정
				id="손님";
			}
			
			if(id.equals("손님")){ //string이기 때문에 equals사용
		%>
			<%=id %>님<input type="button"value="로그인"
						onclick="location.href='sessionLogin.jsp'"> 
										<!-- 로그인 폼 요청. Main의 center부분에 불러오기 위해.
											 버튼을 누르면 sessionMain.jsp이 실행되고,
											 center부분에sessionLogin.jsp가 호출된다.  -->
		<%
			}
			else{ //id를 설정했을 경우. 그럼 서버에서 id를 계속 갖고있음. 로그인 상태를 의미함 !!!!!
		%>
			<%=id %>님<input type="button"value="로그아웃"
						onclick="location.href='sessionMain.jsp?center=Center.jsp&logout=1'"> 
						<!-- 로그인 폼 요청. 로그아웃버튼을 
							버튼을 누르면 sessionMain.jsp이 실행되고,
							center에 center.jsp를, logout에는 1을 저장
							(로그인 버튼을 누르기만 하면 center에는 값이 저장됨)
							  -->
				<!-- 
					? : 파라메터를 추가합니다.
					& : 다른 파라메터를 또 추가한다.(기억)
				 -->
		<%
			}
		%>
	</td>
</tr>
</table>
</center>
</body>
</html>