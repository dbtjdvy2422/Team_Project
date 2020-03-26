<%@page import="javax.swing.ImageIcon"%>
<%@page import="java.awt.Image"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/dbcon2.jsp" %> 
<%
String Domain = "http://localhost:8080/jeju";
String RealPath = "C:/Users/user/eclipse-workspace/jeju/WebContent";
%>
<%
String unq = request.getParameter("unq");
String deptno="";

String sql1 = " select s.unq, s.name, s.addr,s.addr2, s.tel, s.image, s.imgpath, t.dname,t.deptno "; 
		sql1+=" from tourist_spot s, tourist t ";
		sql1+=" where s.deptno=t.deptno and s.unq='"+unq +"' " ;
		Statement stmt1= conn.createStatement();
ResultSet rs1 = stmt1.executeQuery(sql1);

String sql2 = " select deptno,dname "; 
		sql2+=" from tourist ";
		
Statement stmt2= conn.createStatement();
ResultSet rs2 = stmt2.executeQuery(sql2);
rs1.next(); // 포인터 이동
deptno=rs1.getString("deptno");
String name = rs1.getString("name");
String addr = rs1.getString("addr");
String addr2 = rs1.getString("addr2");
String tel = rs1.getString("tel");
String image = rs1.getString("image");
String imgpath = rs1.getString("imgpath");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관광지 수정</title>
<link rel="stylesheet" href="../css/adminlayout.css">
</head>

<style>

input {
	width:300px;
	height:23px;
}
textarea {
	width:400px;
	height:200px;
}


</style>

<script>
function fn_submit() {
	
	var f = document.frm;
	if(f.name.value == "") {
		alert("관광지를 선택해주세요.");
		f.name.focus();
		return false;
	}
	f.submit();
}
</script>
<body>
<div class="container">
	<div class="adminLeft">
	<%@ include file="../include/leftMenu.jsp" %>
	</div>

	<div class="adminRight">
	<!-- 상품등록 -->
	<form name="frm" method="post" action="SpotModifySave.jsp" 
			enctype="multipart/form-data" >
			
			<input type="hidden" name="unq" value="<%=unq%>">
			<input type="hidden" name="oldname1" value="<%=image%>">
	
	<table class="table2">
		<tr>
			<th>테마</th>
			<td><select name="deptno">
			<%
			while( rs2.next() ) {
			
				deptno = rs2.getString("deptno");
				String dname = rs2.getString("dname");
			%>
			<option value="<%=deptno%>"><%=dname %></option>
			
			<%
			}
			%>
				</select>
			</td>
		</tr>
		<tr>
			<th>관광지</th>
			<td><input type="text" name="name" value="<%=name%>"></td>
		</tr>
		<tr>
			<th>주소</th>
			<td><input type="text" name="addr" value="<%=addr%>"></td>
		</tr>
		<tr>
			<th>주소2</th>
			<td><input type="text" name="addr2" value="<%=addr2%>"></td>
		</tr>
		<tr>
			<th>번호</th>
			<td><input type="text" name="tel" value="<%=tel%>"></td>
		</tr>
		<tr>
			<th>이미지</th>
			<td>
	<input type="file" name="file1"> <br>
	<%
	if(!"".equals(image) && image != null) {
		
		String path1 = Domain + imgpath+ "/" + image;
		String path2 = RealPath + imgpath+ "/" + image;
		
		
		File f = new File(imgpath); // 내부경로
		if( f.exists() )  {
			
			Image img = new ImageIcon(path2).getImage();
			int w =img.getWidth(null);
			int h =img.getHeight(null);
			int x=(h*100) /w;
	%>
		<a href="<%=path1%>" target="_blank"><img src="<%=path1%>" 
					width="100" height="<%=x%>"></a>
				
	<%
		} else {
			out.print(  imgpath+ " <이미지 유실 됬습니다.>");
		}
	} else {
		out.print(" <이미지 등록 안됨>");
	}
	%>	
			</td>
		</tr>
	
	</table>
	
	<p style="width:800px; text-align:center;">
		<button type="submit" 
			 onclick="fn_submit();return false;">저장</button>
		<button type="reset">재작성</button>
	</p>
	
	
	</form>
	
	
	</div>
	
</div>

</body>
</html>