package com.zhaq.ams.domain;

import javax.persistence.Entity;

public privileged aspect PersonJPAEntity {
    declare @type: Person :@Entity;
}
