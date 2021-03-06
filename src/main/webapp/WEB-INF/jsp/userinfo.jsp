<%--
  Created by IntelliJ IDEA.
  User: boxa
  Date: 2017/10/26
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>bicycle</title>
    <jsp:include page="common/head.jsp"/>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/css/userInfo.css"/>
    <script src="${pageContext.request.contextPath}/static/js/userInfo.js"></script>
</head>
<body>

    <jsp:include page="common/nav.jsp"/>

    <div class="container">
        <div class="user-info">
            <div class="row user-info-img">
                <div class="user-info-avatar">
                    <img src="${pageContext.request.contextPath}/static/image/hp1.jpg" id="headPortrait" width="180" height="180"/>
                </div>

                <h3>${sessionScope.user.username}</h3>
                <a href="mailto:${sessionScope.user.useremail}">${sessionScope.user.useremail}</a>
            </div>
            <div class="row user-info-fix">
                <h3>用户信息</h3>
                <div class="user-info-form">
                    <form action="userInfo" method="post">
                        <div class="row user-info-form-fix">
                            <div class="form-group has-feedback" id="groupName">
                                <div class="col-md-2" style="float: left; line-height: 30px; margin-right: 20px;">
                                    <label class="control-label">用户名</label>
                                </div>
                                <div class="col-md-5">
                                    <input type="text" class="form-control" name="username" value="${sessionScope.user.username}"/>
                                    <div class="error-if">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row user-info-form-fix">
                            <div class="form-group has-feedback" id="groupEmail">
                                <div class="col-md-2" style="float: left; line-height: 30px; margin-right: 20px;">
                                    <label class="control-label">邮箱</label>
                                </div>
                                <div class="col-md-5">
                                    <input type="email" class="form-control" name="useremail" value="${sessionScope.user.useremail}"/>
                                    <div class="error-if">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row user-info-form-fix">
                            <div class="form-group has-feedback" id="groupTel">
                                <div class="col-md-2" style="float: left; line-height: 30px; margin-right: 20px;">
                                    <label class="control-label">手机号码</label>
                                </div>
                                <div class="col-md-5">
                                    <input type="text" class="form-control" name="usertel" value="${sessionScope.user.usertel}"/>
                                    <div class="error-if">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row user-info-form-fix">
                            <div class="form-group has-feedback" id="groupIdCard">
                                <div class="col-md-2" style="float: left; line-height: 30px; margin-right: 20px;">
                                    <label class="control-label">身份证号</label>
                                </div>
                                <div class="col-md-5">
                                    <input type="text" class="form-control" name="useridcard" value="${sessionScope.user.useridcard}"/>
                                    <div class="error-if">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row user-info-form-fix">
                            <div class="col-md-2" style="float: left; line-height: 30px; margin-right: 20px;">
                                <label class="control-label">性别</label>
                            </div>
                            <div class="col-md-5">
                                <input style="width: 30px;" type="radio" name="usersex" value="1"/>
                                <span>男</span>
                                <input style="width: 30px;" type="radio" name="usersex" value="0"/>
                                <span>女</span>
                            </div>

                            <script>
                                var userSex = null;
                                userSex = ${sessionScope.user.usersex};
                                if(userSex !== null) {
                                    if(userSex === 0) {
                                        $("[value='0']").attr("checked", true);
                                    } else {
                                        $("[value='1']").attr("checked", true);
                                    }
                                }
                            </script>

                        </div>
                        <div class="buttons">
                            <button type="button" style="margin-right: 20px;" class="btn btn-danger" id="changeUserInfo">修改</button>
                            <button type="submit" class="btn btn-success" id="saveChange" disabled="disabled">保存</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="common/footer.jsp"/>
</body>
</html>
