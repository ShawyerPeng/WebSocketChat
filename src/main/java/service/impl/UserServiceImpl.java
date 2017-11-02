package service.impl;

import mapper.UserMapper;
import service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userDao;

    @Override
    public boolean isPassword(String username, String password) {
        String realPassword = userDao.selectPasswordByUsername(username);
        return password.equals(realPassword);
    }

    @Override
    public int getId(String username) {
        return userDao.selctIdByUsername(username);
    }
}
