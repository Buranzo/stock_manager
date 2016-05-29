package io.khasang.stockmanager.dao;

import io.khasang.stockmanager.config.HibernateConfig;
import io.khasang.stockmanager.config.application.WebConfig;
import io.khasang.stockmanager.entity.Project;
import io.khasang.stockmanager.entity.ProjectStatus;
import org.hibernate.SessionFactory;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import java.time.LocalDate;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(classes = {WebConfig.class, HibernateConfig.class})
public class ProjectDAOTest {
    @Autowired
    private Project project;

    @Autowired
    private ProjectDAO projectDAO;

    @Autowired
    private SessionFactory sessionFactory;

    @Before
    public void beforeTest() {
//        project.setId();
        project.setTitle("test_project");
        project.setTitle("test_project");
        project.setUserId(1);
        project.setStartDate(LocalDate.now());
        project.setFinishDate(LocalDate.now().plusDays(2));
        project.setStatus(ProjectStatus.ACTIVE);
        project.setBudget(10000);
        project.setType("ddd");
    }

    @Test
    public void addTest() {
        projectDAO.add(project);
        Project projectTest = sessionFactory.openSession().get(Project.class, project.getId());
        sessionFactory.close();

        Assert.assertEquals(project, projectTest);
    }

    @Test
    public void deleteTest() {

    }

    @Test
    public void getAllTest() {

    }

    @Test
    public void getByIdTest() {

    }
}
