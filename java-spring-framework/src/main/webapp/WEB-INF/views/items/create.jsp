<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Item Create</title>
  </head>
  <body>
    <h2>Item Create</h2>
    <form:form action="/java-spring-framework/items" method="post" modelAttribute="itemForm">
      <form:label path="name">Name:</form:label>
      <form:input path="name" />
      <form:errors path="name" cssStyle="color: red;" />
      <input type="submit" value="Submit" />
    </form:form>
  </body>
</html>
