package com.eqqzyy.crm.settings.dao;

import com.eqqzyy.crm.settings.domain.DicType;
import com.eqqzyy.crm.settings.domain.DicValue;

import java.util.List;

public interface DicValueDao {

    List<DicValue> getListByCode(String code);
}
