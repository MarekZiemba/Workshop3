<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/header.jsp" %>

<%--<body class="bg-gradient-primary">--%>
<div class="container-fluid">
  <!-- Page Heading -->
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
    <a href="<c:url value="/user/list"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
      <i class="fas fa-download fa-sm text-white-50"></i>Users List</a>
  </div>
</div>

<div class="container">
  <div class="card o-hidden border-0 shadow-lg my-5">
    <div class="card-body p-0">
      <!-- Nested Row within Card Body -->
      <div class="row">
        <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
        <div class="col-lg-7">
          <div class="p-5">
            <div class="text-center">
              <h1 class="h4 text-gray-900 mb-4">Add a User!</h1>
            </div>
            <form class="user" method="post">
              <div class="form-group row">
                <div class="col-sm-6 mb-3 mb-sm-0">
                  <%--                                    <label for="userName">User Name</label>--%>
                  <input type="text" name="userName" id="userName" class="form-control form-control-user" placeholder="User Name">
                </div>
                <%--                                <div class="col-sm-6">--%>
                <%--                                    <input type="text" class="form-control form-control-user" id="exampleLastName"--%>
                <%--                                           placeholder="Last Name">--%>
                <%--                                </div>--%>
              </div>
              <div class="form-group">
                <%--                                <label for="userEmail">Email</label>--%>
                <input type="email" name="userEmail" id="userEmail" class="form-control form-control-user" placeholder="Email Address">
              </div>
              <div class="form-group row">
                <div class="col-sm-6 mb-3 mb-sm-0">
                  <%--                                    <label for="userPassword">Password</label>--%>
                  <input type="password" name="userPassword" id="userPassword" class="form-control form-control-user" placeholder="Password">
                </div>
              </div>
              <button type="submit" class="btn btn-primary btn-user btn-block">
                Register Account
              </button>
              <hr>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- /.container-fluid -->

<!-- End of Main Content -->

<%@ include file="/footer.jsp" %>
