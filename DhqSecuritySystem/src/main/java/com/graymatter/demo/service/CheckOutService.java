package com.graymatter.demo.service;

import com.graymatter.demo.model.CheckOut;

import java.util.List;

public interface CheckOutService {
    List<CheckOut> getAllCheckOuts();
    void saveCheckOut(CheckOut checkOut);
    CheckOut getCheckOutById(int id);
    void deleteCheckOutById(int id);
}
