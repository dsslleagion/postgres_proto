package com.fatech.backend6api.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.fatech.backend6api.entity.Log;

public interface LogRepository extends JpaRepository<Log,Long>{
}