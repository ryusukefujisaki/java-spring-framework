<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:import url="/WEB-INF/views/layout/layout.jsp">
  <c:param name="title" value="Item Create" />
  <c:param name="content">
    <h2>Item Create</h2>
    <form:form action="/java-spring-framework/items" method="post" modelAttribute="itemForm">
      <div class="form-group" style="margin-bottom: 1rem;">
        <form:label path="name">name</form:label>
        <form:input path="name" class="form-control" />
        <form:errors path="name" cssStyle="color: red;" />
      </div>
      <button
        class="btn btn-primary"
        type="submit"
        style="width: 160px;"
      >
        Submit
      </button>
      <button
        class="btn btn-outline-secondary"
        type="button"
        onclick='location.href="/java-spring-framework/items";'
        style="width: 160px; margin-left: 1rem;"
      >
        Back
      </button>
    </form:form>
  </c:param>
</c:import>
