<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@ include file="../include/dbcon2.jsp" %> 

<%
String unq=request.getParameter("unq");



%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제주도 관광명소 추가</title>

<link rel="stylesheet" href="../css/adminlayout.css">
</head> 

<style>


width:300px;
height:23px;

}

textarea{

width:500px;
height:80px;

}
</style>





<body>
<div class="container">
	<div class="adminLeft">
	 <%@include file="../include/leftMenu.jsp" %>
	</div>

	<div class="adminRight">
	<!-- 상품등록 -->
	<form name="frm" method="post" action= "useWriteSave.jsp">
	<table class="table1">
	 <tr>
 <td><input type="hidden" name="pid" value="<%=unq%>"></td>
 </tr>
 <tr>
 <td>소개</td>
 <td><input type="text" name="a1"></td>
 </tr>
 
 <tr>
 <td>상세정보</td>
 <td><input type="text" name="a2"></td>
 </tr>
 
 <tr>
 <td>이용시간</td>
 <td><input type="text" name="a3"></td>
 </tr>
 
 <tr>
 <td>요금정보</td>
 <td><input type="text" name="a4"></td>
 </tr>
 
 <tr>
 <td>장소특성</td>
 <td><input type="text" name="a5"></td>
 </tr>
 
 <tr>
 <td>주요목적</td>
 <td><input type="text" name="a6"></td>
 </tr>
 
 <tr>
 <td>주요목적 기타</td>
 <td><input type="text" name="a7"></td>
 </tr>
 
 <tr>
 <td>경사도(난이도)</td>
 <td><input type="text" name="a8"></td>
 </tr>
 
 <tr>
 <td>편의시설</td>
 <td><input type="text" name="a9"></td>
 </tr>
 
 <tr>
 <td>기타 상세</td>
 <td><input type="text" name="a10"></td>
 </tr>


	</table>
	 <p style="width:800px; text-align:center;">
	<button type = "submit">저장</button>	
	<button type="reset">재작성</button>
	</p>
</form>
	</div>
	
</div>

</body>
</html>