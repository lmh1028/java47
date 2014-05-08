<%@ page contentType="text/html;charset=euc-kr" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h3> �� c:import �� �̿��Ͽ� include :: jsp:include�� ��</h3><br/>
	<!--  jsp:include�� ���� Context �� �����ϳ�, c:import�� �ٸ� Context ����. -->
<%	request.setAttribute("save",new String("reqeust Object Scope ����� ���ڿ�")); %>

	1. ���� Context�� page include<br/>
		51JSTL_c_import.jsp page���� requestScope�� ���峻��: [  ${requestScope.save}  ]<br/>
		52JSTL_c_import.jsp page�� include
		<c:import var="importPage1" url="/jw10/52JSTL_c_import.jsp" scope="request" />
		${ requestScope.importPage1 }
		
		<br/><br/><br/>

	2. ���� Context�� page include & param���� data���� <br/>
		51JSTL_c_import.jsp page���� requestScope�� ������ ����: [  ${requestScope.save} ] <br/>
		52JSTL_c_import.jsp page�� include�ϸ�
		<c:import var="importPage2" url="/jw10/52JSTL_c_import.jsp" scope="request" >
			<c:param name="name" value="value"/>
		</c:import>
		${ importPage2 }
		<br/>

	3. �ٸ� context  page include<br/><br/>
	<!-- �Ʒ��� �ּ��� Ǯ�� Ȯ������...-->
<%--
		<c:import var="daumPage" url="http://www.daum.net" />
		${ daumPage }
--%>