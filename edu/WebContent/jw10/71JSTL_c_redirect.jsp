<%@ page contentType="text/html;charset=euc-kr" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<h3>��c:redirect �� �̿��Ͽ� redirect :: response.sendRedirect() ��.</h3>
    <!-- ������ Ȯ���� brower �ּ�â�� URL�� Ȯ�� -->
	1. �Ʒ��� ������ ������ �ּ��� Ǯ�� Ȯ���Ͽ� ����
		<%-- 
			<c:redirect url="/jw09/11JSTL_c_set.jsp" /> 
		--%>

		<%--
			<c:redirect  url = "http://127.0.0.1:8080/edu/jw10/52JSTL_c_import.jsp" >
				<c:param name="name" value="value" />
			</c:redirect>
		--%>

		<%--
			<c:url var="url" value = "http://127.0.0.1:8080/edu/jw10/52JSTL_c_import.jsp" scope="session" >
				<c:param name="name" value="value" />
			</c:url>
			<c:redirect url="${url}" /> 
 		 --%>