package com.zhaq.ams.domain;

import org.springframework.beans.factory.annotation.Configurable;

privileged aspect BasePersonEntityConfigurable {

    declare @type: BasePersonEntity:@Configurable;

}
