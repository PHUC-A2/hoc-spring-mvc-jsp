<%@page contentType="text/html" pageEncoding="UTF-8" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<a%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
  <!DOCTYPE html>
  <html lang="en">
    <head>
      <meta charset="UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <title>Talbe User</title>
      <link
        rel="stylesheet"
        href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css"
        integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I"
        crossorigin="anonymous"
      />
      <script
        src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"
      ></script>
      <script
        src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js"
        integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/"
        crossorigin="anonymous"
      ></script>
    </head>
    <body>
      <div class="container mt-5">
        <div class="row">
          <div class="col-12 mx-auto">
            <div class="d-flex justify-content-between">
              <h3>Table user</h3>
              <a href="/admin/user/create" class="btn btn-primary"
                >Create a user</a
              >
            </div>
            <hr />
            <table class="table table-bordered table-hover">
              <thead>
                <tr>
                  <th>ID</th>
                  <th>Email</th>
                  <th>Full Name</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                <!-- users1 bên controller -->
                <c:forEach var="user" items="${users1}">
                  <tr>
                    <th>${user.id}</th>
                    <td>${user.email}</td>
                    <td>${user.fullName}</td>
                    <td>
                      <a
                        href="/admin/user/view/${user.id}"
                        type="submit"
                        class="btn btn-success"
                        >View</a
                      >
                      <a
                        href="/admin/user/update/${user.id}"
                        type="submit"
                        class="btn btn-warning"
                      >
                        Update
                      </a>
                      <button type="submit" class="btn btn-danger">
                        Delete
                      </button>
                    </td>
                  </tr>
                </c:forEach>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </body>
  </html>
</a%@taglib>
