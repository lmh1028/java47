<%@ page contentType="text/html;charset=euc-kr" %>

<!-- JSTL 사용 :  taglib Directive 설정-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- c:set , c:remove의 사용, EL의 사용 -->
<h3>ㅇJSTL c:set을 사용 하나 : Bean 생성 ObjectScope저장</h3>

	<c:set var="client" value="<%= new jw09.Client() %>" scope="session" />

	1.  session Object Scope 에 저장된 name: ${ sessionScope.client.name }<br/>
	1.  session Object Scope 에 저장된 name: <c:out value="${ client.name }" /><br/>
	2.  session Object Scope 에 저장된 addr: ${ client.addr }<br/>
	3.  session Object Scope 에 저장된 age: ${ client.age }<br/>
	4.  session Object Scope 에 저장된 info 배열은 empty : ${ empty client.info }<br/>
	5.  session ObjectScope에 저자왼 info 배역의 각각의 value는<br/>
	5.1 info 배열의 index 0 value : ${ sessionScope.client.info[0] }<br/>
	5.2 info 배열의 index 1 value :  ${ client.info[1] }<br/><hr/>


<h3>ㅇ JSTL c:set 을 사용 두울 : ObjectScope 저장된 Bean setter Method 호출</h3>
	
	<c:set target="${client}" property="name" value="이순신" />
	1.  session Object Scope 에 저장된 name: ${ sessionScope.client.name }<br/>

	<c:set target="${client}" property="addr" value="아산" />
	2.  session Object Scope 에 저장된 name: ${ client.addr }<br/><hr/>


<h3># 스크립트렛을 이용하여 ObjectScope 저장된 Bean 접근하여 보면...</h3>
	<%
		jw09.Client c = (jw09.Client)session.getAttribute("client");
		out.println("이름 : "+c.getName()+"<br/>");
		out.println("주소 : "+c.getAddr());
	%><br/><hr/>


<h3># useBean,setProperty,gerProperty를 이용하여 접근하여 보자</h3>
	<jsp:useBean id="client" class="jw09.Client" scope="session"/>
	이름 : <jsp:getProperty name="client" property="name" /><br/>
	주소 : <jsp:getProperty name="client" property="addr" />
	<br/><hr/>
		
		
<h3>ㅇJSTL c:remove을 사용 : ObjectScope 저장된 Bean remove</h3>	
	remove전 client객체는 empty : ${empty sessionScope.client}<br/>
	Session에 저장된 bean객체 remove하면.....<br/>
	<c:remove var="client" scope="session" />
	remove후 client객체는 empty : ${empty client}