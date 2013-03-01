package com.zhaq.ams.domain;

import org.springframework.beans.factory.annotation.Configurable;

public privileged aspect PersonConfigurable {
    declare @type: Person :@Configurable;
}
