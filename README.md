# 360mall
java使用纯servlet实现360商城

开发语言：JAVA

开发工具：Eclipse

数据库：Mysql

后台技术：纯Servlet+JDBC

前台技术：Jsp+Css+Js

如果本项目对您有帮助的话，**请方便给我个Star**

联系我：http://www.cnblogs.com/laoyeye/p/7116087.html

## 简介
这是我上大学期间写的第一个相对较完善的学习项目了，项目中所有css和js都是自己边摸索、边学习画出来的，自我感觉对于我当时的水平还算可以了。
此项目适合javaweb初学者参考，大神请无视。大家可以从中学到javaweb底层原理、使用Servlet处理请求、css和js入门理解等。数据库使用MYSQL，全部源代码开放。

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
│　├── src

│　　　　├── dao

│　　　　　　　├── BaseDao　　　　　　　　　　　　　　 // 数据库连接基础dao

│　　　　　　　├── CartDao　　　　　　　　　　　　　　// 购物车dao

│　　　　　　　├── GoodsDao　　　　　　　　　　　　　// 商品dao
 
│　　　　　　　└── UserDao　　　　　　　　　　　　　　// 用户dao

│　　　　├── dao.impl    

│　　　　　　　├── CartDao 　　　　　　　　　　　　　　// 购物车处理实现类

│　　　　　　　├── GoodsDao　　　　　　　　　　　　　　// 商品处理实现类

│　　　　　　　└── UserDao　　　　　　　　　　　　　　// 用户处理实现类

│　　　　├── entity　　　　　　　　　　　　　　　　　　// 工具方法

│　　　　　　　├── Cart　　　　　　　　　　　　　　　　// 购物车实体类

│　　　　　　　├── Goods　　　　　　　　　　　　　　　// 商品实体类

│　　　　　　　└── User　　　　　　　　　　　　　　　　// 用户实体类

│　　　　└──── servlets　　　　　　　　　　　　　　　　// 处理类，相当于action或controller

│　　　　　　　├── CartServlet　　　　　　　　　　　　// 购物车处理类

│　　　　　　　├── GoodsServlet　　　　　　　　　　　// 商品处理类

│　　　　　　　└── UserServlets　　　　　　　　　　　// 用户处理类

│
├── WebContent

│　　　　├── css

│　　　　　　　└── ... 　　　　　　　　　　　　　　　　// 样式文件
           
│　　　　├── img

│　　　　　　　└── ...　　　　　　　　　　　　　　　　// 用到的图片

│　　　　├── js

│　　　　　　　└── ...　　　　　　　　　　　　　　　　// js文件

│　　　　├── sql				

│ 　　　　　　└── ...　　　　　　　　　　　　　　　　// sql文件

│　　　　├── WEB-INF  　 

│　　　　　　└── lib　　　　　　　　　　　　　　　　　// jar包

│　　　　└── ...　　　　　　　　　　　　　　　　　　　//页面

└── README.md

## 项目预览
首页
![](https://github.com/allanzhuo/study/blob/master/img/%E9%A6%96%E9%A1%B5.png?raw=true)
导航
![](https://github.com/allanzhuo/study/blob/master/img/%E5%AF%BC%E8%88%AA.png?raw=true)
详情页
![](https://github.com/allanzhuo/study/blob/master/img/%E8%AF%A6%E6%83%85%E9%A1%B5.png?raw=true)
前台登录
![](https://github.com/allanzhuo/study/blob/master/img/%E7%99%BB%E5%BD%951.png?raw=true)
后台登录
![](https://github.com/allanzhuo/study/blob/master/img/%E7%99%BB%E5%BD%952.png?raw=true)
注册
![](https://github.com/allanzhuo/study/blob/master/img/%E6%B3%A8%E5%86%8C.png?raw=true)
购物车
![](https://github.com/allanzhuo/study/blob/master/img/%E8%B4%AD%E7%89%A9%E8%BD%A61.png?raw=true)
![](https://github.com/allanzhuo/study/blob/master/img/%E8%B4%AD%E7%89%A9%E8%BD%A62.png?raw=true)
搜索
![](https://github.com/allanzhuo/study/blob/master/img/%E6%90%9C%E7%B4%A2.png?raw=true)
后台首页
![](https://github.com/allanzhuo/study/blob/master/img/%E5%90%8E%E5%8F%B01.png?raw=true)

用户管理
![](https://github.com/allanzhuo/study/blob/master/img/%E5%90%8E%E5%8F%B02.png?raw=true)
商品管理
![](https://github.com/allanzhuo/study/blob/master/img/%E5%90%8E%E5%8F%B03.png?raw=true)
