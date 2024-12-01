package vn.hoidanit.laptopshop.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.service.UserService;

// @RestController // dùng cho Khi không dùng view trả về bên backend
@Controller
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    // // Lấy users bằng Restful api dạng json

    // @GetMapping("/admin/user/listuser")
    // public List<User> getAllUsers() {
    // List<User> user = this.userService.getAllUser();
    // System.out.println("List users is: " + user);
    // return user; // thuộc Restful api không phải mvc trả về dạng json
    // }

    @RequestMapping("/")
    public String showHelloPage() {
        return "hello";
    }

    @RequestMapping("/admin/user")
    public String getUserPage(Model model) {
        List<User> users = this.userService.getAllUsers();
        // System.out.println("List user is: " + users);
        model.addAttribute("users1", users);

        return "admin/user/tableuser";
    }

    @RequestMapping("/admin/user/view/{id}") // lấy bằng hoidanit hoặc id do mình đặt tùy ý
    public String getUserDetailPage(Model model, @PathVariable long id) { // PathVarible <kiểu dữ liệu > tên biến
        User users = this.userService.getUserById(id);
        model.addAttribute("user", users); // truyền sang view
        model.addAttribute("id", id); // truyền sang view
        return "admin/user/show";
    }

    // Tạo người dùng
    @RequestMapping("/admin/user/create")
    public String getCreateUserPage(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/create";
    }

    // sửa người dùng
    @RequestMapping("/admin/user/update/{id}")
    public String getUpdateUserPage(Model model, @PathVariable long id) {
        User user = this.userService.getUserById(id);
        model.addAttribute("newUser", user);
        model.addAttribute("id", user);
        return "admin/user/update";
    }

    // Tạo người dùng thêm vào csdl

    @RequestMapping(value = "/admin/user/create", method = RequestMethod.POST)
    public String createUser(@ModelAttribute("newUser") User phuccoder) {
        System.out.println("You have successfully added a user " + phuccoder);
        // lưu vào sql
        this.userService.saveUser(phuccoder);
        return "redirect:/admin/user"; // redirect là chuyển hướng sang url admin/user để trả về trang
    }

    @RequestMapping(value = "/admin/user/update", method = RequestMethod.POST)
    public String updateUser(@ModelAttribute("newUser") User phuccoder) {
        System.out.println("You have successfully added a user " + phuccoder);
        // lưu vào sql
        this.userService.saveUser(phuccoder);
        return "redirect:/admin/user"; // redirect là chuyển hướng sang url admin/user để trả về trang
    }
}
