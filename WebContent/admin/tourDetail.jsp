<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@include file="../include/dbcon2.jsp" %>
    <%
    String unq=request.getParameter("unq"); //unq받기
    
    String sql= "select s.name,s.addr,s.tel,t.dname,t.deptno "; 
    sql+=" from tourist_spot s, tourist t ";//sql작성
     	sql+=	"where s.deptno=t.deptno and  unq='"+unq+"' " ;


    	ResultSet rs=stmt.executeQuery(sql); //sql적용
    	rs.next();
    	String dname=rs.getString("dname");
		String name=rs.getString("name");
		String addr=rs.getString("addr");
		String tel=rs.getString("tel");

	
   %>
    
 <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관광지</title>
<link rel="stylesheet" href="../css/adminlayout.css">
</head>

<style>
table.table1{
font-size:15px;
margin-left:100px;
width:800px;
border:0px solid #ccc;
cellspacing:0px;
font-family:맑은 고딕;
line-height:1.6;
margin-top:20px;

}
td{
text-align:center;
}
.div2{
text-align:center;
}

</style>
<body>
<div class="container">
	<div class="adminLeft">
	 <%@include file="../include/leftMenu.jsp" %>
	</div>

	<div class="adminRight">
	<table class="table1">
	
			
			
			<tr>
			
			<td>관광지</td>
			<td><%=name %></td>
				
			</tr>
			
			<tr>
			
			<td>테마</td>
			<td><%=dname %></td>
				
			</tr>
			
			<tr>
			
			<td>주소</td>
			<td><%=addr %></td>
				
			</tr>
			
			<tr>
			
			<td>번호</td>
			<td><%=tel %></td>
				
			</tr>
			
			
			<tr>
			
			<td>이용안내</td>
			<td><a href="useDetail.jsp?unq=<%=unq %>">link</a>
				<a href="useWrite.jsp?unq=<%=unq %>">추가</a></td>
			</tr>
			
			
			<tr>
			
			<td>상세정보</td>
			<td><a href="content.jsp?unq=<%=unq %>">link</a>
			<a href="content.jsp?unq=<%=unq %>">추가</a></td>
			</tr>
			
			
			<tr>
			
			<td>사진</td>
			<td><a href="picture.jsp?unq=<%=unq %>">관리자link</a>
			<a href="pictureList.jsp?unq=<%=unq %>">홈페이지link</a></td>
				
			</tr>
			

		</table>
		<br><br><br>

  <div class="div2">
  
        	<input type="button" value="수정"
        	onclick="location='SpotModify.jsp?unq=<%=unq%>'">
        	<input type="button" value="삭제"
        	onclick="fn_delete()">  
  </div>
  
  
  </div>
    </form>
	</div>





  
</div>


</body>
</html>