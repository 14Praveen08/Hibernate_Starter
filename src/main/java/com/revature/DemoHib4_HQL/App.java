package com.revature.DemoHib4_HQL;

import java.util.List;
import java.util.Random;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;


public class App 
{
    public static void main( String[] args )
    {
    	Configuration con = new Configuration().configure().addAnnotatedClass(Student.class);
    	ServiceRegistry reg = new ServiceRegistryBuilder().applySettings(con.getProperties()).buildServiceRegistry();
    	SessionFactory sf =con.buildSessionFactory(reg);
    	Session ses = sf.openSession();
    	
    	ses.beginTransaction();
    	
//    	Query q = ses.createQuery("select rollno,name,marks from Student where rollno=14");
    	Query q = ses.createQuery("select rollno,name,marks from Student where marks>50");
    	List<Object[]> student = (List<Object[]>) q.list();
    	
    	for(Object[] o: student)
    	{
    		System.out.println(o[0]+":"+o[1]+":"+o[2]);
    	}
		
    	//To fetch only one record
    	/*
		 * Student stud = (Student) q.uniqueResult(); System.out.println(stud);
		 */
    	//**************************************************************
		//Inorder to get a List of students
    	/*
		 * List<Student>student = q.list(); for(Student s:student) {
		 * System.out.println(s); }
		 */
    	//************************************************************
    	//Insert 25 values to table
		/*
		 * Random r = new Random(); for(int value=1;value<25;value++) { Student s = new
		 * Student(); s.setRollno(value); s.setName("Raven"+value);
		 * s.setMarks(r.nextInt(100)); ses.save(s); }
		 */
    	//*****************************************************************
    	ses.getTransaction().commit();
    	
    	
    }
}
