<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    <%
    String userid = (String)session.getAttribute("userid");
    if(userid.equals("aaa")){ 
    %>
       <script>
       location= "../admin/SpotList.jsp";
       </script>
    <%
    } else {  %>
    <script>
       location= "../member/login.jsp";
       </script>   
    <%
    }
    %>

</body>
</html>