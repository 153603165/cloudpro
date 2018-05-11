package com.wang.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.wang.entity.SysAuthority;

@Repository
public interface SysAuthorityDao extends JpaRepository<SysAuthority, Integer>{

	@Query(nativeQuery=true,value="select * from sys_authority a where exists (select 1 from sys_role_authority ra where role_id = :roleId AND ra.auth_id = a.id) order by a.seq ASC")
	List<SysAuthority> findByRoleId(@Param("roleId")Integer roleId);

}
