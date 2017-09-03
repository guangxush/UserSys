package cn.shgx.dao;

import cn.shgx.entity.User;
import cn.shgx.util.DBHelper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDao extends DBHelper{
    public User login(User u){
        String sql="select * from t_user where name=? and pwd=?";
        ResultSet rs = this.executeQuery(sql,u.getName(),u.getPwd());
        try {
            if(rs.next()){
                return new User(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            this.close();
        }
        return null;
    }
    public List<User> getList(){
        String sql= "select * from t_user";
        List<User> userlist = new ArrayList<User>();
        ResultSet rs = this.executeQuery(sql);
        try {
            while(rs.next()){
                userlist.add(new User(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            this.close();
        }
        return userlist.size()>0?userlist:null;
    }
    public int update(User u){
        String sql="update t_user set name=? ,pwd=?, vipid=? where id=?";
        return this.executeUpdate(sql,u.getName(),u.getPwd(),u.getVipid(),u.getId());
    }
    public User getByid(int id){
        String sql="select * from t_user where id=?";
        ResultSet rs= this.executeQuery(sql,id);
        try{
            if(rs.next()) {
                return new User(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4));
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }finally{
            this.close();
        }
        return null;
    }
    public int add(User user){
        String sql="insert into t_user(name,pwd,vipId) values (?,?,1)";
        System.out.println(user);
        return executeUpdate(sql,user.getName(),user.getPwd());
    }
    public int delete(int id){
        String sql="delete from t_user where id=?";
        return  executeUpdate(sql, id);
    }
}
