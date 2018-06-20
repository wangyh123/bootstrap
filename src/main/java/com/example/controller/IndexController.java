package com.example.controller;

import com.alibaba.fastjson.JSON;
import com.example.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("index")
public class IndexController {
    @RequestMapping("login")
    public String login(){
        return "login";
    }

    @RequestMapping("register")
    public String register(){
        return "register";
    }

    @RequestMapping("form")
    public String form(){
        return "form";
    }

    @RequestMapping("formParam")
    @ResponseBody
    public String formParam(String username, String password, String sex, String adr, String sfz, String phone, String e_mail){
        System.out.println("======传参数");
        System.out.println("==="+username+"==="+password+"==="+sex+"==="+adr+"==="+sfz+"==="+phone+"==="+e_mail);
        return "ok";
    }

    @RequestMapping("formEntity")
    @ResponseBody
    public String formEntity(User user){
        System.out.println("======实体类映射传值");
        System.out.println("==="+user.getUsername()+"====="+user.getPassword() +"==="+user.getSex()+"==="+user.getAdr()+"==="+user.getSfz()+"==="+user.getPhone()+"==="+user.getE_mail());
        return "ok";
    }
}
