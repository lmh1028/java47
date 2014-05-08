<%@ page contentType="text/html;charset=euc-kr" %>

<!-- JSTL ��� :  taglib Directive ����-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- c:set , c:remove�� ���, EL�� ��� -->
<h3>��JSTL c:set�� ��� �ϳ� : Bean ���� ObjectScope����</h3>

	<c:set var="client" value="<%= new jw09.Client() %>" scope="session" />

	1.  session Object Scope �� ����� name: ${ sessionScope.client.name }<br/>
	1.  session Object Scope �� ����� name: <c:out value="${ client.name }" /><br/>
	2.  session Object Scope �� ����� addr: ${ client.addr }<br/>
	3.  session Object Scope �� ����� age: ${ client.age }<br/>
	4.  session Object Scope �� ����� info �迭�� empty : ${ empty client.info }<br/>
	5.  session ObjectScope�� ���ڿ� info �迪�� ������ value��<br/>
	5.1 info �迭�� index 0 value : ${ sessionScope.client.info[0] }<br/>
	5.2 info �迭�� index 1 value :  ${ client.info[1] }<br/><hr/>


<h3>�� JSTL c:set �� ��� �ο� : ObjectScope ����� Bean setter Method ȣ��</h3>
	
	<c:set target="${client}" property="name" value="�̼���" />
	1.  session Object Scope �� ����� name: ${ sessionScope.client.name }<br/>

	<c:set target="${client}" property="addr" value="�ƻ�" />
	2.  session Object Scope �� ����� name: ${ client.addr }<br/><hr/>


<h3># ��ũ��Ʈ���� �̿��Ͽ� ObjectScope ����� Bean �����Ͽ� ����...</h3>
	<%
		jw09.Client c = (jw09.Client)session.getAttribute("client");
		out.println("�̸� : "+c.getName()+"<br/>");
		out.println("�ּ� : "+c.getAddr());
	%><br/><hr/>


<h3># useBean,setProperty,gerProperty�� �̿��Ͽ� �����Ͽ� ����</h3>
	<jsp:useBean id="client" class="jw09.Client" scope="session"/>
	�̸� : <jsp:getProperty name="client" property="name" /><br/>
	�ּ� : <jsp:getProperty name="client" property="addr" />
	<br/><hr/>
		
		
<h3>��JSTL c:remove�� ��� : ObjectScope ����� Bean remove</h3>	
	remove�� client��ü�� empty : ${empty sessionScope.client}<br/>
	Session�� ����� bean��ü remove�ϸ�.....<br/>
	<c:remove var="client" scope="session" />
	remove�� client��ü�� empty : ${empty client}