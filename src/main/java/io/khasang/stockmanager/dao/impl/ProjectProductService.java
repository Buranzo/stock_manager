package io.khasang.stockmanager.dao.impl;

import io.khasang.stockmanager.dao.IProjectProductService;
import io.khasang.stockmanager.entity.Product;
import io.khasang.stockmanager.entity.Project;
import io.khasang.stockmanager.entity.ProjectProduct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProjectProductService implements IProjectProductService {

    @Autowired
    private ProjectProductDao projectProductDao;

    @Override
    public void addProjectProduct(ProjectProduct projectProduct) {
        projectProductDao.addProjectProduct(projectProduct);
    }

    @Override
    public void deleteProjectProduct(Long projectProductId) {
        projectProductDao.deleteProjectProduct(projectProductId);
    }

    @Override
    public void updateStateProjectProduct(ProjectProduct projectProduct) {
        projectProductDao.updateStateProjectProduct(projectProduct);
    }

    @Override
    public List<ProjectProduct> getProjectProducts() {
        return projectProductDao.getProjectProducts();
    }

    @Override
    public List<Project> getProject() {
        return projectProductDao.getProject();
    }

    @Override
    public List<Product> getProduct() {
        return projectProductDao.getProduct();
    }

    @Override
    public void truncate() {
        projectProductDao.truncate();
    }

}
