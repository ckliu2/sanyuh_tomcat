<%-- SiteMesh has a bug where error pages aren't decorated - hence the full HTML --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ include file="/common/taglibs.jsp"%>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <title>404 ~ Page Not Found</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <c:set var="ctx" value="${pageContext.request.contextPath}"/>
    <link href="${ctx}/styles/global.css" type="text/css" rel="stylesheet"/>
    <link href="${ctx}/images/favicon.ico" rel="SHORTCUT ICON"/>
</head>
<body>
404 ~ Page Not Found

</body>
</html>


