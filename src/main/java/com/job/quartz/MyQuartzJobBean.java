package com.job.quartz;

import org.apache.commons.lang3.StringUtils;
import org.quartz.DisallowConcurrentExecution;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.quartz.PersistJobDataAfterExecution;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.Trigger;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.scheduling.quartz.QuartzJobBean;

import com.job.biz.service.CustomerService;

@PersistJobDataAfterExecution
@DisallowConcurrentExecution // 不允许并发执行
public class MyQuartzJobBean extends QuartzJobBean {

    private static final Logger logger = LoggerFactory.getLogger(MyQuartzJobBean.class);

    @Override
    protected void executeInternal(JobExecutionContext jobexecutioncontext) throws JobExecutionException {
        Trigger trigger = jobexecutioncontext.getTrigger();
        String triggerName = trigger.getKey().getName();
        String group = trigger.getKey().getGroup();

        CustomerService customerService = getApplicationContext(jobexecutioncontext).getBean("customerService", CustomerService.class);

        // 根据Trigger组别调用不同的业务逻辑方法
        if (StringUtils.equals(group, Scheduler.DEFAULT_GROUP)) {
            customerService.findUserById(triggerName, group);
        } else {
            customerService.findAllUser(triggerName, group);
        }
    }

    private ApplicationContext getApplicationContext(final JobExecutionContext jobexecutioncontext) {
        try {
            return (ApplicationContext) jobexecutioncontext.getScheduler().getContext().get("applicationContextKey");
        } catch (SchedulerException e) {
            logger.error("jobexecutioncontext.getScheduler().getContext() error!", e);
            throw new RuntimeException(e);
        }
    }

}
