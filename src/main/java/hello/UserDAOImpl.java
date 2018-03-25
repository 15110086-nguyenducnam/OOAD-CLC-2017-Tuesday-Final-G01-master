package hello;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

@Repository("UserDAO")
public class UserDAOImpl extends AbstractDAO<Integer, User> implements UserDAO{

	@Override
	public User findByid(int id) {
		User user=getByKey(id);
		return user;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<User> findAllUsers() {
	
		Criteria criteria = createEntityCriteria().addOrder(Order.asc("id"));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);//To avoid duplicates.
		List<User> users = (List<User>) criteria.list();
		return users;
	}

	@Override
	public void save(User user) {
		persist(user);
		
	}

	@Override
	public void deleteById(int id) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("id", id));
		User user = (User)crit.uniqueResult();
		delete(user);
		
	}

}
