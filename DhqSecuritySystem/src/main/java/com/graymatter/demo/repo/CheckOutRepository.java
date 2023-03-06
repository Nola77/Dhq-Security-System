package com.graymatter.demo.repo;

import com.graymatter.demo.model.CheckOut;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CheckOutRepository extends JpaRepository<CheckOut, Integer> {
}
