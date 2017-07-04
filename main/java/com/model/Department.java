package com.model;

import org.springframework.stereotype.Component;

import java.sql.Date;

/**
 * Created by xugenli on 2017/6/30.
 */
@Component
public class Department {


    private int departmentId;
    private String name;
    private String ownerCdsid;
    private Date createDate;
    private Date modifyDate;

    public int getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(int departmentId) {
        this.departmentId = departmentId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getOwnerCdsid() {
        return ownerCdsid;
    }

    public void setOwnerCdsid(String ownerCdsid) {
        this.ownerCdsid = ownerCdsid;
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
