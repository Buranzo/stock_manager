package io.khasang.stockmanager.dao.impl;

import io.khasang.stockmanager.dao.ProductsDao;
import io.khasang.stockmanager.entity.Product;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Collections;
import java.util.List;

@Component
public class ProductsDaoImpl implements ProductsDao {
    @Autowired
    SessionFactory sessionFactory;
    @Override
    public void persist(Product product) {
        Session session = sessionFactory.openSession();
        try {
            session.beginTransaction();
            session.save(product);
            session.getTransaction().commit();
        } catch (HibernateException e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
    }

    @Override
    public void delete(Product product) {

    }

    @Override
    public List<Product> getAll() {
        return Collections.emptyList();
    }
}
