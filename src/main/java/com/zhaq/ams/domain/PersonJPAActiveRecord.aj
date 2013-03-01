package com.zhaq.ams.domain;

import javax.persistence.TypedQuery;
import java.util.List;

public privileged aspect PersonJPAActiveRecord {

    public static List<Person> Person.findPersonByDetails(final String firstName, final String lastName, final String phoneNumber) {
        StringBuilder JQL = new StringBuilder();

        JQL.append("SELECT obj FROM Person obj WHERE 1=1");

        if (firstName != null && !firstName.isEmpty()) {
            JQL.append(" AND obj.firstName = :firstName");
        }
        if (lastName != null && !lastName.isEmpty()) {
            JQL.append(" AND obj.lastName = :lastName");
        }
        if (phoneNumber != null && !phoneNumber.isEmpty()) {
            JQL.append(" AND obj.phoneNumber = :phoneNumber");
        }

        TypedQuery<Person> query = entityManager().createQuery(JQL.toString(), Person.class);

        if (firstName != null && !firstName.isEmpty()) {
            query.setParameter("firstName", firstName);
        }
        if (lastName != null && !lastName.isEmpty()) {
            query.setParameter("lastName", lastName);
        }
        if (phoneNumber != null && !phoneNumber.isEmpty()) {
            query.setParameter("phoneNumber", phoneNumber);
        }
        return query.getResultList();
    }
}
