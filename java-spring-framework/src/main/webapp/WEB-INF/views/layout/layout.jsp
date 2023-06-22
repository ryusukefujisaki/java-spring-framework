<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <title>${param.title} | Java Spring Framework</title>
  </head>
  <body>
    <c:import url="layout/header.jsp" />
    <div id="main" style="margin-top: 100px;">
      ${param.content}
    </div>
    <c:import url="layout/footer.jsp" />
  </body>
</html>
