<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>Login</title>
    <link rel="stylesheet" href="../css/layout.css">
    <link rel="stylesheet" href="../css/jquery-ui.css">
  	<script src="../js/jquery-1.12.4.js"></script>
  	<script src="../js/jquery-ui.js"></script>
  </head>
  <script>
  	$( function() {
    	$( "#birthday" ).datepicker( {
			changeMonth: true,
			changeYear: true
    	} );
  	} );
  </script>
  <script>
  function fn_memberSubmit() {
	  /* 데이터 유효성 체크    */
	  var f = document.frm;
	  if(f.userid.value == "") {
		  alert("아이디를 입력해주세요.");
		  return false;
	  }
	  if(f.pwd.value == "") {
		  alert("패스워드를 입력해주세요.");
		  return false;
	  }
	  
	  f.submit();
  }
  
  function fn_popup() {
	  
	  var id = document.frm.userid.value;
	  if(id == "") {
		  alert("아이디를 입력해주세요.");
		  document.frm.userid.focus();
		  return false;
	  }
	  var url = "idcheck.jsp?userid="+id;
	  // window.open('웹주소','별칭','옵션');
	  window.open(url,'popup','width=400,height=150');
  }
  
  </script>
  <style>
  .img {
  width:40px;
  weight:40px;
  }
  </style>
  <body>
     
      <div class="jb-content">
       <br><br><br>
        <div class = "dv2">Login</div>
        <br><br><br>
        
<form name="frm" method="post" action="loginSub.jsp">
<table class="mtable"  align="center">
	<tr>
		<td class="mtd" ><img class="img" src="../picture/아이디.png"></td>  <!-- th:center;bold; -->
		<td class="mtd">
			<input class="textBox1" type="text" name="userid"  maxlength="20">
		
		</td>
	</tr>
	<tr>
		<td class="mtd"><img class="img" src="../picture/비밀번호.png"></td>
		<td class="mtd"><input class="textBox1" type="password" name="pwd" ></td>
	</tr>

	<tr>
		<th class="mtd" colspan="2">
			<input type="submit" class="button1" value="전송" 
					onclick="fn_memberSubmit(); return false;">
		</th>
	</tr>
</table>

<div>

<br><br><br>

<button type="button"  class="btn" onclick="location='idseach.jsp'">아이디찾기</button>
<button type="button"  class="btn" onclick="location='pwdsearch.jsp'">비밀번호찾기</button>
<button type="button"  class="btn" onclick="location='member.jsp'" >회원가입</button>
</div>

</form>
        
        
      </div>
 
 
  </body>
</html>