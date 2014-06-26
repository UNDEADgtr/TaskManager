package com.undead.tm.repository;

import com.undead.tm.entity.Task;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.util.Assert;

/**
 * @author Dzmitry Khralovich
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:/repository-test.xml"})
public class TaskRepositoryTest {

    @Autowired
    private TaskRepository taskRepository;

    @Autowired
    private MongoTemplate mongoTemplate;

    @Before
    @After
    public void cleanDb() {
        mongoTemplate.dropCollection(Task.class);
    }

    @Test
    public void testCreateTask() {
        Task task = new Task();
        task.setTask("Купить молоко");
        task.setStatus(Task.State.waiting.name());
        taskRepository.save(task);
        Assert.notNull(task.getId());
        Task newTask = taskRepository.findOne(task.getId());
        Assert.isTrue(task.getTask().equals(newTask.getTask()));
        taskRepository.delete(newTask);
        Assert.isNull(taskRepository.findOne(task.getId()));
    }


}