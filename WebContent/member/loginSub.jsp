<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/dbcon2.jsp" %>
<%
String userid=request.getParameter("userid");
String pwd=request.getParameter("pwd");



String sql="select count(*) cnt from member ";
sql+= " where userid='"+userid+"'and pwd='"+pwd+"' ";

ResultSet rs=stmt.executeQuery(sql);
rs.next();
int cnt=rs.getInt("cnt"); //숫자->1 

if(cnt==0) {
	%>
	<script>
	alert("오류");
	history.back();
	</script>
	<%
	return;
}
// 관리자 모드
if((userid.equals("aaa") && pwd.equals("1234"))){
    session.setAttribute("userid",userid);
    response.sendRedirect("../member/loginOk.jsp");
    }else{
    	response.sendRedirect("login.jsp");

    	
    }
%>









