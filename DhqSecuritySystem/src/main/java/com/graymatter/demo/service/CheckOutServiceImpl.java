package com.graymatter.demo.service;

import com.graymatter.demo.model.CheckOut;
import com.graymatter.demo.repo.CheckOutRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CheckOutServiceImpl implements CheckOutService{

    @Autowired
    private CheckOutRepository checkOutRepository;

    @Override
    public List<CheckOut> getAllCheckOuts() {
        return checkOutRepository.findAll();
    }

    @Override
    public void saveCheckOut(CheckOut checkOut) {
        this.checkOutRepository.save(checkOut);
    }

    @Override
    public CheckOut getCheckOutById(int id) {
        Optional<CheckOut> optional = checkOutRepository.findById(id);
        CheckOut checkOut = null;
        if(optional.isPresent()){
            checkOut = optional.get();
        }else{
            throw new RuntimeException("Attendance not Found for ID" + id);
        }
        return checkOut;
    }

    @Override
    public void deleteCheckOutById(int id) {
        this.checkOutRepository.deleteById(id);
    }
}
