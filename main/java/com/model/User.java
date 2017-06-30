package com.model;

import org.springframework.stereotype.Component;

import java.sql.Date;

/**
 * Created by xugenli on 2017/5/8.
 */
@Component
public class User {
    private String cdsid;
    private String password;
    private String name;
    private int departmentId;
    private String phone;
    private int level;
    private Date createDate;
    private Date modifyDate;

    public String getCdsid() {
        return cdsid;
    }

    public void setCdsid(String cdsid) {
        this.cdsid = cdsid;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(int departmentId) {
        this.departmentId = departmentId;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Date getModifyDate() {
        return modifyDate;
    }

    public void setModifyDate(Date modifyDate) {
        this.modifyDate = modifyDate;
    }
}

