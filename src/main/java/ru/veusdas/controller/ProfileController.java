package ru.veusdas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import ru.veusdas.Model.User;
import ru.veusdas.Service.ServiceImp.UserServiceImpl;


@Controller
public class ProfileController {

    @Autowired
    private UserServiceImpl userServiceImpl;

    @PreAuthorize("hasAnyAuthority('ADMIN','USER')")
    @GetMapping("/profile")
    public String renderProfile(Authentication authentication, Model model) {
        UserDetails currentUser = null;
        if (authentication != null && (currentUser = (UserDetails) authentication.getPrincipal()) != null) {
            User user = userServiceImpl.findByUsername(currentUser.getUsername());
            model.addAttribute("user", user);
            System.out.println(user);
        }
        return "profile/profile";
    }



}
