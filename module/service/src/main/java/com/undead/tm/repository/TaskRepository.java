package com.undead.tm.repository;

import com.undead.tm.entity.Task;
import org.springframework.data.repository.PagingAndSortingRepository;

/**
 * @author Khralovich Dzmitry
 */
public interface TaskRepository extends PagingAndSortingRepository<Task, String> {
}
