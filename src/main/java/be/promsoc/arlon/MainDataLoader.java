package be.promsoc.arlon;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import be.promsoc.arlon.util.*;

public class MainDataLoader {

	public static void main(String[] args) {
		System.out.println("Database timereport - Load data set for employee, project, activity, timesheet");
		
		SessionFactory sf = HibernateUtil.getSessionFactory();
		Session session = sf.openSession();
		
		DataLoader dl = new DataLoader();
		
		dl.createEmployee(session);
		dl.createEmployeeProject(session);
		dl.createActivityProject(session);
		dl.createTimesheetActivityEmployee(session);
		
		session.close();
		HibernateUtil.closeSessionFactory();
	}


}
