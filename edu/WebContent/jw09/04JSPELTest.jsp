<%@ page contentType="text/html;charset=euc-kr" %>

<!--  �Ʒ��� scriptlet tag, jsp:useBean, EL �� ǥ���� ���� ��, ����-->
<%
	//==> �Ʒ��� ������ Control���� ȭ���� �����ϱ� ���� ������ �ذ� ���� ����
	//==> ������ SessionScope�� ��ü�� ��������..	
	session.setAttribute("client01", new jw09.Client());
	
	//session�� ����� Client��ü�� ���°��� �����Ͽ�����.....
	out.println("<h3>1. scriptlet tag�� �̿��Ͽ� session�� ����� Client instance ��� </h3>");
	
	jw09.Client client1 = (jw09.Client)session.getAttribute("client01");
	
	out.println("�̸� : "+client1.getName()+"<br/>");
	String[] info = client1.getInfo();
	for(int i=0; i < info.length  ; i++){
		out.println("info �迭�� index ["+ i+"]  : "+ info[i]+"<br/>" );
	}
%>

<hr/>
<h3>2. jsp:useBean�� �̿��� Client��ä ��� ::  jsp:getProperty�� �����Ұ��</h3>
<jsp:useBean id="client01" class="jw09.Client" scope="session" />
�̸� : [ <jsp:getProperty name="client01" property="name" /> ] �� ���ٰ����ϳ�<br/>
�迭 : [ <jsp:getProperty name="client01" property="info" /> ]  
           Collection(�迭��..)�� ���� Value�� ������ �Ұ����ϴ�<br/>


<hr/>
<h3>3. EL�� ���尴ü�� ����Ͽ� bean �ν��Ͻ��� ����� Field �� �迭�� �����ϸ� ...</h3>

3.1  session Object Scope �� ����� name: ${ sessionScope.client01.name }<br/>

<!--  ObjectScope�� ������� ������ ������ ObjectScope ���� ã�´�. -->
3.2  session Object Scope �� ����� addr: ${ client01.addr }<br/>

3.3  session Object Scope �� ����� age: ${ client01.age }<br/>

3.4  session ObjectScope �� ����� info �迭�� empty : ${ empty client01.info }<br/>

3.5  session ObjectScope �� ����� info �迪�� ������ value��<br/>
	�� info �迭�� index 0 value : ${ sessionScope.client01.info[0] }<br/>
	�� info �迭�� index 1 value :  ${ client01.info[1] }<br/>
   
 <!--	EL�� Ư¡ : ObjectScope,Bean,Collection�� ���ٿ���  -->  