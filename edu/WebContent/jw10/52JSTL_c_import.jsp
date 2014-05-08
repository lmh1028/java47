<%@ page contentType="text/html;charset=euc-kr" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<hr/>
	<h3>ㅇ52JSTL_c_import.jsp 시작<br/>
		
		requestScope에 저장된 내용공유 유무 : ${ requestScope.save }<br/>
		<c:if test="${ ! empty param.name }">
			Param 으로 전달된 value 추출 : ${ param.name }<br/>
		</c:if>
	
	 ㅇ52JSTL_c_import.jsp 끝
	 </h3>
	<hr/>