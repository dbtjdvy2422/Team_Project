<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file="../include/dbcon2.jsp" %> 
    
    <%
    
    String deptno =request.getParameter("deptno");
    String sql = " select image,name,addr,imgpath "
       		     + " from tourist_spot "
       		     + " where deptno = '"+deptno+"' "
       		     + " order by name asc";
    out.print(sql);
    //ResultSet rs= stmt.executeQuery(sql);
    
%>