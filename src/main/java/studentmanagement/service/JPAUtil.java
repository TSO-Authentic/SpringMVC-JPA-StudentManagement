package studentmanagement.service;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class JPAUtil {

	static EntityManagerFactory emfactory = null;

	public static EntityManagerFactory getEntityManagerFactory() {
		return emfactory = Persistence.createEntityManagerFactory("SpringMVC-JPA-StudentManagement");
	}
}
