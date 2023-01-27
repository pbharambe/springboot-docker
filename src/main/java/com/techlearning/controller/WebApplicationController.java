package com.techlearning.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class WebApplicationController {

    @RequestMapping(value = "/index/{name}")
    public String welcome(Model model, @PathVariable("name") String name) {
        return "Welcome " + name + " !!";
    }

    @GetMapping("/")
    public String index() {
        return "Welcome";
    }

}
