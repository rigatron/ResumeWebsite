package com.rigatron.rigs4j.BL.entities;

import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name="users")
public class User {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    public int id;

    @ManyToMany(cascade = { CascadeType.ALL })
    @JoinTable(
            name = "user_role_mappings",
            joinColumns = { @JoinColumn(name = "user_id") },
            inverseJoinColumns = { @JoinColumn(name = "role_id") }
    )
    public Set<UserRole> roles = new HashSet<>();

    public String username;

    public String password;

    public Date createDate;

    public Date lastModifiedDate;
}