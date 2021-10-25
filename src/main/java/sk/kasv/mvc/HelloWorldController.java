package sk.kasv.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.support.StandardMultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;


@Controller
@RequestMapping("/hello")
public class HelloWorldController {
    @RequestMapping("/hello-world")
    public String HelloWorld(){
        return "hello-form";
    }
    @RequestMapping("/processForm")
    public String processForm(){
        return"hello_world";
    }

    @RequestMapping("/processFormV2")
    public String letsShoutDude(HttpServletRequest request, Model model){
        String theName=request.getParameter("studentName");
        theName=theName.toUpperCase();
        String result="Yo! "+theName;
        model.addAttribute("message",result);
        return "hello_world";
    }
    @RequestMapping("/processFormV3")
    public String processFormV3(@RequestParam("studentName") String theName, Model model){

        theName=theName.toUpperCase();
        String result="Hey my friend from V3! "+theName;
        model.addAttribute("message",result);
        return "hello_world";
    }
}
