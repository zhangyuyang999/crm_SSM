package com.eqqzyy.crm.workbench.service;

import com.eqqzyy.crm.workbench.domain.Clue;
import com.eqqzyy.crm.workbench.domain.Tran;

import java.util.List;
import java.util.Map;

public interface ClueService {
    boolean save(Clue clue);

    Clue detail(String id);

    boolean unbund(String id);

    boolean bund(String cid, String[] aids);

    boolean convert(String clueId, Tran t, String createBy);


    List<Clue> showList();
}
