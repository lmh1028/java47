<%@ page contentType="text/html;charset=euc-kr" %>

<!-- JSTL 사용 :  taglib Directive 설정-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h3>ㅇ taglib의 c:set, c:remove,c:out을 사용</h3>

<c:set var="num1" value="100" scope="page"/>
<c:set var="num2" /> <!-- scope 미정의 시 default는 page -->

1. num1은 empty : ${empty pageScope.num1}  num1= ${ pageScope.num1} <br/>

2. num2은 empty : ${empty num2}  num2 = ${num2} <br/>

3. num1+num2 : ${num1+pageScope.num2}<br/>

<!-- EL은 JSTL에서 먼저 사용되었고,  JSP2.0에서 default 지원함 -->
4. c:out을 사용한 num1+num2 : <c:out value="${num1+num2}" /><br/>
<!-- EL을 사용할 것인가, c:out을 사용할 것인가. ????? -->
<!-- JSP 2.0아하 SPEC에서도 EL은 사용가능한가. ???? -->
<hr/>

<c:set var="num1" value="${num1+100}" />
5. num1 : ${num1} <br/><hr/>

<c:remove var="num1" scope="page" /> 
<!-- remove시 scope을 명확하게...-->
6. num1은 empty : ${empty num1}  num1 = [_${num1}_] <br/>

7. num2은 empty : ${empty num2}  num2 = [_${pageScope.num2}_]