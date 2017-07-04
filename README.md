# 360mall
java使用纯servlet实现360商城

开发语言：JAVA

数据库：MYSQL

相关技术：纯Servlet+jsp

## 简介
这是我上大学期间写的第一个相对较完善的学习项目，项目中所有css和js都是自己边摸索、边学习画出来的，自我感觉对于我当时的水平还算可以了。本项目适合javaweb初学者，大家可以从中学到javaweb处理底层相关原理、css和js入门理解。数据库使用MYSQL，全部源代码开放，如果本项目对您有帮助的话，**请方便给我个Star**

## 功能模块
- 首页
1. 导航栏
2. 轮播图
3. 分栏推荐

- 搜索
1. 显示关键词搜到的产品
2. 能通过产品进入详情页

- 详情页
1. 显示商品详情
2. 多图画廊展示
3. 购物车
4. 立即购买功能

- 购物车
1. 显示加入购物车产品信息

- 登录注册
1. 实现登录注册功能

- 后台管理
1. 后台首页
2. 商品管理
3. 用户管理

## 环境要求

- JDK7或更高版本
- Tomcat7.0或更高版本
- MySQL5.1或更高版本

## 部署说明

1. 创建数据库。使用MySQL，字符集选择为`utf8`或者`utf8mb4`（支持更多特殊字符，推荐）。
2. 创建数据库导入数据。数据库在`360mall\WebContent\sql`目录下，参考数据脚本创建数据库。
3. 设置项目编码为utf-8，选择jdk1.7版本或以上，不要选择jre。
4. 修改数据库连接。打开`360mall\src\dao\BaseDao.java`文件，根据实际情况修改`jdbc.url`、`jdbc.user`、`jdbc.password`的值
5. 部署项目。将项目部署到Tomcat7或以上版本，启动Tomcat。
6. 访问系统。前台地址：[http://localhost:8080/360mall](http://localhost:8080/360mall)；用户名：admin，密码：123456，后台登录点击右下角小人，即可切换登录，进入后台管理。

## 项目结构
├── src

│   ├── dao

│       ├── BaseDao                         // 数据库连接基础dao

│       ├── CartDao                         // 购物车dao

│       ├── GoodsDao                        // 商品dao
 
│       └── UserDao                         // 用户dao

│   ├── dao.impl    

│       ├── CartDao                         // 购物车处理实现类

│       ├── GoodsDao                        // 商品处理实现类

│       └── UserDao                         // 用户处理实现类

│   ├── entity                              // 工具方法

│       ├── Cart                            // 购物车实体类

│       ├── Goods                           // 商品实体类

│       └── User                            // 用户实体类

│   └──── servlets                          // 处理类，相当于action或controller

│       ├── CartServlet                     // 购物车处理类

│       ├── GoodsServlet                    // 商品处理类

│       └── UserServlets                    // 用户处理类

│
├── WebContent

│   ├── css

│       └── ...                                   // 样式文件
           
│   ├── img

│       └── ...			     // 用到的图片

│   ├── js

│       └── ...			      // js文件

│   ├── sql				

│       └── ...			      // sql文件

│   ├── WEB-INF   

│       └── lib			      // jar包

│   └── ...                                       //页面

└── README.md

## 项目预览
首页
![](./_image/211.png)
导航

![](./_image/212.png)
前台登录

![](./_image/213.png)
后台登录

![](./_image/218.png)
注册

![](./_image/214.png)
购物车
![](./_image/216.png)
![](./_image/215.png)
搜索

![](./_image/217.png)
后台首页
![](./_image/219.png)
用户管理
![](./_image/220.png)
商品管理
![](./_image/221.png)
