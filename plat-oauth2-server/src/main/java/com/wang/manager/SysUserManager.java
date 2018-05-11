package com.wang.manager;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import com.wang.dao.SysAuthorityDao;
import com.wang.dao.SysRoleDao;
import com.wang.dao.SysUserDao;
import com.wang.entity.SysAuthority;
import com.wang.entity.SysRole;
import com.wang.entity.SysUser;

@Service
public class SysUserManager implements UserDetailsService{

	@Autowired
	private SysUserDao sysUserDao;
	@Autowired
	private SysRoleDao sysRoleDao;
	@Autowired
	private SysAuthorityDao sysAuthorityDao;

	public void find(){
		List<SysUser> sysUsers = sysUserDao.findAll();
		System.out.println(sysUsers.size());
	}

	@Override
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
		SysUser sysUser= sysUserDao.findByUserName(userName);
		List<SysAuthority> sysAuthorities = new ArrayList<>();
		if (Objects.nonNull(sysUser)) {
			Integer userId = sysUser.getId();
			List<SysRole> sysRoleList = sysRoleDao.findByUserId(userId);
			if (!CollectionUtils.isEmpty(sysRoleList)) {
				sysUser.setSysRoleList(sysRoleList);
				for (SysRole sysRole : sysRoleList) {
					Integer roleId = sysRole.getId();
					List<SysAuthority> sysRoleAuthorityList = sysAuthorityDao.findByRoleId(roleId);
					sysRole.setSysRoleAuthorityList(sysAuthorities);
					sysAuthorities.addAll(sysRoleAuthorityList);
				}
			}
		}
		String name = sysUser.getUserName();
		String password = sysUser.getPassword();

		return new User(name, password, true, true, true, true, sysAuthorities);
	}

}
