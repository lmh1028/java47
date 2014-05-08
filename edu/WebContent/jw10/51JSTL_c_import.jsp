<%@ page contentType="text/html;charset=euc-kr" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h3> ㅇ c:import 를 이용하여 include :: jsp:include와 비교</h3><br/>
	<!--  jsp:include는 같은 Context 만 가능하나, c:import는 다른 Context 가능. -->
<%	request.setAttribute("save",new String("reqeust Object Scope 저장된 문자열")); %>

	1. 동일 Context의 page include<br/>
		51JSTL_c_import.jsp page에서 requestScope에 저장내용: [  ${requestScope.save}  ]<br/>
		52JSTL_c_import.jsp page를 include
		<c:import var="importPage1" url="/jw10/52JSTL_c_import.jsp" scope="request" />
		${ requestScope.importPage1 }
		
		<br/><br/><br/>

	2. 동일 Context의 page include & param으로 data전송 <br/>
		51JSTL_c_import.jsp page에서 requestScope에 저장한 내용: [  ${requestScope.save} ] <br/>
		52JSTL_c_import.jsp page를 include하면
		<c:import var="importPage2" url="/jw10/52JSTL_c_import.jsp" scope="request" >
			<c:param name="name" value="value"/>
		</c:import>
		${ importPage2 }
		<br/>

	3. 다른 context  page include<br/><br/>
	<!-- 아래의 주석을 풀고 확인하자...-->
<%--
		<c:import var="daumPage" url="http://www.daum.net" />
		${ daumPage }
--%>