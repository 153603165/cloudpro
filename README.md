#cloudpro

####微服务说明
2. plat-eureka-server 平台级，注册中心
3. plat-oauth2-server 平台级，认证中心
4. plat-zuul-server   平台级，服务网关
5. pro-cms            微服务，内容管理系统（文章，帖子，新闻）
6. pro-sys            微服务，用户管理系统(用户，角色，权限，日志)

####初始化配置说明:
#####一、plat-oauth2-server
>   需要存储token信息，使用的是redis,请修改application.properties配置
>   需要使用mysql数据库，导入sql语句:plat-oauth2-server\src\main\resources\sql\oauth2.sql
>   数据库的链接，请修改数据库配置
>   登录用户名admin，密码123456 ，其他请参见sys_user表

#####二、测试oauth2功能
1. 访问地址：http://localhost:8080/cms 会自动跳转到登录页面
2. 输入用户名密码admin 123456 登录成功，进行授权，授权成功，自动跳转回cms页面
