package com.dao;

import com.model.User;
import org.springframework.stereotype.Repository;

/**
 * Created by xugenli on 2017/5/8.
 */
@Repository
public interface UserDao {
    User selectUserByID(int id);
    User checkUserInfo(User user);
    int checkLogin(User user);
}
