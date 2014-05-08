<%@ page contentType="text/html;charset=euc-kr" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% request.setCharacterEncoding("EUC_KR"); %>

	<h3>��c:forEach�� Collection ���</h3>

	1. c:forEach�� array�� ���۵Ǿ� ���� ParamValues��ü ���(begin=0,step=1�� ���)<br/>
	<!-- paramValues�� EL���尴ü�� [�Ķ�����̸�,���ǹ迭]�� ������ Map ��ü�� ���� -->
	<!-- paramValues.sw�� index 0�� Value  i �� ���� / step �� 1-->
	<c:forEach var="i" items = "${ paramValues.sw }" begin="0" step="1" >
		�������Ͻ� SW�� : ${ i }<br/>
	</c:forEach><br/>


	2. c:forEach�̿� array�� ���۵Ǿ� ���� ParamValues��ü ���(begin,step ���� ���)<br/>
	<!-- begin �� step ����ϱ� ������ default �� ????-->
	<c:forEach var="i" items = "${ paramValues.sw }" >
		�������Ͻ� SW�� : ${ i }<br/>
	</c:forEach><br/>


	3. c:forEach�̿� Map ���� ���۵Ǿ� ���� Param��ü ���<br/>
	<!-- param �� EL���尴ü�� [�Ķ�����̸�,��]�� ������ Map ��ü�� ���� -->
	<c:forEach var="i" items = "${ param }" >
		�� ${ i.key } : ${ i.value }<br/>
	</c:forEach><br/>
	

	4. c:forEach�̿� Map���� ���۵Ǿ� ���� Param ���<br/>
	<!-- param �� EL���尴ü�� [�Ķ�����̸�,��]�� ������ Map ��ü�� ���� -->
	<c:forEach var="i" items = "${ param }" >
		<c:if test="${ ! empty param.name }"  >
			�� ${ param.name}���� ���̴� ${ param.age}�Դϴ�.<br/>
		</c:if>
	</c:forEach><br/>
	
	5. c:forEach�̿� Map���� ���۵Ǿ� ���� Param ���<br/>
<!-- param �� EL���尴ü�� [�Ķ�����̸�,��]�� ������ Map ��ü�� ���� -->
	<c:forEach var="i" items = "${ param }" >
		<c:if test="${ i.key == 'name' }"  >
			�� ${ param.name}���� ���̴� ${ param.age}�Դϴ�.<br/>
		</c:if>
	</c:forEach>