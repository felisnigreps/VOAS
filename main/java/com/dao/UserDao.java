package com.dao;

import com.model.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

/**
 * Created by xugenli on 2017/5/8.
 */
@Repository
public interface UserDao {
    User selectUserByID(int id);
    User checkUserInfo(@Param("cdsid") String cdsid, @Param("password") String password);
    int checkLogin(User user);
}
