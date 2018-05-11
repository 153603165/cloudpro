package com.wang.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wang.entity.SysUser;

@Repository
public interface SysUserDao extends JpaRepository<SysUser, Integer>{
	SysUser findByUserName(String userName);
}
