package com.example.helloworld.echo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("echo")
public class EchoController {

    @ModelAttribute // (1)
    public EchoForm setUpEchoForm() {
        EchoForm form = new EchoForm();
        return form;
    }

    @RequestMapping // (2)
    public String index(Model model) {
        return "echo/index"; // (4)
    }
/*
    @RequestMapping("home")
    public String home(@Valid EchoForm form, BindingResult result, Model model) { // (1)
        if (result.hasErrors()) { // (2)

            return "echo/index";
        }

        model.addAttribute("name", form.getName());


        model.addAttribute("ID", form.getID());
        model.addAttribute("mei", form.getMei());
        model.addAttribute("month", form.getMonth());
        model.addAttribute("mei2", form.getMei2());
        model.addAttribute("team", form.getTeam());
        model.addAttribute("mei3", form.getMei3());
        model.addAttribute("mei4", form.getMei4());
        model.addAttribute("sex", form.getSex());
        model.addAttribute("old", form.getOld());



        return "home";
    }

*/
/*     @RequestMapping("/") // (5)
    public String hello(EchoForm form, Model model) {// (3)
        model.addAttribute("name", form.getName()); // (6)
        return "home";
    }*/
}