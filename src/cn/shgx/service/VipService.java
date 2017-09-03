package cn.shgx.service;

import cn.shgx.dao.VipDao;
import cn.shgx.entity.Vip;

import java.util.List;
import java.util.Map;

public class VipService {
    private VipDao vipDao = new VipDao();
    public List<Vip> getList(){
        return vipDao.getList();
    }
    public Map<Integer, String> getMap(){
        return vipDao.getMap();
    }
}
