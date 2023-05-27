<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Item Index</title>
  </head>
  <body>
    <h2>Item Index</h2>
    <table>
      <thead>
        <tr>
          <th>id</th>
          <th>name</th>
          <th>created_at</th>
          <th>updated_at</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach var="item" items="${items}">
          <tr>
            <td><c:out value="${item.getId()}" /></td>
            <td><c:out value="${item.getName()}" /></td>
            <td><c:out value="${item.getCreatedAt()}" /></td>
            <td><c:out value="${item.getUpdatedAt()}" /></td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
  </body>
</html>
