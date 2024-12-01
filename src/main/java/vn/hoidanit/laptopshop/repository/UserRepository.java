package vn.hoidanit.laptopshop.repository;

// import java.util.List;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import vn.hoidanit.laptopshop.domain.User;

public interface UserRepository extends JpaRepository<User, Long> {
    // Lưu người dùng để truyền vào repository

    public List<User> findByEmail(String email);

    // public List<User> findById(long id);

    public User findById(long id);
}
