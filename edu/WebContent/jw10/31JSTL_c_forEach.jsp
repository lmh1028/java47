<%@ page contentType="text/html;charset=euc-kr" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- c:forEach : while /  for 비교 -->
<h3>ㅇc:forEach을 이용 구구단을 출력</h3>

	1. c:forEach를 이용한 5단출력<br/>
	<c:forEach var="i" begin="1" end="10" step="1">
		5 * ${ i } = ${5*i}<br/>
	</c:forEach><br/><hr/>

	2. 중첩 c:forEach를 통하여 구구단의 짝수만 출력..<br/>
	<c:forEach var="i" begin="2" end="9" step="2">
		[ ${ i } ]단을 출력합니다.<br/>
		<c:forEach var="j" begin="1" end="10" step="1">
			${ i } * ${j} = ${j*i}<br/>
		</c:forEach>
		<br/>
	</c:forEach><hr/>


<h3> 3. index 관리  Collection value 접근</h3>
	<%
		java.util.Vector vector = new java.util.Vector();
		vector.add("A");
		vector.add("B");
		vector.add("C");
		vector.add("D");
		
		System.out.println("===============");
		//console 확인 후 아래의 ForEach 와 비교
		for(int i = 0; i<vector.size() ; i++){
			System.out.println(  (String) vector.get(i) );
		}
		
		System.out.println("===============");
		
		for(Object obj : vector){
			System.out.println( (String)obj );			
		}
		System.out.println("===============");
	%>
	
	<%--  end > size() 인경우 의미가 없으며--%>
	<c:forEach var="i" items ="<%= vector %>" begin="0" step="1" end="10">
		ㅇVector 에 저장된 내용은  :  ${ i }<br/>
	</c:forEach><br/>
	
	<%--  end > size() 인경우 의미가 없으며 생략 /  begin 의미 확인--%>
	<c:forEach var="i" items ="<%= vector %>" begin="1" step="1" >
		ㅇVector 에 저장된 내용은  :  ${ i }<br/>
	</c:forEach><br/>
	
	<%--  end > size() 인경우 의미가 없으며 생략 /  step의미 확인--%>
	<c:forEach var="i" items ="<%= vector %>" begin="0" step="2" >
		ㅇVector 에 저장된 내용은  :  ${ i }<br/>
	</c:forEach><br/>
	
	<%--  end < size() 인경우 의미 확인--%>
	<c:forEach var="i" items ="<%= vector %>" begin="0" step="1" end="1">
		ㅇVector 에 저장된 내용은  :  ${ i }<br/>
	</c:forEach><hr/>
	
	
<h3> 4. key=value형식의 map의 value접근</h3><br/>
	<%
		java.util.HashMap hm = new java.util.HashMap();
		hm.put("a","A"); 
		hm.put("b","B");
		hm.put("c","C");
		hm.put("d","D");
	%>
	<!-- hm이 참조하는 Map정보를 i 변수에 저장-->
	<c:forEach var="i" items ="<%= hm %>">
		ㅇHashMap에 저장된 내용은  : ${ i.key } = ${i.value }<br/>
	</c:forEach><br/>
	

	ㅇ EL을 사용한 아래의 코드를 이해a 및 c:set, c:if를 동시 사용해 보면 <br/>
	<c:set var="aaa" value="<%= hm %>" />

	<c:forEach var="i" items ="${ aaa }" >
		<c:if test ="${ i.key == 'a' }">
			key a 의 value : ${ i.value }
		 </c:if>
		 <br/>
	</c:forEach>