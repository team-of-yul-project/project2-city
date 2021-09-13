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

	  location.href="noticeBoardWrite?page=${map.page }&searchCategory=${map.searchCategory}&sportsCategory=${map.sportsCategory }&searchWord=${map.searchWord}";
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
#notice{
	background-color: #f3f0ff;
}
#ul_nav li:first-of-type {
  background-color: white;
}
</style>
</head>
<body>
	<div id="div">
		<div id="header_div">
			<div id="header_img">
				<h1 style="color: white; font-size: 50px; margin-left: 100px; padding-top: 10px;">노리</h1>
			</div>
		</div>
		<div id="body_div">
				<div id="body_nav">
					<div id="div_nav">
					<h1>내 문의내역</h1>
						
							
						
					</div>
				</div>
				<div id="body_list">
					<table id="list_table">

						<colgroup>
							<col width="50%">
							<col width="50%">
						  </colgroup>

						<!-- 제목부분 -->
							<tr class="list_tr_td" id="list_tr">
							  <td>No</td>
							  <td>제목</td>
							</tr>
						<!-- 내용부분 -->
						
						<c:forEach items="${map.list }" var = "qBoardVo">
							<tr class="list_tr_td">
							  <td><span class="table-notice">${qBoardVo.q_num }</span></td>
							  <td class="table-title">
							  <a class = "list_title_a"href="qBoardView?q_num=${qBoardVo.q_num }&page=${map.page }&searchCategory=${map.searchCategory}&sportsCategory=${map.sportsCategory }&searchWord=${map.searchWord}">${qBoardVo.q_title }</a>
							  </td>
							</tr>
						</c:forEach>

					  </table>
				</div>
	
				<div id="footer_div_btn">
					<button type="button" class="btn btn-outline-secondary" id="btn_write" onclick = "write_btn()">쓰기</button>
				</div>
		</div>
		<div id="footer_div">

		</div>
	</div>
</body>
</html>
