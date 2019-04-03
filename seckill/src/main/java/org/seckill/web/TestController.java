package org.seckill.web;

import org.apache.commons.collections.CollectionUtils;
import org.seckill.web.param.Customer;
import org.seckill.web.param.ListParam;
import org.seckill.web.param.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Created by CJS on 2018/3/8
 */
@Controller
@RequestMapping("/test")
public class TestController {

    @RequestMapping(value = "/page", method = RequestMethod.GET)
    public String list(Model model) {

        return "test";
    }

    @RequestMapping(value = "/testLong", method = RequestMethod.POST)
    @ResponseBody
    public Long testLong() {

        return 441325980825419776L;
    }

    @RequestMapping(value = "/testList", method = RequestMethod.POST)
    @ResponseBody
    public Object testList(@RequestParam("datas[]") ArrayList<String> list) {

        System.out.println(list.toArray());
        return list;
    }

    @RequestMapping(value = "/testList2", method = RequestMethod.POST)
    @ResponseBody
    public Object testList2(@RequestBody List<String> datas) {

        for (String data : datas) {
            System.out.println(data);
        }
        return datas;
    }

    @RequestMapping(value = "/testList3", method = RequestMethod.POST)
    @ResponseBody
    public Object testList3(@RequestBody ListParam param) {

        if (CollectionUtils.isNotEmpty(param.getList())) {

            for (String data : param.getList()) {
                System.out.println(data);
            }
        }
        return param;
    }

    @RequestMapping(value = "/testjson", method = RequestMethod.POST)
    @ResponseBody
    public Object testjson(@RequestParam("jj") String jj) {

        System.out.println(jj);
        return jj;
    }


    @RequestMapping(value = "/testModel", method = RequestMethod.POST)
    @ResponseBody
    public Object testModel(@RequestParam User user) {
        List<Customer> customers = user.getCustomers();
        List<String> strList = user.getStrList();
        String name = user.getName();
        String pwd = user.getPwd();
        return user;
    }

}
