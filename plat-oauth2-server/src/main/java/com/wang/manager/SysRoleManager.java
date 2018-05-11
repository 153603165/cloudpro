package com.wang.manager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wang.dao.SysRoleDao;

@Service
public class SysRoleManager {
	@SuppressWarnings("unused")
	@Autowired
	private SysRoleDao sysRoleDao;
}
