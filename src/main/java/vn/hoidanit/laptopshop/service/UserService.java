package vn.hoidanit.laptopshop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    // Lưu người dùng
    public User saveUser(User user) {
        return this.userRepository.save(user);
    }

    // lấy người dùng
    public List<User> getAllUser() {
        return this.userRepository.findAll();
    }
}