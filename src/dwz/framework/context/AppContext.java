package dwz.framework.context;

import dwz.framework.user.User;

public interface AppContext {

	User getUser();

	void setUser(User user);
}
