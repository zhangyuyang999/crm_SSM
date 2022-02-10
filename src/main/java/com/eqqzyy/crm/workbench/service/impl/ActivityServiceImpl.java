package com.eqqzyy.crm.workbench.service.impl;

import com.eqqzyy.crm.settings.dao.UserDao;
import com.eqqzyy.crm.settings.domain.User;
import com.eqqzyy.crm.utils.SqlSessionUtil;
import com.eqqzyy.crm.vo.PaginationVO;
import com.eqqzyy.crm.workbench.dao.ActivityDao;
import com.eqqzyy.crm.workbench.dao.ActivityRemarkDao;
import com.eqqzyy.crm.workbench.domain.Activity;
import com.eqqzyy.crm.workbench.domain.ActivityRemark;
import com.eqqzyy.crm.workbench.service.ActivityService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Service
public class ActivityServiceImpl implements ActivityService {
    @Resource
    private ActivityDao activityDao;
    @Resource
    private ActivityRemarkDao activityRemarkDao;
    @Resource
    private UserDao userDao;
    @Override
    public boolean save(Activity a) {
        boolean flag=true;
        int count = activityDao.save(a);
        if(count!=1){
            flag=false;
        }
        return flag;
    }

    @Override
    public PaginationVO<Activity> pageList(Map<String, Object> map) {

        int total= activityDao.getTotalByCondition(map);
        List<Activity> dataList =activityDao.getActivityListByCondition(map);
        PaginationVO<Activity> vo =new PaginationVO<Activity>();
        vo.setTotal(total);
        vo.setDataList(dataList);

        return vo;
    }

    @Override
    public boolean delete(String[] ids) {
        boolean flag = true;

        //查询出需要删除的备注的数量
        int count1 = activityRemarkDao.getCountByAids(ids);

        //删除备注，返回收到影响的条数（实际删除的条数）
        int count2 = activityRemarkDao.deleteByAids(ids);

        if (count1!=count2){
            flag = false;
        }

        //删除市场活动
        int count3 = activityDao.delete(ids);
        if (count3!= ids.length){
            flag = false;
        }
        return flag;
    }

    @Override
    public Map<String, Object> getUserListAndActivity(String id) {
        List<User> uList=userDao.getUserList();
        Activity a=activityDao.getById(id);
        Map<String, Object> map= new HashMap<String, Object>();
        map.put("uList",uList);
        map.put("a",a);
        return map;
    }

    @Override
    public boolean update(Activity a) {
        boolean flag=true;
        int count = activityDao.update(a);
        if(count!=1){
            flag=false;
        }
        return flag;
    }

    @Override
    public Activity detail(String id) {
        Activity a =activityDao.detail(id);
        return a;
    }

    @Override
    public List<ActivityRemark> getRemarkListByAid(String activityId) {
        List<ActivityRemark> arList=activityRemarkDao.getRemarkListByAid(activityId);
        return arList;
    }

    @Override
    public boolean deleteRemark(String id) {
        boolean flag = true;
        int count = activityRemarkDao.deleteById(id);
        if(count!=1){
            flag=false;
        }
        return flag;
    }

    @Override
    public boolean saveRemark(ActivityRemark ar) {
        boolean flag = true;
        int count =activityRemarkDao.saveRemark(ar);
        if(count !=1){
            flag = false;
        }
        return flag;
    }

    @Override
    public boolean updateRemark(ActivityRemark ar) {
        boolean flag =true;
        int count= activityRemarkDao.updateRemark(ar);
        if(count !=1)flag=false;
        return flag;
    }

    @Override
    public List<Activity> getActivityListByName(String aName) {
        List<Activity> aList = activityDao.getActivityListByName(aName);
        return aList;
    }

    @Override
    public List<Activity> getActivityListByNameAndNotByClueId(Map<String, String> map) {
        List<Activity> aList =activityDao.getActivityListByNameAndNotByClueId(map);
        return aList;
    }

    @Override
    public List<Activity> getActivityListByClueId(String clueId) {
        List<Activity> aList =  activityDao.getActivityListByClueId(clueId);
        return aList;
    }
}
