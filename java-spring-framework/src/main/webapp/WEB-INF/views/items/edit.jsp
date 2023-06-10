<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Item Edit</title>
  </head>
  <body>
    <h2>Item Edit</h2>
    <table>
      <thead>
        <tr>
          <th>id</th>
          <th>name</th>
          <th>created_at</th>
          <th>updated_at</th>
          <th></th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <form:form action="/java-spring-framework/items/update" method="post" modelAttribute="itemForm">
            <td><c:out value="${item.getId()}" /></td>
            <td>
              <form:input path="name" value="${item.getName()}" />
              <form:errors path="name" cssStyle="color: red;" />
            </td>
            <td><c:out value="${item.getCreatedAt()}" /></td>
            <td><c:out value="${item.getUpdatedAt()}" /></td>
            <td><input type="submit" value="Submit" /></td>
          </form:form>
        </tr>
      </tbody>
    </table>
  </body>
</html>
