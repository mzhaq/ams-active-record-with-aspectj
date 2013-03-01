package com.zhaq.ams.domain;

import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

privileged aspect BaseAddressEntityJPAActiveRecord {

    @PersistenceContext
    transient EntityManager BaseAddressEntity.entityManager;

    public static final EntityManager BaseAddressEntity.entityManager() {
        EntityManager em = new BasePersonEntity() {
        }.entityManager;
        if (em == null)
            throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }

    @Transactional
    public void BaseAddressEntity.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }

    @Transactional
    public void BaseAddressEntity.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }

    @Transactional
    public void BaseAddressEntity.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }

    @Transactional
    public BaseAddressEntity BaseAddressEntity.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        BaseAddressEntity merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }

}
