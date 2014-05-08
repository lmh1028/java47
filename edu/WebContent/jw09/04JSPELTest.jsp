<%@ page contentType="text/html;charset=euc-kr" %>

<!--  아래의 scriptlet tag, jsp:useBean, EL 로 표현한 것을 비교, 이해-->
<%
	//==> 아래의 내용은 Control에서 화면을 구성하기 위해 저장해 준것 으로 가정
	//==> 각각의 SessionScope에 객체를 저장하자..	
	session.setAttribute("client01", new jw09.Client());
	
	//session에 저장된 Client객체의 상태값을 추출하여보면.....
	out.println("<h3>1. scriptlet tag를 이용하여 session에 저장된 Client instance 사용 </h3>");
	
	jw09.Client client1 = (jw09.Client)session.getAttribute("client01");
	
	out.println("이름 : "+client1.getName()+"<br/>");
	String[] info = client1.getInfo();
	for(int i=0; i < info.length  ; i++){
		out.println("info 배열의 index ["+ i+"]  : "+ info[i]+"<br/>" );
	}
%>

<hr/>
<h3>2. jsp:useBean을 이용한 Client객채 사용 ::  jsp:getProperty로 접근할경우</h3>
<jsp:useBean id="client01" class="jw09.Client" scope="session" />
이름 : [ <jsp:getProperty name="client01" property="name" /> ] 은 접근가능하나<br/>
배열 : [ <jsp:getProperty name="client01" property="info" /> ]  
           Collection(배열등..)의 내부 Value에 접근이 불가능하다<br/>


<hr/>
<h3>3. EL의 내장객체를 사용하여 bean 인스턴스에 저장된 Field 및 배열에 접근하면 ...</h3>

3.1  session Object Scope 에 저장된 name: ${ sessionScope.client01.name }<br/>

<!--  ObjectScope을 명시하지 않은면 각각의 ObjectScope 에서 찾는다. -->
3.2  session Object Scope 에 저장된 addr: ${ client01.addr }<br/>

3.3  session Object Scope 에 저장된 age: ${ client01.age }<br/>

3.4  session ObjectScope 에 저장된 info 배열은 empty : ${ empty client01.info }<br/>

3.5  session ObjectScope 에 저장된 info 배역의 각각의 value는<br/>
	ㅇ info 배열의 index 0 value : ${ sessionScope.client01.info[0] }<br/>
	ㅇ info 배열의 index 1 value :  ${ client01.info[1] }<br/>
   
 <!--	EL의 특징 : ObjectScope,Bean,Collection에 접근용이  -->  