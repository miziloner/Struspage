<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bienvenida JSP1</h1>
    <html:form action="WelcomeStruts.do?do=init" method="post" onsubmit="return false" enctype="multipart/form-data" styleId="WelcomeForm">
	
	<h1>Homa</h1>
    </html:form>	
    </body>
</html>
