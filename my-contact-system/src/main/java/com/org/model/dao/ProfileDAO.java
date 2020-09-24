package com.org.model.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import com.org.model.beans.Profile;
@EnableJpaRepositories
public interface ProfileDAO extends JpaRepository<Profile, Integer>{}
