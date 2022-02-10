package com.eqqzyy.crm.settings.service;

import com.eqqzyy.crm.exception.LoginException;
import com.eqqzyy.crm.settings.domain.User;

import java.util.List;

public interface UserService {
    User login(String loginAct, String loginPwd, String ip) throws LoginException;

    List<User> getUserList();
}
