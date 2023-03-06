package com.graymatter.demo.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "attendance")
public class Attendance {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Column(name = "first_name")
    private String firstName;

    @Column(name = "last_name")
    private String lastName;

    @Column(name = "email")
    private String email;

    @Column(name = "gender")
    private String gender;

    @Column(name = "CID")
    private String nic;

    @Column(name = "mobile_number")
    private String mobileNo;

    @Column(name = "DID")
    private String designation;

    @Column(name = "department")
    private String department;

    @Temporal(TemporalType.DATE)
    private Date date = new Date(System.currentTimeMillis());

    @Temporal(TemporalType.TIME)
    private Date checkin = new Date(System.currentTimeMillis());
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "emp_id")

    private Employee employee;

}
