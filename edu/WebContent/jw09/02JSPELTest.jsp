<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.util.*" %>

<h3>4. ����(. , [] ) ������ ���</h3><p/>
<%
	//==> �Ʒ��� ������ Controler���� ȭ���� �����ϱ� ���� ������ �ذ� ���� ����
	//1. page scope�� ����
	pageContext.setAttribute("name",new String("pageScope�� ����� ���� ������ ���� ���ڿ�"));
	
	//2.request scope�� ����
	request.setAttribute("name",new String("requestScope�� ����� ���ڿ�"));
	
	//3.1 session scope�� ��(size() ==0��) Vector����
	session.setAttribute("name",new Vector());
	//3.2 session scope�� ���� ���� Vector ����
	Vector v =new Vector();
	v.add(new String("sessionScope name1�� Vector�� ����� ���ڿ�"));
	session.setAttribute("name1",v);
	
	//4. Application Scope�� ���� ���� Map����
	HashMap hm = new HashMap();
	hm.put("a",new String("applicationScope�� HashMap�� ����� ���ڿ�"));
	application.setAttribute("name",hm);
%>

<!-- 
   	�� EL�� ��ü ������ . �� [ ] �����ڸ� ������..
   	�� EL�� ��ü������ implicit Object ��  ���� ������ ObjectScope�� ����Ѵ�
		page				==>pageScope,
		request			==>requestScope
		session			==> sessionScope
		application	==>applicationScope
   	�� �̸� �̿� �� ObjectScope�� Value �� ���ٿ����ϴ�.
-->
<h5>1. pageObject Scope�� ����� name�� value ���� </h5>
     �� ${ pageScope.name }  = �� ${ pageScope["name"] } =<%=pageContext.getAttribute("name") %>

<h5> 2. requestObject Scope�� ����� name�� value ���� </h5>
	��  ${ requestScope.name }  = ��  ${ requestScope["name"] } =<%=request.getAttribute("name") %>

<h5>3.  sessionObject Socpe�� ����� name�� value(Vector)�� empty ����</h5> 
	 �� ${ empty sessionScope.name } = ${ empty sessionScope["name"] }

<h5>4.1  sessionObject Socpe�� ����� name1�� value(Vector)�� empty ����</h5> 
	 �� ${ empty sessionScope.name1 } = ${ empty sessionScope["name1"] }=<%=session.getAttribute("name1") %>

<h5>4.2  sessionObject Scope�� ����� name1�� value(Vector)�� 0��° index ����</h5>
	 �� ${ sessionScope.name1[0] }  =  ${ sessionScope["name1"][0] }

<h5>5.1  applicationObject Scope�� ����� name�� value(HashMap)�� empty ����</h5>
	 �� ${empty applicationScope.name } =  ${empty applicationScope["name"] }

<h5>5.2applicationObject Scope�� ����� name�� value(HashMap)�� ����a�� value����</h5>
	 �� ${applicationScope.name.a } = ${applicationScope["name"].a } <br/><hr/><br/>

<h3>Object Scope�� ������ �������� �ʰ� EL�� ��� name�� ���ٽ�<br/>
		  � ObjectScope���� ����Ǵ� �� Ȯ������.<br/><br/>
	  	  � Object Scope�� �����ΰ� :  ${name} </h3>