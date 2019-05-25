package com.schoolbus.pojo;

import java.util.ArrayList;
import java.util.List;

public class Page<T> {
	
	private int thisPage = 1;	//当前页码
	private int totalPage;	//总页数
	private int pageCount = 5;	//显示页数
	private int pageSize = 10;	//页面容量
	private int prePage;	//上一页
	private int nextPage;	//下一页
	private List<T> totalList;
	private List<T> curList;
	
	public Page(int thisPage, List<T> totalList) {
		this.thisPage = thisPage;
		this.totalList = totalList;
		this.totalPage = totalList.size() / this.pageSize + 1;
		if (thisPage <= 1)
			this.prePage = 1;
		else
			this.prePage = thisPage - 1;
		if (thisPage >= this.totalPage)
			this.nextPage = this.totalPage;
		else
			this.nextPage = thisPage + 1;
		List<T> curList = new ArrayList<T>();
		for (int i = (thisPage - 1) * this.pageSize + 1; i <= totalList.size() && i <= (thisPage - 1) * this.pageSize + 10; i++) {
			curList.add(totalList.get(i-1));
		}
		this.curList = curList;
	}
	public int getThisPage() {
		return thisPage;
	}
	public void setThisPage(int thisPage) {
		this.thisPage = thisPage;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getPrePage() {
		return prePage;
	}
	public void setPrePage(int prePage) {
		this.prePage = prePage;
	}
	public int getNextPage() {
		return nextPage;
	}
	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}
	public List<T> getTotalList() {
		return totalList;
	}
	public void setTotalList(List<T> totalList) {
		this.totalList = totalList;
	}
	public List<T> getCurList() {
		return curList;
	}
	public void setCurList(List<T> curList) {
		this.curList = curList;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
}
