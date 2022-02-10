package com.eqqzyy.crm.settings.service.impl;

import com.eqqzyy.crm.exception.LoginException;
import com.eqqzyy.crm.settings.dao.UserDao;
import com.eqqzyy.crm.settings.domain.User;
import com.eqqzyy.crm.settings.service.UserService;
import com.eqqzyy.crm.utils.DateTimeUtil;
import com.eqqzyy.crm.utils.SqlSessionUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Service
public class UserServiceImpl implements UserService {
    @Autowired
     private UserDao userDao;
    @Override
    public User login(String loginAct, String loginPwd, String ip) throws LoginException {
        System.out.println("是否进入这里");
        Map<String, String> map = new HashMap<String, String>();
        map.put("loginAct",loginAct);
        map.put("loginPwd",loginPwd);
        User user = userDao.login(map);
        if(user==null){
            throw new LoginException("账号密码错误");
        }
        String expireTime= user.getExpireTime();
        String currentTime= DateTimeUtil.getSysTime();
        if(expireTime.compareTo(currentTime)<0){
            throw new LoginException("账户使用时间到期");
        }
        String lockState= user.getLockState();
        if("0".equals(lockState)){
            throw new LoginException("账户已被锁定");
        }
        //String allowIps= user.getAllowIps();
        //if(!allowIps.contains(ip)){
            //throw new LoginException("ip地址受限");
        //}
        return user;
    }


    public List<User> getUserList() {
        List<User> uList=userDao.getUserList();
        return uList;
    }
}
