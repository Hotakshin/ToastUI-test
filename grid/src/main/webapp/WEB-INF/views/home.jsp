<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link rel="stylesheet"
	href="https://uicdn.toast.com/tui-grid/latest/tui-grid.css" />
<script src="https://uicdn.toast.com/tui-grid/latest/tui-grid.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>Home</title>
<script>
	$(document).ready(function() {
		var list = '<c:out value="${list}"/>';
		console.log(list);
		
		const Grid = tui.Grid; //인스턴스 객체 생성

		const recruitData = [
			<c:forEach items="${list}" var="item" varStatus="status">
		{
			field : '${item.field}',
			career : '${item.career}',
			age : '${item.age}',
			salary_desired : '${item.salary_desired}'
		}
		<c:if test="${not status.last}">,</c:if>
		</c:forEach>
		]

		const recruitGrid = new Grid({
			el : document.getElementById('recruitGrid'), // DOM의 id지정
			columns : [ {
				header : '분야',
				name : 'field',
				align : 'center'
			}, {
				header : '경력',
				name : 'career',
				editor : 'text'
			}, {
				header : '나이',
				name : 'age'
			}, {
				header : '희망연봉',
				name : 'salary_desired'
			} ],
			data : recruitData
		});

		recruitGrid.resetData(newData);
		Grid.applyTheme('striped');
	})
</script>
</head>
<body>
	<h1>
		Toast UI Grid Test<br> 케케케케케케케
	</h1>
	<div id="recruitGrid"></div>
	<div>
		<c:forEach items="${list }" var="list">
	${list.field }
	${list.career }
	${list.age }
	${list.salary_desired }
	<br />
		</c:forEach>
	</div>
<a href="chartTest.do">바 차트 테스트</a>

</body>
</html>