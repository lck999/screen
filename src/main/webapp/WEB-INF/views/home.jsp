<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%@ page import="java.util.*,java.io.*"%>

<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	社員一覧
</h1>

<%--
  <p>
    テキスト記入結果： <c:out value="${name}" />
  </p>

  <p>
    テキスト記入結果： <c:out value="${ID}" />
  </p>
 --%>

	<tr>

		<a href="<c:url value='/' />"><input type="submit" value="読込" /></a>

			<a href="<c:url value='/echo' />"><input type="submit" value="新規" /></a>

</tr>
		<input type="submit" value="変更" />

		<input type="submit" value="削除" />


		<a href="<c:url value='/Clear' />"><input type="submit" value="クリア" onclick="return confirm('クリア？');" /></a>

		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;

<!-- 		<input type="submit" value="登録" /> -->
<!--
<form method="post" action="Writer" name="Writer">
		<input type="submit" value="登録"
		<script type="text/javascript">
function select(type) {
    document.zaikoForm.submitType = type;
    document.zaikoForm.submit();
}
</script>
		    <form:label path="Writer">Writer</form:label> />
</form>
 -->
]
		&emsp;&emsp;&emsp;


		<input type="submit" value="終了" onClick="OnButtonClick()" />

<script language="javascript" type="text/javascript">
  //OKボタンを押したときに呼び出される関数
  function OnButtonClick() {
    if ( confirm('終了します') ) {
    	window.close();
    }else{
return false;
    }
  }
</script>

	</tr>
	<br>
	<br>
	<br>

	<p>
		ソート項目 <select><option></option></select> <input type="radio"
			name="hyouka" value="good" checked="checked">昇順 <input
			type="radio" name="hyouka" value="bad">降順
	</p>

	<table border>

		<table border="1" width="100%" style="table-layout: fixed;">
			<tr>
				<td>社員ID</td>
				<td>社員名(姓)</td>
				<td>社員名(名)</td>
				<td>社員名(姓(英))</td>
				<td>社員名(名(英)</td>
				<td>入社年月</td>
				<td>性別</td>
				<td>年齢</td>
				<td>チーム名</td>
			</tr>

		</table>

		<%
	BufferedReader bufFileData = new BufferedReader(new FileReader("C:\\work\\test.csv"));
	String s ;

        while( (s = bufFileData.readLine()) != null ) {
            // カンマで分割したString配列を得る
            String array[] = s.split( "," );
            // データ数をチェックしたあと代入、プリントする
//            if( array.length != 9 ) throw new NumberFormatException();
 //           for(int i = 0; i < array.length ; i++){

            String ID = array[0];
            String mei = array[1];
            String month = array[2];
            String mei2 = array[3];
            String team = array[4];
            String mei3 = array[5];
            String mei4 = array[6];
            String sex = array[7];
            String old = array[8];

            // 内容を出力する
 //           System.out.println( "|"+shcd+"|"+name+"|"+price+"|"+price1+"|"+price2+"|"+price3+"|"+price4+"|"+price5+"|"+price6+"|");
//		System.out.println(array[i]);
        	%>
<%--
		<table border="1" width="100%" style="table-layout: fixed;">
			<tr>

				<td><%= array[i] %></td>

				<td><%= array[i] %></td>
				<td><%= array[i] %></td>
				<td><%= array[i] %></td>
				<td><%= array[i] %></td>
				<td><%= array[i] %></td>
				<td><%= array[i] %></td>
				<td><%= array[i] %></td>
				<td><%= array[i] %></td>

 --%>
 <table border="1" height="5%" width="100%" style="table-layout: fixed;">
<tr>
				<td><%= ID %></td>
				<td><%= mei %></td>
				<td><%= month %></td>
				<td><%= mei2 %></td>
				<td><%= team %></td>
				<td><%= mei3 %></td>
				<td><%= mei4 %></td>
				<td><%= sex %></td>
				<td><%= old %></td>

			</tr>
		</table>
		<%

 }
	bufFileData.close();
%>

 <table border="1" height= "5%" width="100%" style="table-layout: fixed;">
<tr>
				<td><c:out value="${ID}" /></td>
				<td><c:out value="${mei}" /></td>
				<td><c:out value="${month}" /></td>
				<td><c:out value="${mei2}" /></td>
				<td><c:out value="${team}" /></td>
				<td><c:out value="${mei3}" /></td>
				<td><c:out value="${mei4}" /></td>
				<td><c:out value="${sex}" /></td>
				<td><c:out value="${old}" /></td>


			</tr>
		</table>



</body>
</html>l>