package com.maxikyo.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

//Controller mapping

@Controller
@RequestMapping("/employee")
public class MyController {

    //Method mapping
    @RequestMapping("/")
    public String showFirstView(){
        return "first-view";
    }

    @RequestMapping("/askDetails")
    public String askEmployeeDetails(Model model){

        model.addAttribute("employee", new Employee());

        return "ask-emp-details-view";
    }

    @RequestMapping("/showDetails")
    public String showEmpDetails(@RequestParam("employeeName") String empName
            , Model model){

        empName = "Mr. " + empName +  "!";
        model.addAttribute("nameAttribute", empName);

        return "show-emp-details-view";
    }

}
