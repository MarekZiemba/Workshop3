<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/header.jsp" %>

<%--<form action="/user/show" method="get">--%>
<div class="container-fluid">
  <!-- Page Heading -->
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
    <a href="<c:url value="/user/list"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
      <i class="fas fa-download fa-sm text-white-50"></i>Users List</a>
  </div>
</div>
<form method="get">
  <label for="id">User ID:</label>
  <input type="text" id="id" name="id" value=${user.id}><br><br>
  <button type="submit" class="btn btn-primary btn-user ">Show User Data</button>
</form>
<hr>
<h3>User Data:</h3>
<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
  <thead>
  <tr>
    <th>Id</th>
    <th>User Name</th>
    <th>Email</th>
  </tr>
  </thead>
  <tbody>
  <tr>
    <td>${user.id}</td>
    <td>${user.userName}</td>
    <td>${user.email}</td>
  </tr>
  </tbody>
  <tfoot>
  <tr>
    <th>Id</th>
    <th>User Name</th>
    <th>Email</th>
  </tr>
  </tfoot>
</table>

<%@ include file="/footer.jsp" %>
