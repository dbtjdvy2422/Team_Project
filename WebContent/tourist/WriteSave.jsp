<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@include file="../include/dbcon2.jsp"%>
    <%

    
    String path="/uploadfiles";  //이미지 위치
    String uploadpath = request.getRealPath(path);  //이미지 경로인식
    int maxsize= 1024 * 1024 * 10 ; //10M
    MultipartRequest multi = new MultipartRequest
    		(request,uploadpath,maxsize,"utf-8",new DefaultFileRenamePolicy());
    
    String deptno=multi.getParameter("deptno");
    String name=multi.getParameter("name");
    String addr=multi.getParameter("addr");
    String tel=multi.getParameter("tel");
    String like1=multi.getParameter("like1");
    String jjim=multi.getParameter("jjim");
    String review=multi.getParameter("rivew");
    String back=multi.getParameter("back");
    String hit=multi.getParameter("hit");
    String hashtag=multi.getParameter("hashtag");
    
    Enumeration files= multi.getFileNames();
    int filesize=0;
    
     String file1=(String)files.nextElement();
     String orgName1 = multi.getFilesystemName(file1); //큰이미지
    
    
    String colums="unq,name,addr,tel,image,imgpath,deptno";
    
    
    String sql2= "insert into tourist_spot("+colums+") "
 		   + " values(tourist_seq.nextval," 	   
 		   +" '"+name+"',"
 		   +" '"+addr+"',"
 		   +" '"+tel+"',"
 		   +" '"+orgName1+"',"
 		   +" '"+path+"', "
 		   +" '"+deptno+"') ";
 		   
 int result= stmt.executeUpdate(sql2);
 %>
  <script>
    alert("저장완료");
    location = "spot.jsp"
    
    </script>

 		   