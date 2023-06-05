<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Item Index</title>
    <script src="/java-spring-framework/jquery/jquery.min.js"></script>
    <script>
    $(function () {
      $('[id^=delete-item]').on('click', function () {
        console.log($(this).data('delete-item-id'));
      });
    });
    </script>
  </head>
  <body>
    <h2>Item Index</h2>
    <c:if test="${message != null}">
      <p>
        <font color="green"><c:out value="${message}"></c:out></font>
      </p>
    </c:if>
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
        <c:forEach var="item" items="${items}">
          <tr>
            <td><c:out value="${item.getId()}" /></td>
            <td><c:out value="${item.getName()}" /></td>
            <td><c:out value="${item.getCreatedAt()}" /></td>
            <td><c:out value="${item.getUpdatedAt()}" /></td>
            <td>
              <button
                id="delete-item-${item.getId()}"
                type="button"
                data-delete-item-id="${item.getId()}"
              >
                Delete
              </button>
            </td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
  </body>
</html>
