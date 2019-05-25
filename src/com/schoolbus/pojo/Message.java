package com.schoolbus.pojo;

import java.util.Date;

public class Message {

	private int id;
	private String title;
	private String text;
	private String author;
	private String institute;
	private String type;
	private String fillindate;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getFillindate() {
		return fillindate;
	}
	public void setFillindate(String fillindate) {
		this.fillindate = fillindate;
	}
	public String getInstitute() {
		return institute;
	}
	public void setInstitute(String institute) {
		this.institute = institute;
	}
}
