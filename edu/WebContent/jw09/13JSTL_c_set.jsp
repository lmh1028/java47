<%@ page contentType="text/html;charset=euc-kr" %>

<!-- JSTL ��� :  taglib Directive ����-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- c:set/c:remove�� ���, EL�� ��� -->
<h3>��JSTL c:set�� ����Ұ�� ���� :	 JSTL c:set�� EL�� ��� </h3>
	<c:set var="test01" value="<%= new jw09.Client() %>" scope="session" />
	<c:set var="test02" value="${test01}" scope="session" />
     
     <%--	Call By Value / Call By Reference 
      			==> �Ʒ��� ������ �����Ͽ� ��°���� ���� 
      			A a1 = new A();
      			A a2 = a1;						      --%>
	1.  session ObjectScope �� ����� name test01  : ${ sessionScope.test01.name }<br/>
	1.  session ObjectScope �� ����� name test02 : ${ test02.name }<br/><hr/>


<h3>�� ObjectScope ����� bean �� setter Method�� ȣ��(ȫ�浿�� �̼������� ����)<br/>
      ��Call By Reference ����ϸ�....</h3>
	<c:set target="${test01}" property="name" value="�̼���" />
	2.  session Object Scope �� ����� name test01 : ${ sessionScope.test01.name }<br/>
	2.  session Object Scope �� ����� name test02 : ${ test02.name }<br/><hr/>


<h3>������ var�� �ٽð�ü�� ������ ��� ... ������ �ٸ���ü�� ������ �� </h3>	
      <%--	Call By Value / Call By Reference 
      			==> �Ʒ��� ������ �����Ͽ� ��°���� ���� 
      			A a1 = new A();
      			A a2 = a1;						
      			a1 = new A();
      --%>
	<c:set var="test01" value="<%= new jw09.Client() %>" scope="session" />
	3.  sessionObject Scope �� ����� name test01  : ${ sessionScope.test01.name }<br/>
	3.  sessionObject Scope �� ����� name test02 : ${ test02.name }<br/><hr/>
	
	
<h3>��c:set�� �̿��� Call by Reference  ���� �ߴٸ�... </h3>	
	<jsp:useBean id="test03" class="jw09.Client" />
	<c:set var="test04" value="<%= test03.getInfo() %>" scope="session" />
	<%-- 
		1. test03 instance  page ObjectScope�� ����������.
		2. test03 instance  �Ϻ����� ( array )�� session ObjectScope �ٽ� ������.
	--%>
	4.  session Object Scope �� ����� info array test04  : ${ sessionScope.test04[0] }<br/>
	5.  session Object Scope �� ����� info array test04  : ${ test04[1] }<br/>