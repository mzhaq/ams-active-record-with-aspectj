package com.zhaq.ams.domain;

import javax.persistence.*;

privileged aspect BasePersonEntityJPAEntity {

    declare @type : BasePersonEntity :@Entity;
    declare @type : BasePersonEntity :@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS);

    @Id
    @GeneratedValue(strategy = GenerationType.TABLE)
    private Long BasePersonEntity.id;

    @Version
    private Integer BasePersonEntity.version;

    public Long BasePersonEntity.getId() {
        return this.id;
    }

    public void BasePersonEntity.setId(Long id) {
        this.id = id;
    }

    public Integer BasePersonEntity.getVersion() {
        return this.version;
    }

    public void BasePersonEntity.setVersion(Integer version) {
        this.version = version;
    }

}
