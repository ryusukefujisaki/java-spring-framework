<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:import url="/WEB-INF/views/layout/layout.jsp">
  <c:param name="title" value="Item Edit" />
  <c:param name="content">
    <h2>Item Edit</h2>
    <table class="table" style="table-layout: fixed;">
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
        <tr style="vertical-align: middle;">
          <form:form action="/java-spring-framework/items/${item.getId()}/update" method="post" modelAttribute="itemForm">
            <td><c:out value="${item.getId()}" /></td>
            <td>
              <form:input path="name" class="form-control" value="${item.getName()}" />
              <c:if test="${bindingResult != null && bindingResult.getFieldError(\"name\") != null}">
                <font color="red"><c:out value="${bindingResult.getFieldError(\"name\").getDefaultMessage()}" /></font>
              </c:if>
            </td>
            <td><c:out value="${item.getCreatedAt()}" /></td>
            <td><c:out value="${item.getUpdatedAt()}" /></td>
            <td>
              <button
                class="btn btn-primary"
                type="submit"
                style="width: 160px;"
              >
                Submit
              </button>
            </td>
          </form:form>
        </tr>
      </tbody>
    </table>
  </c:param>
</c:import>
