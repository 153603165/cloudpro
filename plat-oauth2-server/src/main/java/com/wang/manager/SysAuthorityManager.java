package com.wang.manager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wang.dao.SysAuthorityDao;

@Service
public class SysAuthorityManager {

	@SuppressWarnings("unused")
	@Autowired
	private SysAuthorityDao sysAuthorityDao;

}
