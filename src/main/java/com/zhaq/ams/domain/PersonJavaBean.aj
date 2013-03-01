package com.zhaq.ams.domain;

public privileged aspect PersonJavaBean {

    public String Person.getFirstName() {
        return this.firstName;
    }

    public void Person.setFirstName(final String firstName) {
        this.firstName = firstName;
    }

    public String Person.getLastName() {
        return this.lastName;
    }

    public void Person.setLastName(final String lastName) {
        this.lastName = lastName;
    }

    public String Person.getPhoneNumber() {
        return this.phoneNumber;
    }

    public void Person.setPhoneNumber(final String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public Address Person.getAddress() {
        return this.address;
    }

    public void Person.setAddress(final Address address) {
        this.address = address;
    }
}
