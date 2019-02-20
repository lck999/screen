<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<title>Echo Application</title>
</head>
<body>
<%--
  <!-- (1) -->
  <form:form modelAttribute="echoForm" action="${pageContext.request.contextPath}/">
    <form:label path="name">Input Your Name:</form:label>

    <form:input path="name" />

    <form:errors path="name" cssStyle="color:red" /><!-- (1) -->

    <input type="submit" />
  </form:form>

 --%>


  	<h2 style="background-color: #CEF6F5">社員詳細</h2>

<!-- 	<form:form action="./FormServlet"> -->
<!-- <form method="post" action="./FormServlet"> -->
<%--
  <form:form modelAttribute="EchoForm" action="${pageContext.request.contextPath}/home">
    <form:label path="ID">Input Your Name:</form:label>
    <form:input path="ID" />
    <input type="submit" />
  </form:form>
 --%>


<%-- <form action="./FormServlet"> --%>

<form:form modelAttribute="echoForm" action="${pageContext.request.contextPath}/">

		<table border="1" cellspacing="0" cellpadding="5"
			bordercolor="#000000" style="border-collapse: collapse">
			<tr>
				<td width="150">社員ID</td>
				<td width="120">


    <form:label path="ID">ID</form:label>

    <form:input path="ID" />


    <form:errors path="ID" cssStyle="color:red" /><!-- (1) -->


				</td>
			</tr>

		</table>
		<br>


		<table border="1" cellspacing="0" cellpadding="5"
			bordercolor="#000000" style="border-collapse: collapse">
			<tr>
				<td width="150">社員名（姓）</td>

				<td width="120">

     <form:label path="mei">Input Your Name:</form:label>

    <form:input path="mei" />

    <form:errors path="mei" cssStyle="color:red" /><!-- (1) -->


				</td>
			</tr>
		</table>



		<table border="1" cellspacing="0" cellpadding="5"
			bordercolor="#000000" align="right" style="border-collapse: collapse">
			<tr>
				<td width="150">入社年月</td>
				<td width="120">

    <form:label path="month">Input Your Name:</form:label>

    <form:input path="month" />

    <form:errors path="month" cssStyle="color:red" /><!-- (1) -->

				</td>
			</tr>
		</table>

		<br>

		<table border="1" cellspacing="0" cellpadding="5"
			bordercolor="#000000" style="border-collapse: collapse">
			<tr>
				<td width="150">社員名（名）</td>
				<td width="120">

    <form:label path="mei2">Input Your Name:</form:label>

    <form:input path="mei2" />

    <form:errors path="mei2" cssStyle="color:red" /><!-- (1) -->
				</td>
			</tr>
		</table>


		<table border="1" cellspacing="0" cellpadding="5" align="right"
			bordercolor="#000000" style="border-collapse: collapse">

			<tr>
				<td width="150">チーム名</td>
				<td width="120">

    <form:label path="team">Input Your Name:</form:label>

    <form:input path="team" />


    <form:errors path="team" cssStyle="color:red" /><!-- (1) -->

				</td>
			</tr>
		</table>

		<br>

		<table border="1" cellspacing="0" cellpadding="5"
			bordercolor="#000000" style="border-collapse: collapse">
			<tr>
				<td width="150">社員名（姓（英））</td>
				<td width="120">

    <form:label path="mei3">Input Your Name:</form:label>

    <form:input path="mei3" />


    <form:errors path="mei3" cssStyle="color:red" /><!-- (1) -->

				</td>
			</tr>
		</table>

		<br>

		<table border="1" cellspacing="0" cellpadding="5"
			bordercolor="#000000" style="border-collapse: collapse">
			<tr>
				<td width="150">社員名（名（英））</td>
				<td width="120">

    <form:label path="mei4">Input Your Name:</form:label>

    <form:input path="mei4" />

    <form:errors path="mei4" cssStyle="color:red" /><!-- (1) -->
				</td>
			</tr>
		</table>

		<br>

		<table border="1" cellspacing="0" cellpadding="5"
			bordercolor="#000000" style="border-collapse: collapse">
			<tr>
				<td width="150">性別</td>
				<td width="120">

    <form:label path="sex">Input Your Name:</form:label>

    <form:input path="sex" />

    <form:errors path="sex" cssStyle="color:red" /><!-- (1) -->

				</td>
			</tr>
		</table>

		<br>

		<table border="1" cellspacing="0" cellpadding="5"
			bordercolor="#000000" style="border-collapse: collapse">
			<tr>
				<td width="150">年齢</td>
				<td width="120">

    <form:label path="old">Input Your Name:</form:label>

    <form:input path="old" />

    <form:errors path="old" cssStyle="color:red" /><!-- (1) -->
				</td>
			</tr>
		</table>
    <input type="submit" value= "登録"/>
  </form:form>

<!--</form:form> -->
<!--
	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;

 -->


	<form:form action="POST" modelAttribute="NextForm">

		<button onclick="OnButtonClick()">戻る</button>
		<script language="javascript" type="text/javascript">
			//OKボタンを押したときに呼び出される関数
			function OnButtonClick() {
				if (confirm('これで大丈夫ですか')) {
					history.back();
				} else {
	return false;
				}
			}
		</script>

	</form:form>
</body>
</html>