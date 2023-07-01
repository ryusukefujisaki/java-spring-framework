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
    <button
      class="btn btn-outline-primary"
      type="button"
      onclick='location.href="/java-spring-framework/items/create"'
      style="width: 160px; margin: 1rem auto;"
    >
      Create
    </button>
    <table class="table" style="table-layout: fixed;">
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
          <tr style="vertical-align: middle;">
            <td><c:out value="${item.getId()}" /></td>
            <td><c:out value="${item.getName()}" /></td>
            <td><c:out value="${item.getCreatedAt()}" /></td>
            <td><c:out value="${item.getUpdatedAt()}" /></td>
            <td>
              <button
                class="btn btn-outline-success"
                type="button"
                onclick='location.href="/java-spring-framework/items/${item.getId()}/edit"'
                style="width: 160px;"
              >
                Edit
              </button>
            </td>
            <td>
              <form:form action="/java-spring-framework/items/${item.getId()}/delete" method="post">
                <button
                  class="btn btn-outline-danger"
                  type="submit"
                  onclick='return confirm("confirmation");'
                  style="width: 160px;"
                >
                  Delete
                </button>
              </form:form>
            </td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
  </c:param>
</c:import>
