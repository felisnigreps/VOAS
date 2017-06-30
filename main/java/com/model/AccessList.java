package com.model;

import java.sql.Date;

/**
 * Created by xugenli on 2017/6/30.
 */
public class AccessList {
    private int access_id;
    private String accessName;
    private String detailInfo;
    private Date createDate;
    private Date modifyDate;

    public int getAccess_id() {
        return access_id;
    }

    public void setAccess_id(int access_id) {
        this.access_id = access_id;
    }

    public String getAccessName() {
        return accessName;
    }

    public void setAccessName(String accessName) {
        this.accessName = accessName;
    }

    public String getDetailInfo() {
        return detailInfo;
    }

    public void setDetailInfo(String detailInfo) {
        this.detailInfo = detailInfo;
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
