package com.pluralsight.repository;

import com.pluralsight.model.Goal;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

@Repository("goalRepository")
public class GoalRepositoryImpl implements GoalRepository {

    @PersistenceContext
    private EntityManager em;

    @Override
    public Goal save(Goal goal) {

        em.persist(goal);
        em.flush();
        return goal;

    }

    @Override
    public List<Goal> loadAll() {
        Query query = em.createQuery("Select g from Goal g");

        List goals = query.getResultList();
        return goals;
    }

}
