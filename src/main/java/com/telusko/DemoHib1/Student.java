package com.telusko.DemoHib1;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity 
public class Student {
	
	@Id
	private int rollno;
	private String name;
	private int marks;
	
	/*
	 *To create One to One Relationship with Laptop
	 * 
	 * @OneToOne private Laptop laptop;
	 */
	
	
	//To Create One to Many Relationship with Laptop
	@ManyToMany(mappedBy="student")
	public List<Laptop> laptop = new ArrayList<Laptop>();
	
	
	public int getRollno() {
		return rollno;
	} 
	public void setRollno(int rollno) {
		this.rollno = rollno;
	}
		
	/*
	 * public Laptop getLaptop() { return laptop; } public void setLaptop(Laptop
	 * laptop) { this.laptop = laptop; }
	 */
	
	public List<Laptop> getLaptop() {
		return laptop;
	}
	public void setLaptop(List<Laptop> laptop) {
		this.laptop = laptop;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getMarks() {
		return marks;
	}
	public void setMarks(int marks) {
		this.marks = marks;
	}
	@Override
	public String toString() {
		return "Student [rollno=" + rollno + ", name=" + name + ", marks=" + marks + "]";
	}
	

}
