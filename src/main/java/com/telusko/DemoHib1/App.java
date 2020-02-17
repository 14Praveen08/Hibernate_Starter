package com.telusko.DemoHib1;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
    	 Laptop lb = new Laptop();
    	 lb.setLid(102);
    	 lb.setLname("MacBook");
    	 
    	 
    	 Student stud = new Student();
    	 stud.setRollno(2);
    	 stud.setName("Krishna"); 
    	 stud.setMarks(80);
    	 
    	 stud.getLaptop().add(lb);
    	 lb.getStudent().add(stud);
    	 
    	 
    	 Configuration config = new Configuration().configure().addAnnotatedClass(Laptop.class).addAnnotatedClass(Student.class);
    	 ServiceRegistry registry = new ServiceRegistryBuilder().applySettings(config.getProperties()).buildServiceRegistry();
    	 SessionFactory sf = config.buildSessionFactory(registry); 
    	 Session session = sf.openSession(); 
    	 Transaction tx = session.beginTransaction();
    	 
    	 session.save(lb);
    	 session.save(stud);
    	 
    
    	 tx.commit();
    	 

    }
}
