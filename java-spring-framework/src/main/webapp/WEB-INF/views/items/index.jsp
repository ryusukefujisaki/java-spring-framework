<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:import url="/WEB-INF/views/layout/layout.jsp">
  <c:param name="title" value="Item Index" />
  <c:param name="content">
    <h2>Item Index</h2>
    <c:if test="${message != null}">
      <p>
        <font color="green"><c:out value="${message}" /></font>
      </p>
    </c:if>
    <button type="button" onclick='location.href="/java-spring-framework/items/create"'>
      Create
    </button>
    <table>
      <thead>
        <tr>
          <th>id</th>
          <th>name</th>
          <th>created_at</th>
          <th>updated_at</th>
          <th></th>
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
              <button type="button" onclick='location.href="/java-spring-framework/items/${item.getId()}/edit"'>
                Edit
              </button>
            </td>
            <td>
              <form:form action="/java-spring-framework/items/${item.getId()}/delete" method="post">
                <input type="submit" value="Delete">
              </form:form>
            </td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
  </c:param>
</c:import>
