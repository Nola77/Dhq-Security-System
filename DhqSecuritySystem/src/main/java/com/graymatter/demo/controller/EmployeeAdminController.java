package com.graymatter.demo.controller;

import java.io.FileNotFoundException;
import java.util.Optional;

import com.graymatter.demo.model.Attendance;
import com.graymatter.demo.model.CheckOut;
import com.graymatter.demo.model.Employee;
import com.graymatter.demo.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import net.sf.jasperreports.engine.JRException;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class EmployeeAdminController {

    @Autowired
    private EmployeeService employeeService;

    @GetMapping("/admin/employee-datatable")
    public String employeeDataTable(Model model) {
        model.addAttribute("listEmployees", employeeService.getAllEmployees());
        return "employee/employee_table_list";
    }

    //new add
    @GetMapping("/admin/employee-datatable-users")
    public String employeeDataTableUsers(Model model) {
        model.addAttribute("listEmployees", employeeService.getAllEmployees());
        return "employee/employee_table_list_users";
    }

    @GetMapping("/admin/department-datatable-users")
    public String departmentDataTableUsers(Model model) {
        model.addAttribute("listDepartments", departmentService.getAllDepartments());
        return "employee/department_table_list_users";
    }

    @Autowired
    private AttendanceService attendanceService;

    @GetMapping("/admin/attendance-datatable-users")
    public String attendanceDataTableUsers(Model model) {
        model.addAttribute("listAttendances", attendanceService.getAllAttendances());
        return "employee/view_attendance";
    }


    @Autowired
    private CheckOutService checkOutService;

    @GetMapping("/admin/checkout-datatable-users")
    public String checkoutDataTableUsers(Model model) {
        model.addAttribute("listCheckOuts", checkOutService.getAllCheckOuts());
        return "employee/checkout_user_list";
    }

    @GetMapping("/admin/attendance-datatable")
    public String attendanceDataTable(Model model) {
        model.addAttribute("listCheckOuts", checkOutService.getAllCheckOuts());
        return "employee/admin_attendance_list";
    }

    @GetMapping("/admin/employee-datatable/export/{format}")
    public String exportReport(@PathVariable String format, Model model) throws FileNotFoundException, JRException {
        model.addAttribute("listEmployees", employeeService.exportReport(format));
        return "redirect:/admin/employee-datatable";
    }

    @Autowired
    private DepartmentService departmentService;

    @GetMapping("/admin/employee-department-table")
    public String departmentDataTable(Model model) {
        model.addAttribute("listDepartments", departmentService.getAllDepartments());
        return "employee/department_table_list";
    }

    @GetMapping("/admin/employee-dashboard")
    public String employeeDash() {
        return "employee/employee_admin_dashboard";
    }

    @GetMapping("/admin/employee-user-dashboard")
    public String employeeUserDash() {
        return "employee/employee_user_dashboard";
    }

    @GetMapping("/admin/employee-addEmp")
    public String employeeAdminAdd() {
        return "employee/employee_add";
    }

    @GetMapping("/admin/employee-department-add")
    public String departmentAdd() {
        return "employee/add_department";
    }

    @GetMapping("/admin/employee-view-employee")
    public String viewEmployee() {
        return "employee/view_employee";
    }

    @GetMapping("/admin/employee-view-department")
    public String viewDepartment() {
        return "employee/view_department";
    }

    @Autowired
    EmployeeServiceImpl service;

    @GetMapping("/admin/employee-view-attendance")
    public String viewAttendance(@RequestParam int id, Model model) {

        Employee employee=service.getEmployeeById(id);
      // service.deleteEmployeeById(id);
        model.addAttribute("employee", employee);

        return "employee/attendance_view_view";
    }








@Autowired
    AttendanceServiceImpl services;

    @GetMapping("/admin/employee-view-checkout")
    public String viewCheckOut(@RequestParam int id, Model model) {

        Attendance attendance = services.getAttendanceById(id);
        //service.deleteEmployeeById(id);
        model.addAttribute("attendance", attendance);
        return "employee/checkout_form";
    }

    @GetMapping("/employee/employee-profile")
    public String employeeProfile() {
        return "employee/employee_profile";
    }

    @GetMapping("/admin/employee-admin-profile")
    public String employeeAdminProfile() {
        return "employee/employee_admin_profile";
    }

    @GetMapping("/admin/employee-admin-login")
    public String employeeAdminLogin() {
        return "employee/employee_admin_login";
    }

    @GetMapping("/admin/403")
    public String error403() {
        return "employee/403";
    }
}
