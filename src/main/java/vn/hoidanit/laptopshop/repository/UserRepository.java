package vn.hoidanit.laptopshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import vn.hoidanit.laptopshop.domain.User;

public interface UserRepository extends JpaRepository<User, Long> {
    // Lưu người dùng để truyền vào repository
    public User save(User user);
}
