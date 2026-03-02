package com.example.demo.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.demo.Model.Field;

public interface FieldRepository extends JpaRepository<Field, Long> {
}
