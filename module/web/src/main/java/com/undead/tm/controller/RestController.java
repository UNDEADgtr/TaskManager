package com.undead.tm.controller;

import com.undead.tm.entity.Task;
import com.undead.tm.repository.TaskRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @author Khralovich Dzmitry
 */
@Controller
@RequestMapping("/rest")
public class RestController{

    @Autowired
    private TaskRepository taskRepository;

    @RequestMapping("/tasks")
    @ResponseBody
    public List<Task> getAllTask() {
        return (List<Task>) taskRepository.findAll();
    }

    @RequestMapping(value = "/tasks",
            method = RequestMethod.POST,
            produces = "application/json")
    @ResponseBody
    public Task createTask(@RequestBody Task task) {
        taskRepository.save(task);
        return task;
    }

    @RequestMapping(value = "/tasks/{id}",
            method = RequestMethod.PUT,
            produces = "application/json")
    @ResponseBody
    public Task saveTask(@RequestBody Task task) {
        taskRepository.save(task);
        return task;
    }

    @RequestMapping(value = "/tasks/{id}",
            method = RequestMethod.DELETE)
    @ResponseBody
    public void removeTask(@PathVariable String id) {
        taskRepository.delete(id);
    }
}
