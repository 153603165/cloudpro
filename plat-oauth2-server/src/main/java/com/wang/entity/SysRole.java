package com.wang.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import lombok.Getter;
import lombok.Setter;

/**
 *
 */
@Table(name = "sys_role")
@Setter
@Getter
@Entity
public class SysRole implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	// columns START
	/** 主键ID */
	@Id
	private Integer id;
	/** 角色名称 */
	@Column(name = "role_name")
	private String roleName;
	/** 角色描述 */
	@Column(name = "role_desc")
	private String roleDesc;
	// columns END
	@Transient
	private List<SysAuthority> sysRoleAuthorityList = new ArrayList<SysAuthority>();

	public SysRole() {
	}

	public SysRole(Integer id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.SHORT_PREFIX_STYLE);
	}

	@Override
	public int hashCode() {
		return new HashCodeBuilder().append(getId()).append(getRoleName()).append(getRoleDesc()).toHashCode();
	}

	@Override
	public boolean equals(Object obj) {
		if ((obj instanceof SysRole) == false) {
			return false;
		}
		if (this == obj) {
			return true;
		}
		SysRole other = (SysRole) obj;
		return new EqualsBuilder().append(getId(), other.getId()).append(getRoleName(), other.getRoleName())
				.append(getRoleDesc(), other.getRoleDesc()).isEquals();
	}
}
