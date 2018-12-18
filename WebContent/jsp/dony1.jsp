<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%-- <%@ include file="../js/commonUIForm.js"%> --%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>git test2</title>
<script src="http://code.jquery.com/jquery-3.3.1.js"></script>
<script src="../js/formUtil.js"></script>
<script src="../js/util.js"></script>

<script>
	$(document).ready(function() {
		$("#button1").on("click", function() {
			$.ajax({
				type: "get",
				url: "ajaxTest.jsp",
// 				url: "TestServlet?type=1",
				data: {
					value1: "다니"
				},
				dataType: "text",
// 				dataType: "formData",
				success: function( responseData, status, xhr) {
					$("#resultArea").text(responseData);
				},
				error:function(xhr, status, error){
					console.log(error);
				}
			});
		});
	});
</script>

</head>
<body>
	<form name=donyForm>
		<table>
			<tr>
				<td>짜증난다ㅌㅌㅌㅌ
					<input name=input1 type="text" value=""/>
				</td>
			</tr>
			<tr>
				<td>
					<input id=button1 name=button1 type="button" value="Click" />
				</td>
			</tr>
			<tr>
				<td>
					<textarea id="resultArea" cols="100" rows="20"></textarea>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>