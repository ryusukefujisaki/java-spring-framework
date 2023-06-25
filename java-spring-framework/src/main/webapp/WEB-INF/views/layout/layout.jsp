<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <title>${param.title} | Java Spring Framework</title>
    <link rel="icon" href="/java-spring-framework/images/favicon.ico">
    <link rel="stylesheet" href="/java-spring-framework/bootstrap/css/bootstrap.min.css">
  </head>
  <body>
    <c:import url="/WEB-INF/views/layout/header.jsp" />
    <div id="main" style="margin-top: 130px;">
      ${param.content}
    </div>
    <c:import url="/WEB-INF/views/layout/footer.jsp" />
  </body>
</html>
