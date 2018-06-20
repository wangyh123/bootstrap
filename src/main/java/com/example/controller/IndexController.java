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

    @RequestMapping("formTest")
    @ResponseBody
    public String formTest(String username ,String password){
        System.out.println("======start111111111");
        System.out.println("==="+username+"====="+password);
        return "ok";
    }

    @RequestMapping("formTest1")
    @ResponseBody
    public String formTest1(User user){

        System.out.println("======start222222222");
        System.out.println("==="+user.getUsername()+"====="+user.getPassword() +"==="+user.getSex()+"==="+user.getAdr()+"==="+user.getSfz()+"==="+user.getPhone()+"==="+user.getE_mail());
        return "ok";
    }
}
