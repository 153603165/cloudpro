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
import org.springframework.security.core.GrantedAuthority;

import lombok.Getter;
import lombok.Setter;

/**
 *
 */
@Table(name = "sys_authority")
@Setter
@Getter
@Entity
public class SysAuthority implements GrantedAuthority {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	// columns START
	/** 主键ID */
	@Id
	private Integer id;
	/** 当前key */
	@Column(name = "auth_key")
	private String authKey;
	/** 父节点ID */
	@Column(name = "pid")
	private Integer pid;
	/** 层级 */
	@Column(name = "level")
	private Integer level;
	/** 权限名称 */
	@Column(name = "auth_name")
	private String authName;
	/** 权限描述 */
	@Column(name = "auth_desc")
	private String authDesc;
	/** 菜单链接 */
	@Column(name = "menu_url")
	private String menuUrl;
	/** 图标样式 */
	@Column(name = "icon_cls")
	private String iconCls;
	/** 排序号 */
	@Column(name = "seq")
	private Integer seq;
	// columns END
	@Transient
	private List<SysAuthority> childList = new ArrayList<SysAuthority>();

	public SysAuthority() {
	}

	public SysAuthority(Integer id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.SHORT_PREFIX_STYLE);
	}

	@Override
	public int hashCode() {
		return new HashCodeBuilder().append(getId()).append(getAuthKey()).append(getPid()).append(getLevel())
				.append(getAuthName()).append(getAuthDesc()).append(getMenuUrl()).append(getIconCls()).append(getSeq())
				.toHashCode();
	}

	@Override
	public boolean equals(Object obj) {
		if ((obj instanceof SysAuthority) == false) {
			return false;
		}
		if (this == obj) {
			return true;
		}
		SysAuthority other = (SysAuthority) obj;
		return new EqualsBuilder().append(getId(), other.getId()).append(getAuthKey(), other.getAuthKey())
				.append(getPid(), other.getPid()).append(getLevel(), other.getLevel())
				.append(getAuthName(), other.getAuthName()).append(getAuthDesc(), other.getAuthDesc())
				.append(getMenuUrl(), other.getMenuUrl()).append(getIconCls(), other.getIconCls())
				.append(getSeq(), other.getSeq()).isEquals();
	}

	@Override
	public String getAuthority() {
		return authKey;
	}
}
