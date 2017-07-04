package com.service;

import com.model.Account;
import com.model.User;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by xugenli on 2017/3/9.
 */
@Service
public interface UserService {
    List<Account> findAllAccount();
    int insertAccount(Account account);
    List<Account> findAccounts(int beginId, int endId);
    int updateAccount(Account account);
    int deleteAccount(Integer id);



    int checkLogin(User user);
    //登录时取得用户信息
    User checkUserInfo(String cdsid,String password);
    User selectUserById(String cdsid);


}
