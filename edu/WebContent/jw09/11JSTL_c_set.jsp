<%@ page contentType="text/html;charset=euc-kr" %>

<!-- JSTL ��� :  taglib Directive ����-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h3>�� taglib�� c:set, c:remove,c:out�� ���</h3>

<c:set var="num1" value="100" scope="page"/>
<c:set var="num2" /> <!-- scope ������ �� default�� page -->

1. num1�� empty : ${empty pageScope.num1}  num1= ${ pageScope.num1} <br/>

2. num2�� empty : ${empty num2}  num2 = ${num2} <br/>

3. num1+num2 : ${num1+pageScope.num2}<br/>

<!-- EL�� JSTL���� ���� ���Ǿ���,  JSP2.0���� default ������ -->
4. c:out�� ����� num1+num2 : <c:out value="${num1+num2}" /><br/>
<!-- EL�� ����� ���ΰ�, c:out�� ����� ���ΰ�. ????? -->
<!-- JSP 2.0���� SPEC������ EL�� ��밡���Ѱ�. ???? -->
<hr/>

<c:set var="num1" value="${num1+100}" />
5. num1 : ${num1} <br/><hr/>

<c:remove var="num1" scope="page" /> 
<!-- remove�� scope�� ��Ȯ�ϰ�...-->
6. num1�� empty : ${empty num1}  num1 = [_${num1}_] <br/>

7. num2�� empty : ${empty num2}  num2 = [_${pageScope.num2}_]