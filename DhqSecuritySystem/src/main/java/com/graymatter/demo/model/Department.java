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
@Table(name = "departments")
public class Department {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Column(name = "name")
    private String departmentName;

    @Column(name = "phone_number")
    private String dphoneNo;

    @Column(name = "email")
    private String departmentEmail;

    @Column(name = "desuup_or_nondesuup")
    private String department_branch;

    @Column(name = "address")
    private String department_address;

    @Column(name = "purpose_of_visit")
    private String department_ententionNo;

    @Temporal(TemporalType.DATE)
    private Date date = new Date(System.currentTimeMillis());

    @Temporal(TemporalType.TIME)
    private Date time = new Date(System.currentTimeMillis());

}
