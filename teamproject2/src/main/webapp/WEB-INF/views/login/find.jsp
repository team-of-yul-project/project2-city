<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title>회원가입 폼 템플릿</title>
        <link rel="stylesheet" href="./css/find.css">
    </head>
    <body>
        <div class="wrap">
            <div class="form-wrap">
                <h1 id="title_h1">아이디 찾기</h1>
                <div class="button-wrap">
                    <div id="btn"></div>
                    <ul>
                        <li class="togglebtn" id="btn1" onclick="find_id()">회원
                        </li>
                        <li class="togglebtn" id="btn2" onclick="find_pw()">시설 관리자</li>

                    </ul>
                   
                </div>
                <div id="register_input">
                    <form id="find_id" action="find_member" class="input-group" method="post">
                       <div>
                        <input type="text" id="nick" name="nick" placeholder="닉네임">
                        <hr>
                        <input type="text" id="email" name="email" placeholder="이메일">
                        <hr>
                        <input type="submit" class="submit_btn" value="검색">
                        <br>
                        <span><a href="/login" id="find_id">로그인 페이지로 이동</a></span>
                        <br>
                        <span><a href="Find_PW" id="find_pw">비밀번호 찾기</a></span>
                    </div>
                    </form>
                    <form id="find_pw" action="find_fmanager" class="input-group" method="post">
                        <div>
                            <input type="text" id="name" name="name" placeholder="시설이름">
                            <hr>
                            <input type="text" id="phone" name="phone" placeholder="시설 전화번호">
                            <hr>
                            <input type="submit" class="submit_btn" value="검색">
                            <br>
							<span><a href="/login" id="find_id">로그인 페이지로 이동</a></span> 
							<br>
                        	<span><a href="Find_PW" id="find_pw">비밀번호 찾기</a></span>                           
                           </div>
                    </form>
                </div>
            </div>
        </div>
        
        
        <script>
            var x = document.getElementById("find_id");
            var y = document.getElementById("find_pw");
            var z = document.getElementById("btn");
            
            
            function find_id(){
                x.style.left = "50px";
                y.style.left = "450px";
                z.style.left = "0";
            }

            function find_pw(){
                x.style.left = "-400px";
                y.style.left = "50px";
                z.style.left = "115px";
            }
        </script>
    </body>
</html>