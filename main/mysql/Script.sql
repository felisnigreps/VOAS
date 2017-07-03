# all the important sql will be record in here

# 数据库字段名成同意用下划线,java使用驼峰
drop table user;

create TABLE user (
  cdsid VARCHAR(15) PRIMARY KEY NOT NULL ,
  password VARCHAR(15),
  name VARCHAR(15),
  department_id int(5),
  phone VARCHAR(20),
  level INT(5),
  create_date DATETIME,
  modify_date DATETIME
)ENGINE = myisam DEFAULT CHARSET=utf8;

# department_id, IT:1 etc..

INSERT INTO user(cdsid,
                 password,
                 name,
                 department_id,
                 phone,
                 level,
                 create_date,
                 modify_date)
VALUES ('gxu',
        'game',
        '许根立',
        1,
        13604024864,
        3,
        sysdate(),
        sysdate());

# type  personal office supplies/other supplies
# status InUse/Lent out/Retired/stock

# 材料的几种状态
#1.InUse 2.LentOut 3.Retired 4.Return 5.Stock

CREATE TABLE material (
  id INT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT ,
  name VARCHAR(15),
  type int(5),
  department_id int(5),
  detail_info VARCHAR(40),
  status VARCHAR(20),
  borrow_start DATETIME,
  borrow_end DATETIME,
  create_date DATETIME,
  modify_date DATETIME,
  user_cdsid VARCHAR(15)
)ENGINE = myisam AUTO_INCREMENT = 1 DEFAULT CHARSET=utf8;

# 自增长可以不指定id
INSERT into material (id, name, type, department_id, detail_info, status,borrow_start,borrow_end,create_date, modify_date,user_cdsid) VALUES
  (1,'Desktop(Dell)',1,1,'comment for the material','stock',sysdate(),sysdate(),sysdate(),sysdate(),'gxu');

INSERT into material ( name, type, department_id, detail_info, status,borrow_start,borrow_end,create_date, modify_date,user_cdsid) VALUES
  ('一个dock',1,1,'测试普通用户只能查询到自己借的物品','stock',sysdate(),sysdate(),sysdate(),sysdate(),'llk');


select id,name,department_id,detail_info,status,borrow_start,borrow_end,create_date,modify_date,user_cdsid
from material;

## 创建部门表
## IT:1, 行政:2 HR:3 .....
## parent为上级部门 0代表无上级部门

CREATE TABLE department (
  department_id INT(20) PRIMARY KEY NOT NULL ,
  name VARCHAR(15),
  owner_cdsid VARCHAR(15),
  parrent_id INT(20),
  create_date DATETIME,
  modify_date DATETIME
)ENGINE = myisam DEFAULT CHARSET=utf8;

insert into department values (1,'IT','',0,sysdate(),sysdate());
insert into department values (2,'行政','',0,sysdate(),sysdate());
insert into department values (3,'HR','',0,sysdate(),sysdate());


CREATE TABLE access_list (
  access_id INT(20) PRIMARY KEY NOT NULL ,
  access_name VARCHAR(15),
  detail_info VARCHAR(40),
  create_date DATETIME,
  modify_date DATETIME
)ENGINE = myisam DEFAULT CHARSET=utf8;

insert into access_list values (3,'admin','管理员权限',sysdate(),sysdate());
insert into access_list values (4,'user','普通用户权限',sysdate(),sysdate());



#1.InUse 2.LentOut 3.Retired 4.Return 5.Stock

CREATE TABLE material_status (
  status_id INT(20) PRIMARY KEY NOT NULL ,
  status_name VARCHAR(15),
  status_comment VARCHAR(30),
  create_date DATETIME,
  modify_date DATETIME
)ENGINE = myisam DEFAULT CHARSET=utf8;

insert into material_status values (1,'InUse','',sysdate(),sysdate());
insert into material_status values (2,'LentOut','',sysdate(),sysdate());
insert into material_status values (3,'Retired','',sysdate(),sysdate());
insert into material_status values (4,'Return','',sysdate(),sysdate());
insert into material_status values (5,'Stock','',sysdate(),sysdate());