<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../common/header.jsp"%> 
<s:form >
<input type="file" name="filename" style="width: 60%" /> 
<input type="submit" name="upload" value="upload file"/>
</s:form>
<%@ include file="../common/footer.jsp"%> 
</body>
</html>