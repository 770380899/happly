package com.baizhi.entity;

import java.util.List;

public class Menu {
		private String id;//id
		private String title;//名字
		private String href;//路径
		private String lev;//等级
		private String iconCls;//图标
		private String parentId;//
		private List<Menu> menuId;
		public String getId() {
			return id;
		}
		public void setId(String id) {
			this.id = id;
		}
		public String getTitle() {
			return title;
		}
		public void setTitle(String title) {
			this.title = title;
		}
		public String getHref() {
			return href;
		}
		public void setHref(String href) {
			this.href = href;
		}
		public String getLev() {
			return lev;
		}
		public void setLev(String lev) {
			this.lev = lev;
		}
		public String getIconCls() {
			return iconCls;
		}
		public void setIconCls(String iconCls) {
			this.iconCls = iconCls;
		}
		public String getParentId() {
			return parentId;
		}
		public void setParentId(String parentId) {
			this.parentId = parentId;
		}
		public List<Menu> getMenuId() {
			return menuId;
		}
		public void setMenuId(List<Menu> menuId) {
			this.menuId = menuId;
		}
		@Override
		public String toString() {
			return "Menu [id=" + id + ", title=" + title + ", href=" + href
					+ ", lev=" + lev + ", iconCls=" + iconCls + ", parentId="
					+ parentId + ", menuId=" + menuId + "]";
		}
		public Menu(String id, String title, String href, String lev,
				String iconCls, String parentId, List<Menu> menuId) {
			super();
			this.id = id;
			this.title = title;
			this.href = href;
			this.lev = lev;
			this.iconCls = iconCls;
			this.parentId = parentId;
			this.menuId = menuId;
		}
		public Menu() {
			super();
			// TODO Auto-generated constructor stub
		}
		
}
