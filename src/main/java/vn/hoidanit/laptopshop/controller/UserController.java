package vn.hoidanit.laptopshop.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.service.UserService;

@RestController // dùng cho Khi không dùng view trả về bên backend
@Controller
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    // Lấy users bằng Restful api dạng json

    @GetMapping("/admin/user/listuser")
    public List<User> getAllUsers() {
        List<User> user = this.userService.getAllUser();
        System.out.println("List users is: " + user);
        return user; // thuộc Restful api không phải mvc trả về dạng json
    }

    @RequestMapping("/")
    public String showHelloPage() {
        return "hello";
    }

    // @RequestMapping("/admin/user")
    // public String userPage() {
    // return "/admin/user/create";
    // }

    // Tạo người dùng
    @RequestMapping("/admin/user")
    public String getUserPage(Model model) {
        User user = new User();
        model.addAttribute("newUser", user);
        System.out.println("Run here ");
        return "/admin/user/create";
    }

    // Tạo người dùng thêm vào csdl

    @RequestMapping(value = "/admin/user/create1", method = RequestMethod.POST)
    public String createUser(@ModelAttribute("newUser") User phuccoder) {
        System.out.println("You have successfully added a user " + phuccoder);
        // lưu vào sql
        this.userService.saveUser(phuccoder);
        return "hello";
    }

}