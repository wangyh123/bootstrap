package com.example.controller;

import com.example.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("login")
public class LoginController {

    @RequestMapping("check")
    @ResponseBody
    public String check(User user){
        String username = user.getUsername();
        String pwd = user.getPassword();
        if("admin".equals(username)&&"123".equals(pwd)){
           return username;
        }
        return "";
    }

    @RequestMapping("main")
    public String main(String username,Model model){
        model.addAttribute("username",username);
        return "main";
    }

    @RequestMapping("register")
    public String register(){
        return "register";
    }
}
