package ru.veusdas.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    @PreAuthorize("hasAnyAuthority('ADMIN','USER')")
    @GetMapping("/")
    public String mainPage() {
       return "main/main";
    }

}
