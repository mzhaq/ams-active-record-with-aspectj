package com.zhaq.ams.domain;

import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

privileged aspect BasePersonEntityJPAActiveRecord {

    @PersistenceContext
    transient EntityManager BasePersonEntity.entityManager;

    public static final EntityManager BasePersonEntity.entityManager() {
        EntityManager em = new BasePersonEntity() {
        }.entityManager;
        if (em == null)
            throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }

    @Transactional
    public void BasePersonEntity.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }

    @Transactional
    public void BasePersonEntity.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }

    @Transactional
    public void BasePersonEntity.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }

    @Transactional
    public BasePersonEntity BasePersonEntity.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        BasePersonEntity merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }

}
