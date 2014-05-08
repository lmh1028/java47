
<%@ page contentType="text/html;charset=euc-kr" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% request.setCharacterEncoding("EUC_KR"); %>

<!-- c:if의 사용, EL의 사용 : 중첩 if-else 지원않고 단순 if 문 사용 -->
<h3>ㅇJSTL c:if을 사용 </h3>
	<c:if test="true">
		if문 내부1<br/>
	</c:if>

	<c:if test="false">
		if문 내부2<br/>
	</c:if>	<br/><hr/>


<h3>ㅇ21JSTLMultiCheck.html 에전 전송되는 ClientData 처리..</h3>
	1. 이름 : <%=request.getParameter("name") %><br/> <!-- script et tag의 null 처리와 -->
	2. 이름 : ${param.name}<br/>   <!-- EL에서의 null처리를 비교할것...-->
	
	<!-- single,double quote 사용하는 것은 주의 -->
	<c:if test = "${ param.name == '홍길동' }" > 
		3. 홍길동님 환영합니다.<br/>
	</c:if>
	
	<c:if test = "${ !empty param.name }" > 
		4. ${param.name}님 환영합니다.<br/>
	</c:if>

	<!-- c:set과 c:if를 이용 하여 보면...-->
	<c:set var="level" value="성인" scope="session"/>
	<c:if test = "${ param.age < 19}">
		<c:set var="level" value="청소년" />
	</c:if>
	5. ${param.name}님은 나이 ${ param.age} 로 ${ sessionScope.level }입니다.<br/><hr/>

	
	<!--  다중으로 전송되는 sw client data 처리. 
			::  String[] value = request.getParameterValues("sw")	-->
	<c:if test = "${ ! empty paramValues.sw[0]}">
		6 선택하신 SW :  ${ paramValues.sw[0]}<br/>
	</c:if>
		<c:if test = "${ ! empty paramValues.sw[1]}">
		6 선택하신 SW :  ${ paramValues.sw[1]}<br/>
	</c:if>
		<c:if test = "${ ! empty paramValues.sw[2]}">
		6 선택하신 SW :  ${ paramValues.sw[2]}<br/>
	</c:if>
	<hr/>


<h3>ㅇc:choose, c:when,c:otherwise를 사용 </h3>
   	<!-- c:choose는 switch 비교하여 이해 -->	
		<c:choose>
			<c:when test = "${ param.age >19 }" > 
				7. ${ param.name}님은 성인으로 나이는 ${param.age}입니다. <br/>
			</c:when>
			<c:when test = "${ param.age <18}" > 
				7. ${ param.name}님은 청소년으로 나이는 ${param.age}입니다. <br/>
			</c:when>
			<c:otherwise>
				7. ${ param.name}님은 청소년?, 어른? 으로 나이는 ${param.age}입니다. <br/>
			</c:otherwise>
		</c:choose>
	
	<c:if test="${ ! empty param.name && ! empty param.age }">
		<c:choose>
			<c:when test = "${ param.age >19 }" > 
				8. ${ param.name}님은 성인으로 나이는 ${param.age}입니다. <br/>
			</c:when>
			<c:when test = "${ param.age <18}" > 
				8. ${ param.name}님은 청소년으로 나이는 ${param.age}입니다. <br/>
			</c:when>
			<c:otherwise>
				8. ${ param.name}님은 청소년?, 어른? 으로 나이는 ${param.age}입니다. <br/>
			</c:otherwise>
		</c:choose>
	</c:if>