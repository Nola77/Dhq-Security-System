<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
	<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
	<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Security - CheckIn</title>

  <!-- Custom fonts for this template -->
  <link href="../static/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="../static/admin/css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="../static/admin/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
        <div class="sidebar-brand-icon">
          <img class="h-200 w-100" src="http://desuung.org.bt/wp-content/uploads/2020/11/qwert.png" alt="De-suung logo">
        </div>
        <div class="sidebar-brand-text mx-3">Security System</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item">
        <a class="nav-link" href="/admin/employee-user-dashboard">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        CheckIn
      </div>


      <!-- Nav Item -Staff List -->
      <li class="nav-item active">
        <a class="nav-link" href="/admin/employee-datatable-users">
          <i class="fas fa-list"></i>
          <span>CheckIn</span></a>
      </li>

      <!-- Heading -->
       <div class="sidebar-heading">
       CheckIn List & CheckOut
      </div>

     <!-- Nav Item -Attendance List -->
      <li class="nav-item">
       <a class="nav-link" href="/admin/attendance-datatable-users">
       <i class="fas fa-list"></i>
       <span>CheckIn List & CheckOut</span></a>
      </li>

      <!-- Heading -->
      <div class="sidebar-heading">
      Attendance
       </div>

      <!-- Nav Item -Attendance List -->
       <li class="nav-item">
        <a class="nav-link" href="/admin/checkout-datatable-users">
        <i class="fas fa-list"></i>
        <span>Attendance List</span></a>
       </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

       <!-- Heading -->
        <div class="sidebar-heading">
        Visitor
        </div>

        <!-- Nav Item -Visitor List -->
        <li class="nav-item">
        <a class="nav-link" href="/admin/department-datatable-users">
         <i class="fas fa-list"></i>
         <span>Visitor List</span></a>
        </li>

       <!-- Heading -->
        <div class="sidebar-heading">
        Add Visitor
       </div>

       <!-- Nav Item -Add Visitor -->
        <li class="nav-item">
        <a class="nav-link" href="/admin/employee-department-add">
        <i class="fas fa fa-plus"></i>
        <span>Add Visitor</span></a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <form class="form-inline">
            <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
              <i class="fa fa-bars"></i>
            </button>
          </form>

          <!-- Topbar Search -->
          <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <div class="input-group">
              <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
              <div class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <i class="fas fa-search fa-sm"></i>
                </button>
              </div>
            </div>
          </form>

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </li>

            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">
                    <security:authorize access="isAuthenticated()">
					    <security:authentication property="name" />
					</security:authorize>
                </span>
                <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                  Profile
                </a>
                <form action="logout" method="post">
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="/logout">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
                </form>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
         <div class="container-fluid">

        <!-- Page Heading -->
         <h1 class="h3 mb-2 text-gray-800">CheckIn</h1>

        <!-- DataTales Staff List -->
          <div class="card shadow mb-4">
             <div class="card-header py-3">
             <h6 class="m-0 font-weight-bold text-primary">CheckIn</h6>
           </div>
           <div class="card-body">
            <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
            <thead>
           <tr>
              <th>sl.no</th>
              <th>First Name</th>
              <th>Last Name</th>
              <th>Email</th>
              <th>CID</th>
              <th>Department</th>
              <th>Mobile Number</th>
              <th>DID</th>
              <th>Gender</th>
              <th>CheckIn</th>
            </tr>
            </thead>
               <tbody>
        	<c:forEach var="employee" items="${listEmployees}">

            <tr>
            <td>${employee.id}</td>
            <td>${employee.firstName}</td>
        	<td>${employee.lastName}</td>
        	<td>${employee.email}</td>
        	<td>${employee.nic}</td>
        	<td>${employee.department}</td>
        	<td>${employee.mobileNo}</td>
        	<td>${employee.designation}</td>
        	<td>${employee.gender}</td>

            <td>
             <a href="#" class="btn btn-info btn-icon-split checkin-btn" data-employee-id="${employee.id}">
             <span class="text">CheckIn</span>
             </a>
            </td>

          </tr>
           </c:forEach>
           </tbody>
           </table>
           </div>
           </div>
          </div>

          </div>
          <!-- /.container-fluid -->

              </div>
              <!-- End of Main Content -->

              <!-- Footer -->
              <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                  <div class="copyright text-center my-auto">
                    <span>Copyright &copy; DHQ Security System 2023</span>
                  </div>
                </div>
              </footer>
              <!-- End of Footer -->

            </div>
            <!-- End of Content Wrapper -->

          </div>
          <!-- End of Page Wrapper -->

          <!-- Scroll to Top Button-->
          <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
          </a>

          <!-- Logout Modal-->
          <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                  <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">�</span>
                  </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                  <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                  <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
              </div>
            </div>
          </div>

          <!-- Bootstrap core JavaScript-->
          <script src="../static/admin/vendor/jquery/jquery.min.js"></script>
          <script src="../static/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

          <!-- Core plugin JavaScript-->
          <script src="../static/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

          <!-- Custom scripts for all pages-->
          <script src="../static/admin/js/sb-admin-2.min.js"></script>

          <!-- Page level plugins -->
          <script src="../static/admin/vendor/datatables/jquery.dataTables.min.js"></script>
          <script src="../static/admin/vendor/datatables/dataTables.bootstrap4.min.js"></script>

          <!-- Page level custom scripts -->
          <script src="../static/admin/js/demo/datatables-demo.js"></script>

          <script>
            $(function() {
                        $('.checkin-btn').on('click', function(event) {
                          event.preventDefault();
                          var employeeId = $(this).data('employee-id');
                          var lastClick = sessionStorage.getItem('checkin_btn_clicked_' + employeeId);
                          var now = new Date().getTime();
                          if (lastClick !== null && now - lastClick < 86400000) {
                            $(this).addClass('disabled');
                             alert('You have already checked in today!');
                          } else {
                            sessionStorage.setItem('checkin_btn_clicked_' + employeeId, now);
                            $(this).addClass('disabled');
                            // Navigate to the attendance details page
                            window.location.href = "/admin/employee-view-attendance?id=" + employeeId;
                          }
                        });
                      });
                    </script>

        </body>
        </html>