package com.graymatter.demo.service;

import com.graymatter.demo.model.Attendance;

import java.util.List;

public interface AttendanceService {
    List<Attendance> getAllAttendances();
    void saveAttendance(Attendance attendance);
    Attendance getAttendanceById(int id);
    void deleteAttendanceById(int id);
}
