package com.app.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.app.model.LogModel;

@Repository
public interface CustomerLogRepo extends JpaRepository<LogModel, String>{

	List<LogModel> findAllByDate(String date);
   
}
