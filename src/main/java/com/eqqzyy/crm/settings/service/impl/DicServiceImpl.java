package com.eqqzyy.crm.settings.service.impl;

import com.eqqzyy.crm.settings.dao.DicTypeDao;
import com.eqqzyy.crm.settings.dao.DicValueDao;
import com.eqqzyy.crm.settings.domain.DicType;
import com.eqqzyy.crm.settings.domain.DicValue;
import com.eqqzyy.crm.settings.service.DicService;
import com.eqqzyy.crm.utils.SqlSessionUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Service
public class DicServiceImpl implements DicService {
    @Autowired
    private DicTypeDao dicTypeDao;
    @Autowired
    private DicValueDao dicValueDao;

    @Override
    public Map<String, List<DicValue>> getAll() {

        Map<String,List<DicValue>> map = new HashMap<String, List<DicValue>>();
        //将字典类型列表取出
        List<DicType> dtList = dicTypeDao.getTypeList();
        //将字段类型列表遍历
        for (DicType dt:dtList){
            //取得每一种类型的字典类型编码
            String code = dt.getCode();
            //根据每一个字典类型来取得字典值列表
            List<DicValue> dvList = dicValueDao.getListByCode(code);
            map.put(code+"List",dvList);
        }


        return map;
    }
}
