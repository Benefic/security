package ru.abenefic.security.controllers;

import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import ru.abenefic.security.entities.User;
import ru.abenefic.security.services.UserService;

import java.security.Principal;

@RestController
@RequiredArgsConstructor
public class Controller {
    private final UserService userService;

    @GetMapping
    public String daoTestPage(Principal principal) {
        User user = userService.findByUsername(principal.getName()).orElseThrow(() -> new RuntimeException("unable to find user by username: " + principal.getName()));
        return "authenticated: " + user.getUsername();
    }
}
