package com.zhaq.ams.domain;

import javax.persistence.CascadeType;
import javax.persistence.OneToOne;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class Person extends BasePersonEntity {
    @NotNull
    @Size(min = 2, max = 25, message = "2 to 25 characters!")
    @Pattern(regexp = "^[a-zA-Z]+$", message = "Alphabatic with no spaces!")
    private String firstName;
    @NotNull
    @Size(min = 2, max = 25, message = "2 to 25 characters!")
    @Pattern(regexp = "^[a-zA-Z]+$", message = "Alphabatic with no spaces!")
    private String lastName;
    @NotNull
    @Size(min = 10, max = 10, message = "10 digits!")
    @Pattern(regexp = "^[0-9]+$", message = "Numariic with no spaces!")
    private String phoneNumber;
    @OneToOne(cascade = CascadeType.ALL)
    private Address address;
}