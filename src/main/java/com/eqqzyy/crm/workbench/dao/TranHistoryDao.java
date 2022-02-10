package com.eqqzyy.crm.workbench.dao;

import com.eqqzyy.crm.workbench.domain.TranHistory;

import java.util.List;

public interface TranHistoryDao {

    int save(TranHistory th);

    List<TranHistory> getTranHistoryByTranId(String tranId);
}
