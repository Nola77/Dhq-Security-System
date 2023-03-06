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
@Table(name = "checkout")
public class CheckOut {
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

    @Column(name = "date")
    private String date;

    @Column(name = "checkin_Time")
    private String checkin_Time;

    @Temporal(TemporalType.TIME)
    private Date checkout = new Date(System.currentTimeMillis());
}
