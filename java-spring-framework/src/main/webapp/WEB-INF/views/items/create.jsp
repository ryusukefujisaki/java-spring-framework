<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:import url="/WEB-INF/views/layout/layout.jsp">
  <c:param name="title" value="Item Create" />
  <c:param name="content">
    <h2>Item Create</h2>
    <form:form action="/java-spring-framework/items" method="post" modelAttribute="itemForm">
      <form:label path="name">Name:</form:label>
      <form:input path="name" />
      <form:errors path="name" cssStyle="color: red;" />
      <input type="submit" value="Submit" />
    </form:form>
  </c:param>
</c:import>
