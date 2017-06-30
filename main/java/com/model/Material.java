package com.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.sql.Date;

/**
 * Created by xugenli on 2017/5/17.
 */
@Component
public class Material {

    public Department getDepartment() {
        return department;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }

    @Autowired
    private Department department;

    private int id;
    private String name;
    private int departmentId;
    private String detailInfo;
    private String status;
    //要使用java.sql.Date来保证格式正确
    private Date borrowStart;
    private Date borrowEnd;
    private Date createDate;
    private Date modifyDate;
    private String userCdsid;


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

    public int getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(int departmentId) {
        this.departmentId = departmentId;
    }

    public String getDetailInfo() {
        return detailInfo;
    }

    public void setDetailInfo(String detailInfo) {
        this.detailInfo = detailInfo;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getBorrowStart() {
        return borrowStart;
    }

    public void setBorrowStart(Date borrowStart) {
        this.borrowStart = borrowStart;
    }

    public Date getBorrowEnd() {
        return borrowEnd;
    }

    public void setBorrowEnd(Date borrowEnd) {
        this.borrowEnd = borrowEnd;
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

    public String getUserCdsid() {
        return userCdsid;
    }

    public void setUserCdsid(String userCdsid) {
        this.userCdsid = userCdsid;
    }


}
