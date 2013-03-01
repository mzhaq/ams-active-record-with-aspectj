package com.zhaq.ams.domain;

import org.springframework.beans.factory.annotation.Configurable;

privileged aspect BaseAddressEntityConfigurable {

    declare @type: BaseAddressEntity:@Configurable;

}
