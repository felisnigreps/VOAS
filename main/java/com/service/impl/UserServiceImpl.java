package com.service.impl;

import com.dao.AccountDao;
import com.dao.UserDao;
import com.model.Account;
import com.model.User;
import com.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by xugenli on 2017/3/9.
 */
@Service("userService")
public class UserServiceImpl implements UserService {

    @Resource
    private AccountDao accountDao;

    @Resource
    private UserDao userDao;

    public List<Account> findAllAccount() {

        return accountDao.findAllAccount();
    }

    public int insertAccount(Account account) {
        return accountDao.insertAccount(account);
    }

    public List<Account> findAccounts(int beginId, int endId) {
        return accountDao.findAccountsById(beginId, endId);
    }

    @Override
    public int updateAccount(Account account) {
        return accountDao.updateAccount(account);
    }

    @Override
    public int deleteAccount(Integer id) {
        return accountDao.deleteAccount(id);
    }

    @Override
    public User selectUserByID(Integer id) {
        if (userDao == null) return null;
        return userDao.selectUserByID(id);
    }

    @Override
    public int checkLogin(User user) {
        return userDao.checkLogin(user);
    }

    @Override
    public User checkUserInfo(String cdsid, String password) {
        return userDao.checkUserInfo(cdsid, password);
    }


}
