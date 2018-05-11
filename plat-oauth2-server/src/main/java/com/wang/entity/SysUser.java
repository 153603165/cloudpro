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
@Table(name = "sys_user")
@Setter
@Getter
@Entity
public class SysUser implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	// columns START
	/** 主键ID */
	@Id
	private Integer id;
	/** 用户名 */
	@Column(name = "user_name")
	private String userName;
	/** 密码 */
	@Column(name = "password")
	private String password;
	/** 注册时间 */
	@Column(name = "reg_time")
	private Integer regTime;
	/** 性别 */
	@Column(name = "gender")
	private Integer gender;
	/** 手机号码 */
	@Column(name = "mobile")
	private String mobile;
	/** 邮箱 */
	@Column(name = "email")
	private String email;
	/** 自动登录标示 */
	@Column(name = "auto_login_key")
	private String autoLoginKey;
	/** 最后登录时间 */
	@Column(name = "last_login_time")
	private Integer lastLoginTime;
	// columns END
	@Transient
	private List<SysRole> sysRoleList = new ArrayList<SysRole>();

	public SysUser() {
	}

	public SysUser(Integer id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.SHORT_PREFIX_STYLE);
	}

	@Override
	public int hashCode() {
		return new HashCodeBuilder().append(getId()).append(getUserName()).append(getPassword()).append(getRegTime())
				.append(getGender()).append(getMobile()).append(getEmail()).append(getAutoLoginKey())
				.append(getLastLoginTime()).toHashCode();
	}

	@Override
	public boolean equals(Object obj) {
		if ((obj instanceof SysUser) == false) {
			return false;
		}
		if (this == obj) {
			return true;
		}
		SysUser other = (SysUser) obj;
		return new EqualsBuilder().append(getId(), other.getId()).append(getUserName(), other.getUserName())
				.append(getPassword(), other.getPassword()).append(getRegTime(), other.getRegTime())
				.append(getGender(), other.getGender()).append(getMobile(), other.getMobile())
				.append(getEmail(), other.getEmail()).append(getAutoLoginKey(), other.getAutoLoginKey())
				.append(getLastLoginTime(), other.getLastLoginTime()).isEquals();
	}
}
