package NewProject.NewProjectOne;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class UserDaoImpl implements UserDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory){
		this.sessionFactory= sessionFactory;
	}
	
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}


	@Override
	public void addPerson(Users u) {
		System.out.println("This is dao");
		Session session = sessionFactory.getCurrentSession();
		System.out.print("This is now persisted");
		session.save(u);
		System.out.print("This is after persist");
		
	}


	@Override
	public Users getUserDetailsByName(String name) {
		Query query = sessionFactory.getCurrentSession().createQuery("from UserTable where name = :name");
		query.setParameter("name",name);
		return (Users) query.list().get(0);
	}

}
