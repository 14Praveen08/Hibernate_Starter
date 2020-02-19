package com.revature.DemoHib3;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
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
    	Aliens alien = null;
    	Configuration con = new Configuration().configure().addAnnotatedClass(Aliens.class);
    	ServiceRegistry reg = new ServiceRegistryBuilder().applySettings(con.getProperties()).buildServiceRegistry();
    	SessionFactory sf =con.buildSessionFactory(reg); 
    	//opening 1st Session
    	Session session1= sf.openSession();  	
    	session1.beginTransaction();
    	//Using Query
    	Query q1 = session1.createQuery("from Aliens where id=1");
    	q1.setCacheable(true);
    	alien = (Aliens) q1.uniqueResult();
    	//alien = (Aliens) session1.get(Aliens.class, 1);
    	System.out.println(alien);
    	session1.getTransaction().commit();
    	session1.close();
    	
    	//opening 2nd Session
    	Session session2= sf.openSession();  	
    	session2.beginTransaction();
    	Query q2 = session2.createQuery("from Aliens where id=1");
    	q2.setCacheable(true);
    	alien = (Aliens) q2.uniqueResult();
    	//alien = (Aliens) session2.get(Aliens.class, 1);
    	System.out.println(alien);
    	session2.getTransaction().commit();
    	session2.close();
    	
    	
    }
}
