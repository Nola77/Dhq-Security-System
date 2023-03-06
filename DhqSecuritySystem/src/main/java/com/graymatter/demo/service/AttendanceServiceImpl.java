package com.graymatter.demo.service;

import com.graymatter.demo.model.Attendance;
import com.graymatter.demo.repo.AttendanceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class AttendanceServiceImpl implements AttendanceService{
    @Autowired
    private AttendanceRepository attendanceRepository;


    @Override
    public List<Attendance> getAllAttendances() {
        return attendanceRepository.findAll();
    }

    @Override
    public void saveAttendance(Attendance attendance) {
      this.attendanceRepository.save(attendance);
    }

    @Override
    public Attendance getAttendanceById(int id) {
        Optional<Attendance> optional = attendanceRepository.findById(id);
        Attendance attendance = null;
        if(optional.isPresent()){
            attendance = optional.get();
        }else{
            throw new RuntimeException("Attendance not Found for ID" + id);
        }
        return attendance;
    }

    @Override
    public void deleteAttendanceById(int id) {
    this.attendanceRepository.deleteById(id);
    }
}
