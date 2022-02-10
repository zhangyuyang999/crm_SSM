package com.eqqzyy.crm.workbench.service.impl;

import com.eqqzyy.crm.utils.SqlSessionUtil;
import com.eqqzyy.crm.workbench.dao.CustomerDao;
import com.eqqzyy.crm.workbench.domain.Customer;
import com.eqqzyy.crm.workbench.service.CustomerService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class CustomerServiceImpl implements CustomerService {
    @Resource
    private CustomerDao customerDao;

    @Override
    public List<Customer> getCustomerName(String name) {
        List<Customer> cList = customerDao.getCustomerName(name);
        return cList;
    }
}
