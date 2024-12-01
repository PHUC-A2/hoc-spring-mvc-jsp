<%@page contentType="text/html" pageEncoding="UTF-8" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %> <%@taglib
uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>User Detail ${id}</title>
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
            <!-- id nhận từ view -->
            <h3>User Detail with id = ${id}</h3>
          </div>
          <hr />
          <div class="card" style="width: 100%">
            <div class="card-header">User onformation</div>
            <ul class="list-group list-group-flush">
              <li class="list-group-item">ID:${id}</li>
              <li class="list-group-item">Email:${user.email}</li>
              <li class="list-group-item">Password:${user.passWord}</li>
              <li class="list-group-item">Phone:${user.phone}</li>
              <li class="list-group-item">FullName:${user.fullName}</li>
              <li class="list-group-item">Address:${user.address}</li>
            </ul>
          </div>
          <div class="mt-4">
            <a href="/admin/user" class="btn btn-success">Back</a>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
