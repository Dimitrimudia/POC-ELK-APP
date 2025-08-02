package com.example.tasksManagement.repository;

import com.example.tasksManagement.model.Task;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TaskRepository extends JpaRepository<Task, Long> {
}
 
