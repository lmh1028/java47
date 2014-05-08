<%@ page contentType="text/html;charset=euc-kr" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% request.setCharacterEncoding("EUC_KR"); %>

	<h3>ㅇc:forEach을 Collection 사용</h3>

	1. c:forEach를 array로 전송되어 오는 ParamValues객체 출력(begin=0,step=1인 경우)<br/>
	<!-- paramValues는 EL내장객체로 [파라미터이름,값의배열]을 저장한 Map 객체로 관리 -->
	<!-- paramValues.sw의 index 0의 Value  i 에 대입 / step 은 1-->
	<c:forEach var="i" items = "${ paramValues.sw }" begin="0" step="1" >
		ㅇ선택하신 SW는 : ${ i }<br/>
	</c:forEach><br/>


	2. c:forEach이용 array로 전송되어 오는 ParamValues객체 출력(begin,step 없는 경우)<br/>
	<!-- begin 과 step 기술하기 않으면 default 는 ????-->
	<c:forEach var="i" items = "${ paramValues.sw }" >
		ㅇ선택하신 SW는 : ${ i }<br/>
	</c:forEach><br/>


	3. c:forEach이용 Map 으로 전송되어 오는 Param객체 출력<br/>
	<!-- param 은 EL내장객체로 [파라미터이름,값]을 저장한 Map 객체로 관리 -->
	<c:forEach var="i" items = "${ param }" >
		ㅇ ${ i.key } : ${ i.value }<br/>
	</c:forEach><br/>
	

	4. c:forEach이용 Map으로 전송되어 오는 Param 출력<br/>
	<!-- param 은 EL내장객체로 [파라미터이름,값]을 저장한 Map 객체로 관리 -->
	<c:forEach var="i" items = "${ param }" >
		<c:if test="${ ! empty param.name }"  >
			ㅇ ${ param.name}님의 나이는 ${ param.age}입니다.<br/>
		</c:if>
	</c:forEach><br/>
	
	5. c:forEach이용 Map으로 전송되어 오는 Param 출력<br/>
<!-- param 은 EL내장객체로 [파라미터이름,값]을 저장한 Map 객체로 관리 -->
	<c:forEach var="i" items = "${ param }" >
		<c:if test="${ i.key == 'name' }"  >
			ㅇ ${ param.name}님의 나이는 ${ param.age}입니다.<br/>
		</c:if>
	</c:forEach>