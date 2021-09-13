<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="utf-8">
<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link href="img/logo/logo.png" rel="icon">
  <title>Team of Yul</title>
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="css/member/ruang-admin.min.css" rel="stylesheet">
  <link href="css/member/member_register.css" rel="stylesheet">
     	 <c:if test="${session_member != 'member' }">
 		 <script type="text/javascript">
  	 	 alert("잘못된 경로입니다")
  		 location.href="login"
  		 </script>
  		</c:if>
  	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
  	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  	<script type="text/javascript" src="js/member/member_modify.js"></script>

  <style type="text/css">
  #exampleFormControlSelect1{
  width: 10%;
  display: inline-block;
  }
  .custom-control{
  	display: inline-block;
  }
  
  #male1{
  	margin: 0px;
  	padding: 0px;
  }
  
  </style>
  <c:if test="${result == '1' }">
  	<script type="text/javascript">
  	alert("수정이 완료되었습니다");
	location.href="member_mypage"  	
  	</script>
  	
  </c:if>
</head>

<body id="page-top">
  <div id="wrapper">
    <!-- Sidebar -->
    <ul class="navbar-nav sidebar sidebar-light accordion" id="accordionSidebar">
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
        <div class="sidebar-brand-icon">
        </div>
        <div class="sidebar-brand-text mx-3">로고</div>
      </a>
      <hr class="sidebar-divider my-0">
      <li class="nav-item">
        <a class="nav-link" href="index.html">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>보류</span></a>
      </li>
      <hr class="sidebar-divider">
      <div class="sidebar-heading">
        회원
      </div>

      <li class="nav-item">
        <a class="nav-link" href="member_mypage">
          <i class="far fa-fw fa-window-maximize"></i>
          <span>마이페이지</span>
        </a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="member_reserve">
          <i class="fab fa-fw fa-wpforms"></i>
          <span>예약확인</span>
        </a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="member_charge">
          <i class="fas fa-fw fa-table"></i>
          <span>충전</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="member_qua" >
          <i class="fas fa-fw fa-palette"></i>
          <span>관리자 문의</span>
        </a>
      </li>
      <hr class="sidebar-divider">

      <div class="version" id="version-ruangadmin"></div>
    </ul>
    <!-- Sidebar -->
    <div id="content-wrapper" class="d-flex flex-column">
      <div id="content">
        <!-- TopBar -->
        <nav class="navbar navbar-expand navbar-light bg-navbar topbar mb-4 static-top">
          <button id="sidebarToggleTop" class="btn btn-link rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>
          <ul class="navbar-nav ml-auto">
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
                <img class="img-profile rounded-circle" src="img/boy.png" style="max-width: 60px">
                <span class="ml-2 d-none d-lg-inline text-white small">회원 닉네임</span>
              </a>
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="member_mypage">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                  My_Page
                </a>
                <a class="dropdown-item" href="member_reserve">
                  <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                  Reserve
                </a>
                <a class="dropdown-item" href="member_charge">
                  <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                  Charge
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="logout">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>
          </ul>
        </nav>
        <!-- Topbar -->
        
        <!-- 구현 부분-->
        <DIV id="body_div">
          <div>
            <div id="title_div">
                <h3>마이페이지 정보 수정</h3>
                <hr>
            </div>
            <div id="mem_inform">
              <div id="mem_inform_blank">
              </div>
              <div id="mem_inform_div1">
                  <span>마이페이지 정보 수정</span>
              </div>
              <div id="mem_inform_input">
                <div id="mem_inform_input1">
                  <form action="member_Modify" name="mem_check" method="post">
                    <div class="form-group" id="mem_input">
                      <label for="exampleInputEmail1">회원 아이디</label>
                      <input type="text" class="form-control" placeholder="회원 아이디" name="m_id" value="${memberVo.m_id}" readonly="readonly" >
                      
                      <label for="exampleInputPassword1">회원 이름</label>
                      <input type="text" class="form-control" placeholder="회원 이름" name="m_Name"  value="${memberVo.m_Name}" >
                      
                      <label for="exampleInputPassword1">회원 닉네임</label>
                      <input type="text" class="form-control" placeholder="회원 닉네임" name="m_Nickname" value="${memberVo.m_Nickname}">
                      <div>
                      <label for="exampleInputPassword1">생년월일</label>
                      </div>
                      <select class="form-control year" id="exampleFormControlSelect1" name="birth1">
                      </select>

                      <select class="form-control month" id="exampleFormControlSelect1" name="birth2">
                      </select>

                      <select class="form-control day" id="exampleFormControlSelect1" name="birth3">
                      </select>
                      <div>
                      <label for="exampleInputPassword1">성별</label>
                      </div>
						<div>
	                        <span class="custom-control custom-radio">
	                          <input type="radio" id="male" name="gender" class="custom-control-input" value="male">
	                          <label class="custom-control-label" for="male" id="male1" >남자</label>
	                        </span>
	                        <span class="custom-control custom-radio">
	                          <input type="radio" id="female" name="gender" class="custom-control-input" value="female">
	                          <label class="custom-control-label" for="female" >여자</label>
	                        </span>
						</div>
                      
                      <label for="exampleInputPassword1">이메일</label>
                      <input type="email" class="form-control" placeholder="이메일" name="email" value="${memberVo.m_Email}">
                      
                      <label for="exampleInputPassword1">주소</label>
                      <div class="form-control" style="height: auto;">
                      	<div style="margin-bottom: 5px;" >
                      		<input type="text" id="sample6_postcode" name="post" placeholder="우편번호" value="${memberVo.m_Post}">
							<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
                      	</div>
				      <input type="text" id="sample6_address" name="add1" placeholder="주소" style="width: 50%;" value="${memberVo.m_Add1}">
				      -
				      <input type="text" id="sample6_detailAddress" name="add2" placeholder="상세주소" style="width: 20%;" value="${memberVo.m_Add2}">
                      </div>
                      
                      <label for="exampleInputPassword1">번호</label>
                      <!-- 정규화 -->
                      <input type="text" class="form-control" placeholder="번호만적어주세요" value="${memberVo.m_Phone}" name="phone">
                      
                      <label for="exampleInputPassword1">등급</label>
                      <input type="text" class="form-control" placeholder="등급" value="${memberVo.m_Grade}" readonly="readonly">
                      
                      <label for="exampleInputPassword1">포인트</label>
                      <input type="text" class="form-control" placeholder="포인트" value="${memberVo.m_Point}" readonly="readonly">
                      
                      
                    </div>

                    <a href="member_mypage" class="btn btn-primary" id="mem_save">돌아가기</a>
                    <button type="button" class="btn btn-primary mem_check" id="mem_save">등록하기</button>
                  </form>
                </div>

              </div>
            </div>
          </div>
        </DIV>


  
      </div>

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>copyright &copy; <script> document.write(new Date().getFullYear()); </script> - developed by <b><a href="https://indrijunanda.gitlab.io/"
                  target="_blank">indrijunanda</a></b> </span>
          </div>
        </div>
      </footer>

    </div>
  </div>
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
  <script src="js/ruang-admin.min.js"></script>
</body>

</html>