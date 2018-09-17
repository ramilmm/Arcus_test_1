package ru.veusdas.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import ru.veusdas.Model.User;
import ru.veusdas.Service.SecurityService;
import ru.veusdas.Service.ServiceImp.SecurityServiceImpl;
import ru.veusdas.Service.ServiceImp.UserServiceImpl;
import ru.veusdas.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Controller
public class UserController {
    @Autowired
    private UserServiceImpl userService;

    public final Pattern VALID_EMAIL_ADDRESS_REGEX =
            Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$", Pattern.CASE_INSENSITIVE);

    @PostMapping("/registration")
    public String registration(String username,
                               String password,
                               String name,
                               String confirmPassword,
                               Model model) {

        if (username.isEmpty() || password.isEmpty() || confirmPassword.isEmpty() || name.isEmpty()) {
            model.addAttribute("error", "Заполните все поля!");
            return "login/index";
        }

        if (!password.equals(confirmPassword)) {
            model.addAttribute("error", "Пароли не совпадают");
            return "login/index";
        }

        if (userService.findByUsername(username) != null) {
            model.addAttribute("error","Пользователь с таким логином уже существует");
            return "login/index";
        }
        Matcher matcher = VALID_EMAIL_ADDRESS_REGEX.matcher(username);

        if (!matcher.find()) {
            model.addAttribute("error","Введите корректный e-mail");
            return "login/index";
        }

        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        user.setName(name);
        user.setEmail(username);

        userService.save(user);

        return "redirect:/";
    }

    @GetMapping("/login")
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "login/index";
    }

}
