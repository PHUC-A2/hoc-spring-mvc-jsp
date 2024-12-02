<%@page contentType="text/html" pageEncoding="UTF-8" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %> <%@taglib
uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Update ${newUser.id}</title>
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
        <div class="col-md-12 col-12 mx-auto">
          <form:form
            action="/admin/user/update"
            method="post"
            modelAttribute="newUser"
          >
            <h3>Update a user</h3>
            <hr />
            <div class="mb-3" style="display: none">
              <!-- style="display: none" ẩn id -->
              <label class="form-label">Id:</label>
              <form:input type="Number" class="form-control" path="id" />
            </div>
            <div class="mb-3">
              <label class="form-label">Email:</label>
              <form:input
                type="email"
                class="form-control"
                path="email"
                disabled="true"
              />
              <!-- disabled="true" không cho đổi email -->
            </div>
            <div class="mb-3">
              <label class="form-label">Phone Number:</label>
              <form:input type="text" class="form-control" path="phone" />
            </div>
            <div class="mb-3">
              <label class="form-label">Full Name:</label>
              <form:input type="text" class="form-control" path="fullName" />
            </div>
            <div class="mb-3">
              <label class="form-label">Address:</label>
              <form:input type="text" class="form-control" path="address" />
            </div>
            <button type="submit" class="btn btn-warning">Update</button>
            <a href="/admin/user" class="btn btn-success">Back</a>
          </form:form>
        </div>
      </div>
    </div>
  </body>
</html>
