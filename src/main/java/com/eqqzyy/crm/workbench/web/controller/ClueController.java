package com.eqqzyy.crm.workbench.web.controller;


import com.eqqzyy.crm.settings.domain.User;
import com.eqqzyy.crm.settings.service.UserService;
import com.eqqzyy.crm.utils.DateTimeUtil;
import com.eqqzyy.crm.utils.UUIDUtil;
import com.eqqzyy.crm.workbench.domain.Activity;
import com.eqqzyy.crm.workbench.domain.Clue;
import com.eqqzyy.crm.workbench.domain.Tran;
import com.eqqzyy.crm.workbench.service.ActivityService;
import com.eqqzyy.crm.workbench.service.ClueService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Controller
@RequestMapping("/workbench/clue")
public class ClueController  {
    @Resource
    private ClueService cs;
    @Resource
    private ActivityService as;
    @Resource
    private UserService us;


    @RequestMapping("showList.do")
    @ResponseBody
    private List<Clue> showList() {
        List<Clue> uList =cs.showList();
        return uList;
    }
    @RequestMapping("convert.do")
    @ResponseBody
    private ModelAndView convert(String clueId, String flag,HttpServletRequest request) throws IOException {
        Tran t=null;
        ModelAndView mv=new ModelAndView();
        String createBy=((User)request.getSession().getAttribute("user")).getName();
        if("a".equals(flag)){
//            接受交易表单中的数据
            t=new Tran();
            String money=request.getParameter("money");
            String name=request.getParameter("name");
            String expectedDate=request.getParameter("expectedDate");
            String stage=request.getParameter("stage");
            String activityId=request.getParameter("activityId");
            String id=UUIDUtil.getUUID();
            String createTime= DateTimeUtil.getSysTime();
            t.setId(id);
            t.setCreateTime(createTime);
            t.setCreateBy(createBy);
            t.setMoney(money);
            t.setName(name);
            t.setExpectedDate(expectedDate);
            t.setStage(stage);
            t.setActivityId(activityId);
        }
        /*业务层传递的参数
         * 1.必须传递的参数clueId，有了这个后我们才知道转换哪条记录
         * 2.必须传递参数t，因为在线索转换的过程中，有可能会临时创建一笔交易（业务层的t也有可能是null）*/
        boolean flag1=cs.convert(clueId,t,createBy);
        if(flag1)
        {
            mv.setViewName("redirect:/workbench/clue/index.jsp");
        }
        mv.addObject(flag1);
        return mv;
    }
    @RequestMapping("getActivityListByName.do")
    @ResponseBody
    private List<Activity> getActivityListByName(String aname) {
        List<Activity> aList=as.getActivityListByName(aname);
        return aList;
    }
    @RequestMapping("bund.do")
    @ResponseBody
    private boolean bund(String aid[],String cid) {
        boolean flag=cs.bund(cid,aid);
        return flag;
    }
    @RequestMapping("getActivityListByNameAndNotByClueId.do")
    @ResponseBody
    private List<Activity> getActivityListByNameAndNotByClueId(String aname, String clueId) {
        Map<String ,String> map=new HashMap<>();
        map.put("aname",aname);
        map.put("clueId",clueId);
        List<Activity> aList=as.getActivityListByNameAndNotByClueId(map);
        return aList;
    }
    @RequestMapping("unbund.do")
    @ResponseBody
    private boolean unbund(String id) {
        boolean flag=cs.unbund(id);
        return flag;
    }
    @RequestMapping("getActivityListByClueId.do")
    @ResponseBody
    private List<Activity> getActivityListByClueId(String clueId) {
        List<Activity> aList= as.getActivityListByClueId(clueId);
        return aList;
    }
    @RequestMapping("detail.do")
    @ResponseBody
    private ModelAndView detail(String id)  {
        ModelAndView mv=new ModelAndView();
        Clue c=cs.detail(id);
        mv.addObject("c",c);
        mv.setViewName("/clue/detail");
        return mv;

    }
    @RequestMapping("save.do")
    @ResponseBody
    private boolean save(Clue clue, HttpServletRequest request) {
        String id = UUIDUtil.getUUID();
        String createTime= DateTimeUtil.getSysTime();
        String createBy=((User)request.getSession().getAttribute("user")).getName();
        clue.setId(id);
        clue.setCreateTime(createTime);
        clue.setCreateBy(createBy);
        boolean flag=cs.save(clue);
        return flag;

    }
    @RequestMapping("getUserList.do")
    @ResponseBody
    private List<User> getUserList() {
        List<User> uList=us.getUserList();
        return uList;
    }
}
