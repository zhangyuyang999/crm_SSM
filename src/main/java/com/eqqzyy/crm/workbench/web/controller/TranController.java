package com.eqqzyy.crm.workbench.web.controller;


import com.eqqzyy.crm.settings.domain.User;
import com.eqqzyy.crm.settings.service.UserService;
import com.eqqzyy.crm.utils.DateTimeUtil;
import com.eqqzyy.crm.utils.PrintJson;
import com.eqqzyy.crm.utils.UUIDUtil;
import com.eqqzyy.crm.workbench.domain.Customer;
import com.eqqzyy.crm.workbench.domain.Tran;
import com.eqqzyy.crm.workbench.domain.TranHistory;
import com.eqqzyy.crm.workbench.service.CustomerService;
import com.eqqzyy.crm.workbench.service.TranService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Controller
@RequestMapping("/workbench/transaction")
public class TranController {
    @Resource
    private  TranService ts;
    @Resource
    private  CustomerService cs;
    @Resource
    private  UserService us;

    @RequestMapping("/getCharts.do")
    @ResponseBody
    private Map<String, Object> getCharts() {
        Map<String,Object> map = ts.getCharts();
        return map;
    }
    @RequestMapping("/changeStage.do")
    @ResponseBody
    private Map changeStage(HttpServletRequest request,Tran t) {
        String editTime = DateTimeUtil.getSysTime();
        String editBy = ((User)request.getSession().getAttribute("user")).getName();
        t.setEditBy(editBy);
        t.setEditTime(editTime);
        ServletContext application = request.getSession().getServletContext();
        Map<String ,String> pMap = (Map<String, String>) application.getAttribute("pMap");
        String possibility = pMap.get(t.getStage());
        t.setPossibility(possibility);
        boolean flag = ts.changeStage(t);
        Map<String ,Object> map=new HashMap<>();
        map.put("success",flag);
        map.put("t",t);
        return map;

    }
    @RequestMapping("/getTranHistoryByTranId.do")
    private void getTranHistoryByTranId(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("????????????-?????????-??????????????????");
        String tranId = request.getParameter("tranId");
        List<TranHistory> tList = ts.getTranHistoryByTranId(tranId);
        Map<String,String> pMap = (Map<String, String>) request.getServletContext().getAttribute("pMap");
        for (TranHistory th:tList){
            String stage = th.getStage();
            String possibility = pMap.get(stage);
            th.setPossibility(possibility);
        }
        PrintJson.printJsonObj(response,tList);
    }
    @RequestMapping("/detail.do")
    @ResponseBody
    private ModelAndView detail(String id,HttpServletRequest request)  {
        Tran t = ts.detail(id);
//        ??????????????? ??????----??????????????????????????????  ???pMap
        String stage = t.getStage();
        //ServletContext application = request.getSession().getServletContext();
        System.out.println("00000000");
        Map<String ,String> pMap = (Map<String, String>) request.getServletContext().getAttribute("pMap");
        System.out.println("11111111");
        String possibility="60";
        System.out.println(possibility);
        t.setPossibility(possibility);
        ModelAndView mv = new ModelAndView();
        mv.addObject("t",t);
        mv.setViewName("/transaction/detail");
        return mv;
    }
    //?????????????????????????????????
    private void getTranList() {
    }
    @RequestMapping("/save.do")
    @ResponseBody
    private String save(Tran t, HttpServletRequest request)  {
        System.out.println("???????????????????????????");
        t.setId(UUIDUtil.getUUID());
        String customerName = request.getParameter("customerName");  //???????????????????????????????????????????????????id
        String createTime = DateTimeUtil.getSysTime();
        String createBy=((User)request.getSession().getAttribute("user")).getName();
        t.setCreateBy(createBy);
        t.setCreateTime(createTime);

        boolean flag = ts.save(t,customerName);

        if(flag){
//            ?????????????????????????????????????????????

            return "redirect:/workbench/transaction/index.jsp";
        }
        return "redirect:/workbench/transaction/save.jsp";

    }

    @RequestMapping("/getCustomerName.do")
    @ResponseBody
    private List<Customer> getCustomerName(String name) {
        List<Customer> sList = cs.getCustomerName(name);
        return sList;
    }
    @RequestMapping("/add.do")
    @ResponseBody
    private ModelAndView add() {
        ModelAndView mv=new ModelAndView();
        List<User> uList=us.getUserList();
        mv.addObject("uList",uList);
        mv.setViewName("/transaction/save");
        return mv;
    }
}
