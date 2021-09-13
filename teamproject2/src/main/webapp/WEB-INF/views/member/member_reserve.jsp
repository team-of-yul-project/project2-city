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
        <DIV>
          <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
            <h6 class="m-0 font-weight-bold text-primary">예약 목록 현황</h6>
          </div>
          <div class="table-responsive p-3">
            <table class="table align-items-center table-flush table-hover" id="dataTableHover">
              <thead class="thead-light">
                <tr>
                  <th>NO.</th>
                  <th>시설 이름</th>
                  <th>시설 가격</th>
                  <th>날짜</th>
                  <th>이용 시간</th>
                  <th>이용 인원</th>
                  <th>VIEW</th>
                </tr>
              </thead>
              <tfoot>
                <tr>
                  <th>NO.</th>
                  <th>시설 이름</th>
                  <th>시설 가격</th>
                  <th>날짜</th>
                  <th>이용 시간</th>
                  <th>이용 인원</th>
                  <th>VIEW</th>
                </tr>
              </tfoot>
            <!-- 데이터 들어오는 부분 -->
              <tbody>
                <tr>
                  <td>1</td>
                  <td>부천체육관</td>
                  <td>10,000</td>
                  <td>2021-09-23</td>
                  <td>9:00~12:00</td>
                  <td>5</td>
                  <td><a href="fac_view.html">VIEW</a></td>
                </tr>
              </tbody>
            </table>
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