
<%@ page contentType="text/html;charset=euc-kr" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% request.setCharacterEncoding("EUC_KR"); %>

<!-- c:if�� ���, EL�� ��� : ��ø if-else �����ʰ� �ܼ� if �� ��� -->
<h3>��JSTL c:if�� ��� </h3>
	<c:if test="true">
		if�� ����1<br/>
	</c:if>

	<c:if test="false">
		if�� ����2<br/>
	</c:if>	<br/><hr/>


<h3>��21JSTLMultiCheck.html ���� ���۵Ǵ� ClientData ó��..</h3>
	1. �̸� : <%=request.getParameter("name") %><br/> <!-- script et tag�� null ó���� -->
	2. �̸� : ${param.name}<br/>   <!-- EL������ nulló���� ���Ұ�...-->
	
	<!-- single,double quote ����ϴ� ���� ���� -->
	<c:if test = "${ param.name == 'ȫ�浿' }" > 
		3. ȫ�浿�� ȯ���մϴ�.<br/>
	</c:if>
	
	<c:if test = "${ !empty param.name }" > 
		4. ${param.name}�� ȯ���մϴ�.<br/>
	</c:if>

	<!-- c:set�� c:if�� �̿� �Ͽ� ����...-->
	<c:set var="level" value="����" scope="session"/>
	<c:if test = "${ param.age < 19}">
		<c:set var="level" value="û�ҳ�" />
	</c:if>
	5. ${param.name}���� ���� ${ param.age} �� ${ sessionScope.level }�Դϴ�.<br/><hr/>

	
	<!--  �������� ���۵Ǵ� sw client data ó��. 
			::  String[] value = request.getParameterValues("sw")	-->
	<c:if test = "${ ! empty paramValues.sw[0]}">
		6 �����Ͻ� SW :  ${ paramValues.sw[0]}<br/>
	</c:if>
		<c:if test = "${ ! empty paramValues.sw[1]}">
		6 �����Ͻ� SW :  ${ paramValues.sw[1]}<br/>
	</c:if>
		<c:if test = "${ ! empty paramValues.sw[2]}">
		6 �����Ͻ� SW :  ${ paramValues.sw[2]}<br/>
	</c:if>
	<hr/>


<h3>��c:choose, c:when,c:otherwise�� ��� </h3>
   	<!-- c:choose�� switch ���Ͽ� ���� -->	
		<c:choose>
			<c:when test = "${ param.age >19 }" > 
				7. ${ param.name}���� �������� ���̴� ${param.age}�Դϴ�. <br/>
			</c:when>
			<c:when test = "${ param.age <18}" > 
				7. ${ param.name}���� û�ҳ����� ���̴� ${param.age}�Դϴ�. <br/>
			</c:when>
			<c:otherwise>
				7. ${ param.name}���� û�ҳ�?, �? ���� ���̴� ${param.age}�Դϴ�. <br/>
			</c:otherwise>
		</c:choose>
	
	<c:if test="${ ! empty param.name && ! empty param.age }">
		<c:choose>
			<c:when test = "${ param.age >19 }" > 
				8. ${ param.name}���� �������� ���̴� ${param.age}�Դϴ�. <br/>
			</c:when>
			<c:when test = "${ param.age <18}" > 
				8. ${ param.name}���� û�ҳ����� ���̴� ${param.age}�Դϴ�. <br/>
			</c:when>
			<c:otherwise>
				8. ${ param.name}���� û�ҳ�?, �? ���� ���̴� ${param.age}�Դϴ�. <br/>
			</c:otherwise>
		</c:choose>
	</c:if>