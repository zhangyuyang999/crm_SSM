package com.eqqzyy.crm.workbench.service;

import com.eqqzyy.crm.workbench.domain.Tran;
import com.eqqzyy.crm.workbench.domain.TranHistory;

import java.util.List;
import java.util.Map;

public interface TranService {
    boolean save(Tran t, String customerName);

    Tran getTranById(String id);

    List<TranHistory> getTranHistoryByTranId(String tranId);

    boolean changeStage(Tran t);
    public Tran detail(String id);

    Map<String, Object> getCharts();
}
