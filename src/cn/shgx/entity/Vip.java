package cn.shgx.entity;
//创建会员
public class Vip {
    private int id;
    private String name;

    public Vip() {

    }

    public Vip(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
