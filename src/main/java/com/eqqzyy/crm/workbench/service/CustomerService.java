package com.eqqzyy.crm.workbench.service;

import com.eqqzyy.crm.workbench.domain.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> getCustomerName(String name);
}
