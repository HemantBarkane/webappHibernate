<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="add.jsp" method="post">
Customer Name		<input type="text" name="name">
Customer Age		<input type="text" name="age">
Customer Department <input type="text" name="dept">
					<input type="submit" value="add">

</form>
<a href="showlist.jsp">ShowData</a>
</body>
</html>