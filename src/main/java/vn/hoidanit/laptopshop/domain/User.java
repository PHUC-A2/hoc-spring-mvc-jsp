package vn.hoidanit.laptopshop.domain;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "users") // tên bảng trong sql
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // tự động tăng
    private long id;
    private String email, passWord, phone, fullName, address;

    public User() {
    }

    public User(long id, String email, String passWord, String phone, String fullName, String address) {
        this.id = id;
        this.email = email;
        this.passWord = passWord;
        this.phone = phone;
        this.fullName = fullName;
        this.address = address;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "User [id=" + id + ", email=" + email + ", passWord=" + passWord + ", phone=" + phone + ", fullName="
                + fullName + ", address=" + address + "]";
    }

}
