package com.job.biz.model;

import java.util.HashMap;
import java.util.Map;

public class Trigger {

    private String triggerName;
    private String triggerGroup;
    private String startTime;
    private String endTime;
    private String repeatCount;
    private String repeatInterval;
    private String status;

    private static final Map<String, String> statusName = new HashMap<String, String>();
    static {
        statusName.put("ACQUIRED", "运行中");
        statusName.put("PAUSED", "暂停中");
        statusName.put("WAITING", "等待中");
    }

    public String getTriggerName() {
        return triggerName;
    }

    public void setTriggerName(String triggerName) {
        this.triggerName = triggerName;
    }

    public String getTriggerGroup() {
        return triggerGroup;
    }

    public void setTriggerGroup(String triggerGroup) {
        this.triggerGroup = triggerGroup;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public String getRepeatCount() {
        return repeatCount;
    }

    public void setRepeatCount(String repeatCount) {
        this.repeatCount = repeatCount;
    }

    public String getRepeatInterval() {
        return repeatInterval;
    }

    public void setRepeatInterval(String repeatInterval) {
        this.repeatInterval = repeatInterval;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

}
