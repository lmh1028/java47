<%@ page contentType="text/html;charset=euc-kr" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<hr/>
	<h3>��52JSTL_c_import.jsp ����<br/>
		
		requestScope�� ����� ������� ���� : ${ requestScope.save }<br/>
		<c:if test="${ ! empty param.name }">
			Param ���� ���޵� value ���� : ${ param.name }<br/>
		</c:if>
	
	 ��52JSTL_c_import.jsp ��
	 </h3>
	<hr/>