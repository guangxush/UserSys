package cn.shgx.service;

import cn.shgx.dao.UserDao;
import cn.shgx.entity.User;

import java.util.List;

public class UserService {
    private UserDao userDao = new UserDao();
    public User login(User u){
        return userDao.login(u);
    }
    public List<User> getList(){
        return userDao.getList();
    }
    public int update(User u){
        return userDao.update(u);
    }
    public User getByid(int id){
        return userDao.getByid(id);
    }
    public int add(User u){
        return userDao.add(u);
    }
    public int delete(int id){
        return userDao.delete(id);
    }

}
