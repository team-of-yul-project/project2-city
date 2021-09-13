<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<link href="css/list.css" rel="stylesheet">
<script src="./js/list.js"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
function write_btn(){

	  location.href="freeBoardMemberWrite?page=${map.page }&searchCategory=${map.searchCategory}&sportsCategory=${map.sportsCategory }&searchWord=${map.searchWord}";
	}
</script>
<style type="text/css">
.list_title_a{
	color:black;

}
.table_category{
	border: 4px solid #ff8595;
	border-radius: 10px;
	color: #ff8595;
	font-weight: bold;
	font-size:20px;
}
</style>
</head>
<body>
	<div id="div">
		<div id="header_div">
			<div id="header_img">
				<c:if test="${session_member == 'member' }">
				<h1 style="color: white; font-size: 50px; margin-left: 100px; padding-top: 10px;"><a href="member_Main">노리</a></h1>
				</c:if>
				<c:if test="${session_member == 'admin' }">
				<h1 style="color: white; font-size: 50px; margin-left: 100px; padding-top: 10px;"><a href="admin_main">노리</a></h1>
				</c:if>
			</div>
		</div>
		<div id="body_div">
				<div id="body_nav">
					<div id="div_nav">
					<jsp:include page="../include/nav.jsp"/>
						
							<div id="body_header_div">
								<div id="body_header_div1">
									<form action="freeBoardMemberList" method="get">
									<select class="form-select" aria-label="Default select example" id="category_select" name = "searchCategory">
										<option value="all" <c:if test="${map.searchCategory == 'all'}">selected</c:if>>전체</option>
										<option value="title" <c:if test="${map.searchCategory == 'title'}">selected</c:if>>제목</option>
										<option value="content" <c:if test="${map.searchCategory == 'content'}">selected</c:if>>내용</option>
										<option value="name" <c:if test="${map.searchCategory == 'name'}">selected</c:if>>작성자</option>
									  </select>
									<select class="form-select" aria-label="Default select example" id="category_select" name = "sportsCategory">
										<option value = "" <c:if test="${map.sportsCategory == ''}">selected</c:if>>전체</option>
										<option value="축구" <c:if test="${map.sportsCategory == '축구'}">selected</c:if>>축구</option>
										<option value="야구" <c:if test="${map.sportsCategory == '야구'}">selected</c:if>>야구</option>
										<option value="테니스" <c:if test="${map.sportsCategory == '테니스'}">selected</c:if>>테니스</option>
										<option value="배드민턴" <c:if test="${map.sportsCategory == '배드민턴'}">selected</c:if>>배드민턴</option>
									  </select>
									<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="검색 내용을 입력하시오" name = "searchWord" value = "${map.searchWord }">
									<button type="submit" class="btn btn-outline-secondary" id="check_btn">검색</button>
									</form>
								</div>
							</div>			
						
					</div>
				</div>
				<div id="body_list">
					<table id="list_table">

						<colgroup>
							<col width="10%">
							<col width="10%">
							<col width="40%">
							<col width="10%">
							<col width="15%">
							<col width="15%">
						  </colgroup>

						<!-- 제목부분 -->
							<tr class="list_tr_td" id="list_tr">
							  <td>종목</td>
							  <td>No</td>
							  <td>제목</td>
							  <td>작성자</td>
							  <td>작성일</td>
							  <td>조회수</td>
							</tr>
						<!-- 내용부분 -->
						
						<c:forEach items="${map.list }" var = "freeBoardMemberVo">
							<tr class="list_tr_td">
							  <td><span class="table_category">${freeBoardMemberVo.fbm_category }</span></td>
							  <td><span class="table-notice">${freeBoardMemberVo.fbm_num }</span></td>
							  <td class="table-title">
							  <a class = "list_title_a"href="freeBoardMemberView?fbm_num=${freeBoardMemberVo.fbm_num }&page=${map.page }&searchCategory=${map.searchCategory}&sportsCategory=${map.sportsCategory }&searchWord=${map.searchWord}">${freeBoardMemberVo.fbm_title }</a>
							  </td>
							  <td>${freeBoardMemberVo.m_nickname }</td>
							  <td>${freeBoardMemberVo.fbm_date }</td>
							  <td>${freeBoardMemberVo.fbm_hit }</td>
							</tr>
						</c:forEach>

					  </table>
				</div>
	<div id="numbering">
		<ul class="page-num">
    
    <!-- 앞에 버튼 -->
    
    
    <c:if test="${map.page != 1}">
    	<a href="freeBoardMemberList?page=1&searchCategory=${map.searchCategory}&sportsCategory=${map.sportsCategory }&searchWord=${map.searchWord}"> <li class="first"></li></a>
    </c:if>
    
    
    <!-- 이전페이지 버튼 1보다크면-->
    <c:if test="${map.page > 1}">
    	<a href="freeBoardMemberList?page=${map.page-1 }&searchCategory=${map.searchCategory}&sportsCategory=${map.sportsCategory }&searchWord=${map.searchWord}"> <li class="prev"></li></a>
    </c:if>
    
    
     <!-- 하단넘버링 넣기 -->
     <c:forEach var="nowPage" begin="${map.startPage}" end="${map.endPage}">
     	<c:if test="${map.page == nowPage}">
    		
       		<li class="num">${nowPage}<div></div></li>
      		
     	</c:if>
     	<c:if test="${map.page != nowPage}">
    		<a href="freeBoardMemberList?page=${nowPage }&searchCategory=${map.searchCategory}&sportsCategory=${map.sportsCategory }&searchWord=${map.searchWord}"> 
       		<li class="num"><div>${nowPage}</div></li>
      		</a>
     	</c:if>
     
     </c:forEach>
      
      
      <!-- ㄷenp 보다 작으면 링크  -->
      <c:if test="${map.page < map.endPage}">
     	 <a href="freeBoardMemberList?page=${map.page+1 }&searchCategory=${map.searchCategory}&sportsCategory=${map.sportsCategory }&searchWord=${map.searchWord}"> <li class="next"></li></a>
      </c:if>
      
      
      <c:if test="${map.page !=  map.maxPage}">
      	<a href="freeBoardMemberList?page=${map.maxPage }&searchCategory=${map.searchCategory}&sportsCategory=${map.sportsCategory }&searchWord=${map.searchWord}"> <li class="last"></li></a>
      </c:if>
      
    </ul>
	</div>
		<c:if test="${session_member != 'admin' }">
				<div id="footer_div_btn">
					<button type="button" class="btn btn-outline-secondary" id="btn_write" onclick = "write_btn()">쓰기</button>
				</div>
		</c:if>
		</div>
		<div id="footer_div">

		</div>
	</div>
</body>
</html>
