package com.zhaq.ams.domain;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class Address extends BaseAddressEntity {
    @Size(max = 5, message = "No more than 5 characters!")
    private String unitNumber;
    @NotNull
    @Size(min = 1, max = 5, message = "1 to 5 characters!")
    private String streetNumber;
    @NotNull
    @Size(min = 2, max = 25, message = "2 to 25 characters")
    private String streetName;
    @NotNull
    @Size(min = 2, max = 25, message = "2 to 25 characters")
    private String city;
    @NotNull
    @Size(min = 2, max = 25, message = "2 to 25 characters")
    private String state;
    @NotNull
    @Size(min = 4, max = 4, message = "4 digits")
    @Pattern(regexp = "^[0-9]+$", message = "Numariic with no spaces!")
    private String postCode;
    @NotNull
    @Size(min = 2, max = 25, message = "2 to 25 characters")
    private String country;

}
