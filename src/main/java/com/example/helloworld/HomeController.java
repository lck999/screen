package com.example.helloworld;

import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.helloworld.echo.EchoForm;

/**
 * Handles requests for the application home page.
 */
@Controller// (1)
public class HomeController {

    private static final Logger logger = LoggerFactory
            .getLogger(HomeController.class);

    /**
     * Simply selects the home view to render by returning its name.
     */
    @RequestMapping(value = "/", method = {RequestMethod.GET , RequestMethod.POST}) // (2)
    public String home(EchoForm form,Model model) { // (3)
        logger.info("Welcome home!");

        Date date = new Date();
        model.addAttribute("serverTime", date);
//        model.addAttribute("name", form.getName());


		model.addAttribute("ID", form.getID());
        model.addAttribute("mei", form.getMei());
        model.addAttribute("month", form.getMonth());
        model.addAttribute("mei2", form.getMei2());
        model.addAttribute("team", form.getTeam());
        model.addAttribute("mei3", form.getMei3());
        model.addAttribute("mei4", form.getMei4());
        model.addAttribute("sex", form.getSex());
        model.addAttribute("old", form.getOld());


        return "home"; // (4)

    }

/*
	@RequestMapping(value = "/echo")
	public String Next(NextForm nextform) {
		// フォームオブジェクトを生成してModelに追加します。
		NextForm form = new NextForm();

		nextform.addAttribute(form);
		return "/Next";
	}

*/

/*    @RequestMapping("/") // (5)
    public String index(EchoForm form, Model model) {// (3)
        model.addAttribute("name", form.getName()); // (6)
        return "home";
    }*/
}