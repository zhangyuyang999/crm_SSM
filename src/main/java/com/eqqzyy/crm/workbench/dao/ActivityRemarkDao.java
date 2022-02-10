package com.eqqzyy.crm.workbench.dao;

import com.eqqzyy.crm.workbench.domain.ActivityRemark;

import java.util.List;

public interface ActivityRemarkDao {
    public int getCountByAids(String[] ids);

    int deleteByAids(String[] ids);

    List<ActivityRemark> getRemarkListByAid(String activityId);

    int deleteById(String id);

    int saveRemark(ActivityRemark ar);

     int updateRemark(ActivityRemark ar);
}
