<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>Login</title>
 
  </head>
   <style>
        #wrap{
        	
            width:730px;
            margin-left:auto; 
            margin-right:auto;
            text-align:center;
        }
        
        table{
        margin-top:60px;
        margin-left:420px;
        width:800px;
        height:500px;
            border:3px solid skyblue
        }
        
        td{
        
            border:1px solid gray
        }
        
        #title{
            background-color:white
        }
        .div1{
        font-size:40px;
        text-align:center;
        font-family:맑은 고딕;
        }
    </style>
  <script>
  function fn_memberSubmit() {
	  /* 데이터 유효성 체크    */
	  var f = document.frm;
	  if(f.userid.value == "") {
		  alert("아이디를 입력해주세요.");
		  return false;
	  }
	  if(f.pass.value == "") {
		  alert("패스워드를 입력해주세요.");
		  return false;
	  }
	  if(f.name.value == "") {
		  alert("이름을 입력해주세요.");
		  return false;
	  }
	  if(f.gender.value == "") {
		  alert("성별을 체크해주세요.");
		  return false;
	  }
	  if(f.birthday.value == "") {
		  alert("생년월일을 입력해주세요.");
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
  
  function fn_post(){
	  url="../member/post1.jsp";
	  window.open(url,'post','width=400,height=150'); 
	  
	  
  }
  
  </script>
  
  <body>
    
     
 
       <br><br><br>
         <div class="div1">회원가입</div>
        
        
<form name="frm" method="post" action="memberSave.jsp">
<table>
                <tr>
                    <td id="title" align="center">아이디</td>
                    <td>
                        <input type="text" name="userid" maxlength="20">
                        <input type="button" value="중복확인"onclick="fn_popup()" >    
                    </td>
                </tr>
                        
                <tr>
                    <td id="title" align="center">비밀번호</td>
                    <td>
                        <input type="password" name="pwd" maxlength="15">
                    </td>
                </tr>
                
                <tr>
                    <td id="title" align="center">비밀번호 확인</td>
                    <td>
                        <input type="password" name="chkpwd" maxlength="15">
                    </td>
                </tr>
                    
                <tr>
                    <td id="title" align="center">이름</td>
                    <td>
                        <input type="text" name="name" maxlength="40">
                    </td>
                </tr>
  
                    
                <tr>
                    <td id="title" align="center">이메일</td>
                    <td>
                        <input type="text" name="email1" maxlength="30">@
                        <select name="email2">
                            <option>naver.com</option>
                            <option>daum.net</option>
                            <option>gmail.com</option>
                            <option>nate.com</option>                        
                        </select>
                    </td>
                </tr>
                    
                <tr>
                    <td id="title" align="center">휴대전화</td>
                    <td>
                        <input type="text" name="tel" />
                    </td>
                </tr>
         <tr>
		<td id="title" align="center">주소</td>
		<td class="mtd">
			<input type="text" class="textBox1" name="post1">
			<input type="button" class="button1" value="우편번호" onclick="fn_post()">
			<br>
			<input type="text" class="textBox1" name="post2" style="width:98%;">
		</td>
	</tr>
	<tr>
           <tr>
		<th class="mtd" colspan="2">
			<input type="submit" class="button1" value="가입완료" 
					onclick="fn_memberSubmit(); return false;">
			<input type="reset"  class="button1" value="재작성">
		</th>
	</tr>
</table>
</form>
        
        
 
 
  </body>
</html>