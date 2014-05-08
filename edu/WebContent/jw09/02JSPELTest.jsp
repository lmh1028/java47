<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.util.*" %>

<h3>4. 색인(. , [] ) 연산자 사용</h3><p/>
<%
	//==> 아래의 내용은 Controler에서 화면을 구성하기 위해 저장해 준것 으로 가정
	//1. page scope에 저장
	pageContext.setAttribute("name",new String("pageScope에 저장된 나는 페이지 문자 문자열"));
	
	//2.request scope에 저장
	request.setAttribute("name",new String("requestScope에 저장된 문자열"));
	
	//3.1 session scope에 빈(size() ==0인) Vector저장
	session.setAttribute("name",new Vector());
	//3.2 session scope에 값을 갖는 Vector 저장
	Vector v =new Vector();
	v.add(new String("sessionScope name1의 Vector에 저장된 문자열"));
	session.setAttribute("name1",v);
	
	//4. Application Scope에 값을 갖는 Map저장
	HashMap hm = new HashMap();
	hm.put("a",new String("applicationScope의 HashMap에 저장된 문자열"));
	application.setAttribute("name",hm);
%>

<!-- 
   	ㅇ EL은 자체 연산자 . 와 [ ] 연사자를 갖으며..
   	ㅇ EL도 자체적으로 implicit Object 를  갖고 있으며 ObjectScope를 사용한다
		page				==>pageScope,
		request			==>requestScope
		session			==> sessionScope
		application	==>applicationScope
   	ㅇ 이를 이용 각 ObjectScope의 Value 를 접근용이하다.
-->
<h5>1. pageObject Scope에 저장된 name의 value 접근 </h5>
     ㅇ ${ pageScope.name }  = ㅇ ${ pageScope["name"] } =<%=pageContext.getAttribute("name") %>

<h5> 2. requestObject Scope에 저장된 name의 value 접근 </h5>
	ㅇ  ${ requestScope.name }  = ㅇ  ${ requestScope["name"] } =<%=request.getAttribute("name") %>

<h5>3.  sessionObject Socpe에 저장된 name의 value(Vector)의 empty 유무</h5> 
	 ㅇ ${ empty sessionScope.name } = ${ empty sessionScope["name"] }

<h5>4.1  sessionObject Socpe에 저장된 name1의 value(Vector)의 empty 유무</h5> 
	 ㅇ ${ empty sessionScope.name1 } = ${ empty sessionScope["name1"] }=<%=session.getAttribute("name1") %>

<h5>4.2  sessionObject Scope에 저장된 name1의 value(Vector)의 0번째 index 접근</h5>
	 ㅇ ${ sessionScope.name1[0] }  =  ${ sessionScope["name1"][0] }

<h5>5.1  applicationObject Scope에 저장된 name의 value(HashMap)은 empty 유무</h5>
	 ㅇ ${empty applicationScope.name } =  ${empty applicationScope["name"] }

<h5>5.2applicationObject Scope에 저장된 name의 value(HashMap)의 내용a의 value접근</h5>
	 ㅇ ${applicationScope.name.a } = ${applicationScope["name"].a } <br/><hr/><br/>

<h3>Object Scope의 영역을 지정하지 않고 EL을 사용 name에 접근시<br/>
		  어떤 ObjectScope값이 추출되는 지 확인하자.<br/><br/>
	  	  어떤 Object Scope의 내용인가 :  ${name} </h3>