package cn.shgx.action;

import cn.shgx.entity.User;
import cn.shgx.entity.Vip;
import cn.shgx.service.UserService;
import cn.shgx.service.VipService;
import com.opensymphony.xwork2.Action;

import java.util.List;
import java.util.Map;

public class UserAction {
    private User user;
    private List<User> list;
    private List<Vip> viplist;
    private Map<Integer, String> vipmap;

    private UserService service = new UserService();
    private VipService vipService = new VipService();
    //登陆
    public String login(){
        User temp=service.login(user);
        if(temp!=null){
            return Action.SUCCESS;
        }else{
            return Action.LOGIN;
        }
    }
    //获取用户信息
    public String list(){
        list=service.getList();
        viplist=vipService.getList();
        vipmap = vipService.getMap();
        return Action.SUCCESS;
    }
    //更新用户信息
    public String update(){
        int res = service.update(user);
        if(res>0){
            return Action.SUCCESS;
        }
        return Action.ERROR;
    }
    //根据id查询用户界面跳转至更新界面
    public String toUpdate(){
        user = service.getByid(user.getId());
        vipmap = vipService.getMap();
        return Action.SUCCESS;
    }
    //删除用户
    public String delete(){
        int res = service.delete(user.getId());
        if(res>0){
            return Action.SUCCESS;
        }
        return Action.ERROR;
    }
    //添加用户
    public String add(){
        int res = service.add(user);
        if(res>0) {
            return Action.SUCCESS;
        }
        return Action.ERROR;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<User> getList() {
        return list;
    }

    public void setList(List<User> list) {
        this.list = list;
    }

    public List<Vip> getViplist() {
        return viplist;
    }

    public void setViplist(List<Vip> viplist) {
        this.viplist = viplist;
    }

    public Map<Integer, String> getVipmap() {
        return vipmap;
    }

    public void setVipmap(Map<Integer, String> vipmap) {
        this.vipmap = vipmap;
    }
}
