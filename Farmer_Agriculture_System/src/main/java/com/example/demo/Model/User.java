package com.example.demo.Model;

import java.util.List;
import jakarta.persistence.*;

@Entity
@Table(name = "users")
public class User {

    public enum Role {
        admin, farmer
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long userId;

    private String name;
    private String password;

    @Enumerated(EnumType.STRING)
    private Role role;

    // One farmer can have many farms
    @OneToMany(mappedBy = "farmer", cascade = CascadeType.ALL)
    private List<Farm> farms;

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public List<Farm> getFarms() {
		return farms;
	}

	public void setFarms(List<Farm> farms) {
		this.farms = farms;
	}

    
}
