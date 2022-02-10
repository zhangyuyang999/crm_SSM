package com.eqqzyy.crm.workbench.dao;

import com.eqqzyy.crm.workbench.domain.Clue;

import java.util.List;

public interface ClueDao {


    int save(Clue clue);

    Clue detail(String id);


    Clue getById(String clueId);

    int delete(String clueId);

    List<Clue> showList();
}
