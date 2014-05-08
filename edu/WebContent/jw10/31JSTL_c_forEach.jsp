<%@ page contentType="text/html;charset=euc-kr" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- c:forEach : while /  for �� -->
<h3>��c:forEach�� �̿� �������� ���</h3>

	1. c:forEach�� �̿��� 5�����<br/>
	<c:forEach var="i" begin="1" end="10" step="1">
		5 * ${ i } = ${5*i}<br/>
	</c:forEach><br/><hr/>

	2. ��ø c:forEach�� ���Ͽ� �������� ¦���� ���..<br/>
	<c:forEach var="i" begin="2" end="9" step="2">
		[ ${ i } ]���� ����մϴ�.<br/>
		<c:forEach var="j" begin="1" end="10" step="1">
			${ i } * ${j} = ${j*i}<br/>
		</c:forEach>
		<br/>
	</c:forEach><hr/>


<h3> 3. index ����  Collection value ����</h3>
	<%
		java.util.Vector vector = new java.util.Vector();
		vector.add("A");
		vector.add("B");
		vector.add("C");
		vector.add("D");
		
		System.out.println("===============");
		//console Ȯ�� �� �Ʒ��� ForEach �� ��
		for(int i = 0; i<vector.size() ; i++){
			System.out.println(  (String) vector.get(i) );
		}
		
		System.out.println("===============");
		
		for(Object obj : vector){
			System.out.println( (String)obj );			
		}
		System.out.println("===============");
	%>
	
	<%--  end > size() �ΰ�� �ǹ̰� ������--%>
	<c:forEach var="i" items ="<%= vector %>" begin="0" step="1" end="10">
		��Vector �� ����� ������  :  ${ i }<br/>
	</c:forEach><br/>
	
	<%--  end > size() �ΰ�� �ǹ̰� ������ ���� /  begin �ǹ� Ȯ��--%>
	<c:forEach var="i" items ="<%= vector %>" begin="1" step="1" >
		��Vector �� ����� ������  :  ${ i }<br/>
	</c:forEach><br/>
	
	<%--  end > size() �ΰ�� �ǹ̰� ������ ���� /  step�ǹ� Ȯ��--%>
	<c:forEach var="i" items ="<%= vector %>" begin="0" step="2" >
		��Vector �� ����� ������  :  ${ i }<br/>
	</c:forEach><br/>
	
	<%--  end < size() �ΰ�� �ǹ� Ȯ��--%>
	<c:forEach var="i" items ="<%= vector %>" begin="0" step="1" end="1">
		��Vector �� ����� ������  :  ${ i }<br/>
	</c:forEach><hr/>
	
	
<h3> 4. key=value������ map�� value����</h3><br/>
	<%
		java.util.HashMap hm = new java.util.HashMap();
		hm.put("a","A"); 
		hm.put("b","B");
		hm.put("c","C");
		hm.put("d","D");
	%>
	<!-- hm�� �����ϴ� Map������ i ������ ����-->
	<c:forEach var="i" items ="<%= hm %>">
		��HashMap�� ����� ������  : ${ i.key } = ${i.value }<br/>
	</c:forEach><br/>
	

	�� EL�� ����� �Ʒ��� �ڵ带 ����a �� c:set, c:if�� ���� ����� ���� <br/>
	<c:set var="aaa" value="<%= hm %>" />

	<c:forEach var="i" items ="${ aaa }" >
		<c:if test ="${ i.key == 'a' }">
			key a �� value : ${ i.value }
		 </c:if>
		 <br/>
	</c:forEach>