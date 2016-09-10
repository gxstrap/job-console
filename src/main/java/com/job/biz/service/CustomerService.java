package com.job.biz.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.job.biz.mapper.CustomerMapper;
import com.job.biz.model.Customer;
import com.job.common.datasource.DataSource;
import com.job.common.datasource.DataSourceEnum;

@Service("customerService")
@DataSource(DataSourceEnum.QUARTZ)
public class CustomerService {

    private static final Logger log = LoggerFactory.getLogger(CustomerService.class);

    @Autowired
    private CustomerMapper customerMapper;

    public void findUserById(String triggerName, String group) {
        // 这里执行定时调度业务
        Customer customer = customerMapper.findById(1);
        log.info("#findUserById : triggerName={} , group={}", triggerName, group);
        log.info("#customer id={} , name={} , email={} , age={}", customer.getId(), customer.getName(), customer.getEmail(), customer.getAge());
    }

    public void findAllUser(String triggerName, String group) {
        // 这里执行定时调度业务
        Map<String, Object> map = new HashMap<String, Object>();
        List<Customer> list = customerMapper.findAllByFilter(map);
        log.info("# findAllUser : triggerName={} , group={}", triggerName, group);
        for (Customer customer : list) {
            log.info("#customer id={} , name={} , email={} , age={}", customer.getId(), customer.getName(), customer.getEmail(), customer.getAge());
        }
    }

}
