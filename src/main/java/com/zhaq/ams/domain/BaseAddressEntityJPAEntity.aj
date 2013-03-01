package com.zhaq.ams.domain;

import javax.persistence.*;

privileged aspect BaseAddressEntityJPAEntity {

    declare @type : BaseAddressEntity :@Entity;
    declare @type : BaseAddressEntity :@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS);

    @Id
    @GeneratedValue(strategy = GenerationType.TABLE)
    private Long BaseAddressEntity.id;

    @Version
    private Integer BaseAddressEntity.version;

    public Long BaseAddressEntity.getId() {
        return this.id;
    }

    public void BaseAddressEntity.setId(Long id) {
        this.id = id;
    }

    public Integer BaseAddressEntity.getVersion() {
        return this.version;
    }

    public void BaseAddressEntity.setVersion(Integer version) {
        this.version = version;
    }

}
