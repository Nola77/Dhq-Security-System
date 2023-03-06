<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

  <title>Security - Add CheckOut</title>

  <!-- Custom fonts for this template-->
  <link href="../static/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="../static/admin/css/sb-admin-2.min.css" rel="stylesheet">

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
      <li class="nav-item">
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
        <hr class="sidebar-divider d-none d-md-block">

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
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

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
                  <h1 class="h3 mb-2 text-gray-800" id="employee_update_text">Add CheckOut</h1>
                  <br>

                  <form class="was-validated" action="checkout" method="POST">
                    <div class="form-row">
                      <div class="col-md-6 mb-3">
                        <label for="validationTooltip01">First name</label>
                        <input type="text" class="form-control" id="firstName" name="firstName" value="${attendance.firstName}" readonly="readonly" required>
                        <div class="invalid-tooltip">
                          Please enter first-name.
                        </div>
                        <div class="valid-tooltip">
                          Looks good!
                        </div>
                      </div>

                      <div class="col-md-6 mb-3">
                        <label for="validationTooltip02">Last name</label>
                        <input type="text" class="form-control" id="lastName" name="lastName" value="${attendance.lastName}" readonly="readonly" required>
                        <div class="invalid-tooltip">
                          Please enter last-name.
                        </div>
                        <div class="valid-tooltip">
                          Looks good!
                        </div>
                      </div>
                    </div>

                    <div class="form-row">
                      <div class="col-md-6 mb-3 mt-4">
                        <label for="validationTooltipUsername">Email</label>
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" id="inlineFormCustomSelect">@</span>
                          </div>
                          <input type="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" class="form-control" value="${attendance.email}" id="email" name="email" aria-describedby="validationTooltipUsernamePrepend" readonly="readonly" required>
                          <div class="invalid-tooltip">
                            Please enter valid email.
                          </div>
                          <div class="valid-tooltip">
                            Looks good!
                          </div>
                        </div>
                      </div>

                      <div class="col-md-6 mb-3 mt-4">
                        <label for="validationTooltipGender">Gender</label>
                          <select class="custom-select" name="gender" id="gender" readonly="readonly" required>
                            <option value="${attendance.gender}" selected>${attendance.gender}</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                            <option value="Other">Other</option>
                          </select>
                            <div class="invalid-tooltip">
                              Please Select Your Gender.
                            </div>
                            <div class="valid-tooltip">
                              Looks good!
                            </div>
                        </div>
                    </div>

                    <div class="form-row">
                      <div class="col-md-3 mb-3 mt-4">
                        <label for="validationTooltip04">CID</label>
                        <input type="text" class="form-control" id="nic" value="${attendance.nic}" name="nic" readonly="readonly" required>
                        <div class="invalid-tooltip">
                          Please provide Valid CID.
                        </div>
                        <div class="valid-tooltip">
                          Looks good!
                        </div>
                      </div>

                      <div class="col-md-3 mb-3 mt-4">
                        <label for="validationTooltip05">Mobile Number</label>
                        <input type="text" class="form-control" name="mobileNo" id="mobileNo" value="${attendance.mobileNo}" readonly="readonly"  required>
                        <div class="invalid-tooltip">
                          Please provide Mobile Number.
                        </div>
                        <div class="valid-tooltip">
                          Looks good!
                        </div>
                      </div>

                      <div class="col-md-3 mb-3 mt-4">
                       <label for="validationTooltipDesignation">DID</label>
                        <input type="text" class="form-control" name="designation" id="designation" value="${attendance.designation}" readonly="readonly"  required>
                         <div class="invalid-tooltip">
                         Please provide Valid DID.
                         </div>
                         <div class="valid-tooltip">
                         Looks good!
                         </div>
                       </div>

                        <div class="col-md-6 mb-4 mt-4">
                          <label for="validationTooltipDesignation">Department</label>
                            <select class="custom-select" id="department" name="department" readonly="readonly">
                              <option value="${attendance.department}" selected>${attendance.department}</option>
                              <option value ="Deputation">Deputation</option>
                              <option value="Accounting and Finance">Accounting and Finance</option>
                              <option value="Human Resource Management">Human Resource Management</option>
                              <option value="Transport Division">Transport Division</option>
                              <option value="IT">IT</option>
                              <option value="Store">Store</option>
                              <option value="Call Center">Call Center</option>
                              <option value="Administration">Administration</option>
                              <option value="Operation And Deployment">Operation And Deployment</option>
                              <option value="National Service">National Service</option>
                              <option value="Procurement">Procurement</option>
                              <option value="De-suung Skilling Programs">De-suung Skilling Programs</option>
                              <option value="Training Department">Training Department</option>
                              <option value="Service Pin">Service Pin</option>
                              <option value="De-suung Fire Service">De-suung Fire Service</option>
                              <option value="NADPM">NADPM</option>
                              <option value="Million Fruit Plantation">Million Fruit Plantation</option>
                              <option value="DHQ Security">DHQ Security</option>

                            </select>
                              <div class="invalid-tooltip">
                                Please Select Valid Department.
                              </div>
                              <div class="valid-tooltip">
                                Looks good!
                              </div>
                          </div>

                          <div class="col-md-3 mb-3 mt-4">
                           <label for="validationTooltip06">Date</label>
                           <input type="text" class="form-control" name="date" id="date" value="${attendance.date}" readonly="readonly"  required>
                            <div class="invalid-tooltip">
                            Please provide Date.
                            </div>
                            <div class="valid-tooltip">
                              Looks good!
                            </div>
                            </div>

                            <div class="col-md-3 mb-3 mt-4">
                              <label for="validationTooltip07">CheckIn Time</label>
                              <input type="text" class="form-control" name="checkin_Time" id="checkin_Time" value="${attendance.checkin}" readonly="readonly"  required>
                              <div class="invalid-tooltip">
                                Please provide CheckIn Time.
                              </div>
                              <div class="valid-tooltip">
                                Looks good!
                              </div>
                            </div>
                    </div>
                    <button class="btn btn-primary mt-4 mb-4" type="submit" id="add_btn">CheckOut</button>
                  </form>

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

          <!-- Add Button custom scripts -->
          <script src="../static/admin/js/temp/jquery-3.5.1.min.js"></script>
          <script src="../static/admin/js/temp/toastr.min.js"></script>

          <script>
          	$('#add_btn').on('click', function(){
          		toastr.options = {
          			  "closeButton": true,
          			  "debug": false,
          			  "newestOnTop": false,
          			  "progressBar": true,
          			  "positionClass": "toast-top-center",
          			  "preventDuplicates": false,
          			  "onclick": null,
          			  "showDuration": "300",
          			  "hideDuration": "1000",
          			  "timeOut": "5000",
          			  "extendedTimeOut": "1000",
          			  "showEasing": "swing",
          			  "hideEasing": "linear",
          			  "showMethod": "fadeIn",
          			  "hideMethod": "fadeOut"
          			}
          			toastr["success"]("Employee Added Successful", "Successfully Added!")
          	})
          </script>

        </body>
        </html>