package com.graymatter.demo.controller;


import com.graymatter.demo.model.Attendance;
import com.graymatter.demo.model.Employee;
import com.graymatter.demo.service.AttendanceServiceImpl;
import com.graymatter.demo.service.EmployeeServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class AttendanceController {
    @Autowired
    AttendanceServiceImpl service;

    @Autowired
    EmployeeServiceImpl employeeService;
    @RequestMapping(method= RequestMethod.POST,value="admin/attendance")
    public String addAttendance( Integer employeeId ,Attendance attendance) {
        System.out.println(employeeId);
        Employee employee=employeeService.getEmployeeById(employeeId);
        attendance.setEmployee(employee);
        service.saveAttendance(attendance);

        return "redirect:/admin/attendance-datatable-users";
    }



    @GetMapping("/admin/viewAttendance")
    public String viewAttendance(@RequestParam int id, Model model) {
        Attendance attendance = service.getAttendanceById(id);
        //service.deleteAttendanceById(id);
        model.addAttribute("attendance", attendance);
        return "employee/view_attendance";
    }

    @RequestMapping("/admin/deleteAttendance")
    public String deleteAttendance(@RequestParam int id) {
        service.deleteAttendanceById(id);
        return "redirect:/admin/employee-attendance-table";
    }

}
