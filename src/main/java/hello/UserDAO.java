package hello;

import java.util.List;

public interface UserDAO {
	User findByid(int id);
	List<User> findAllUsers();
	void save(User user);
	void deleteById(int id);
}
