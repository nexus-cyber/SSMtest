一个简单的SSM项目

这是一个图书管理网站

主页
![image](https://user-images.githubusercontent.com/84551286/227144548-6e61438b-d605-4b88-b5f5-79392afe7730.png)

登录用户和密码 admin:admin

登录后的页面，查询操作按书籍名字查询，支持模糊查询

![image](https://user-images.githubusercontent.com/84551286/227144893-bac5c18d-40bc-47e6-b850-1153b3d80eea.png)

书籍详情页

![image](https://user-images.githubusercontent.com/84551286/227145169-3dfb7114-da8d-491e-8e4a-b8637dc6b1fa.png)

修改书籍信息页

![image](https://user-images.githubusercontent.com/84551286/227145383-b651aeb4-6e13-4ef5-9d46-f513c109a0e3.png)

新增书籍页

![image](https://user-images.githubusercontent.com/84551286/227145587-3d619588-d9b0-4146-9c72-d6641dc11346.png)


该系统增加了一些安全措施

1，密码输入错误5次后锁定用户，可以修改user表的islock字段为0解锁

![image](https://user-images.githubusercontent.com/84551286/227146214-77cda0c9-66bd-46d6-a2bd-891afa5890a8.png)

2，对增，改，查，操作进行字符过滤，防止XSS

3，sql语句采用预编译方式编写

4，引入session机制防止未授权访问

5，对增，改，删，增加token，每次请求都会刷新token，防止csrf

![image](https://user-images.githubusercontent.com/84551286/227147057-7ebd3462-676b-40ea-ad82-48330c02c138.png)
![image](https://user-images.githubusercontent.com/84551286/227147168-6e2b7701-28f9-45ad-8d78-a55d05f24952.png)

修改密码操作

新密码加上eokal*(进行md5加密，然后替换user表的pass字段

![image](https://user-images.githubusercontent.com/84551286/227149059-7f3ccbc8-fb0c-4714-b2f4-4688143434b6.png)
![image](https://user-images.githubusercontent.com/84551286/227149795-66fdf53e-02c9-4995-acd4-097ba515f8fc.png)

