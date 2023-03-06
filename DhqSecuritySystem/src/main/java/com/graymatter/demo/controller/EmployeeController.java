package com.graymatter.demo.controller;

import java.io.IOException;
import java.util.Date;
import java.util.Optional;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.graymatter.demo.model.Attendance;
import com.graymatter.demo.service.AttendanceServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.graymatter.demo.model.Employee;
import com.graymatter.demo.service.EmployeeServiceImpl;

@Controller
public class EmployeeController {

    @Autowired
    EmployeeServiceImpl service;
    @Autowired
    AttendanceServiceImpl attendanceService;

    @RequestMapping(method = RequestMethod.POST, value = "admin/employee")
    public String addEmployee(Employee employee) {
        service.saveEmployee(employee);
        return "redirect:/admin/employee-datatable";

    }

    @GetMapping("/admin/viewEmployee")
    public String viewEmployee(@RequestParam int id, Model model) {

        Employee employee = service.getEmployeeById(id);
        service.deleteEmployeeById(id);
        model.addAttribute("employee", employee);
        return "employee/view_employee";
    }

    @RequestMapping("/admin/deleteEmployee")
    public String deleteEmployee(@RequestParam int id) {
        service.deleteEmployeeById(id);
        return "redirect:/admin/employee-datatable";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginPage(Model model) {
        return "login";
    }

    @RequestMapping("/success")
    public void loginPageRedirect(HttpServletRequest request, HttpServletResponse response, Authentication authResult) throws IOException, ServletException {

        String role = authResult.getAuthorities().toString();
        if (role.contains("ADMIN")) {
            response.sendRedirect(response.encodeRedirectURL(request.getContextPath() + "/admin/employee-dashboard"));
        } else if (role.contains("USER")) {
            response.sendRedirect(response.encodeRedirectURL(request.getContextPath() + "/admin/employee-user-dashboard"));
        }
    }
}
