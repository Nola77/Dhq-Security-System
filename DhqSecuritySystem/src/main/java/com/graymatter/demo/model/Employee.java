package com.graymatter.demo.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "employees")
public class Employee {
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

    @Column(name = "address")
    private String address;

    @Column(name = "CID")
    private String nic;

    @Column(name = "mobile_number")
    private String mobileNo;

    @Column(name = "DID")
    private String designation;

    @Column(name = "birthday")
    private String birthday;

    @Column(name = "joined_date")
    private String joinedDate;

    @Column(name = "marital_status")
    private String branch;

    @Column(name = "department")
    private String department;
    @OneToMany(mappedBy = "employee",cascade = CascadeType.ALL)
    private List<Attendance>attendances= new ArrayList<>();

}
