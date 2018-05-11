package com.wang.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.wang.entity.SysRole;

@Repository
public interface SysRoleDao extends JpaRepository<SysRole, Integer>{

	@Query(nativeQuery=true,value="select * from sys_role r where exists (select 1 from sys_user_role ur where user_id = :userId and ur.role_id = r.id)")
	List<SysRole> findByUserId(@Param("userId")Integer userId);

}
