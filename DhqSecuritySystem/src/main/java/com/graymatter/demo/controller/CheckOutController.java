package com.graymatter.demo.controller;

import com.graymatter.demo.model.CheckOut;
import com.graymatter.demo.service.CheckOutServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CheckOutController {

    @Autowired
    CheckOutServiceImpl service;

    @RequestMapping(method = RequestMethod.POST, value = "admin/checkout")
    public String addCheckOut(CheckOut checkout) {

        service.saveCheckOut(checkout);

        return "redirect:/admin/checkout-datatable-users";
    }

    @GetMapping("/admin/viewCheckOut")
    public String viewCheckOut(@RequestParam int id, Model model) {

        CheckOut checkout = service.getCheckOutById(id);
        //service.deleteCheckOutById(id);
        model.addAttribute("checkout", checkout);
        return "employee/checkout_user_list";
    }

    @RequestMapping("/admin/deleteCheckOut")
    public String deleteCheckOut(@RequestParam int id) {

        service.deleteCheckOutById(id);
        return "redirect:/admin/employee-attendance-table";
    }
}
