<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  Project name(项目名称)：JSTL_c_foreach_label
  Author(作者）: mao
  Author QQ：1296193245
  GitHub：https://github.com/maomao124/
  Date(创建日期)： 2021/12/31
  Time(创建时间)： 16:55
  Description(描述)：
  JSTL <c:forEach> 标签类似于 Java 中的 for 循环语句，用来迭代一个集合中的对象。
JSP <c:forEach> 标签的语法如下：
<c:forEach [var="varname"] [varStatus="varstatusName"] [begin="开始"] [end="结束"] [step="step"]>
    Java程序或HTML代码
</c:forEach>
或
<c:forEach item="collection" [var="varname" [varStatus="varstatusName"] [begin="开始"] [end="结束"] [step="step"]]>
    Java程序或HTML代码
</c:forEach>
其中：
items：要被循环的信息，可以是数组、Java 集合等；
var：可选项，指定迭代之的别名；
varStatus：可选项，当前迭代的状态信息；
begin：可选项，迭代开始的元素，起始下标为 0；
end：可选项，迭代结束的元素；
step：可选项，迭代的步长；
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach var="i" begin="1" end="5">
    <c:out value="${i}"/>
</c:forEach>
<br/>
<c:forEach var="i" begin="1" end="50" step="2">
    <c:out value="${i} " escapeXml="true" default=""/>
</c:forEach>
<br/>
<%
    ArrayList<String> list = new ArrayList<>();
    for (int i = 0; i < 100; i++)
    {
        String str = "集合数字" + i;
        list.add(str);
    }
    request.setAttribute("list", list);
%>
<c:forEach items="${list}" var="i" varStatus="varstatusName" begin="0" end="100" step="1" >
    <c:out value="${i} " escapeXml="true" default=""/>
    <%--
        <c:out value="${varstatusName}" escapeXml="true" default=""/>
        --%>
    <br/>
    所在位置，即索引：<c:out value="${varstatusName.index}  " /><br>
    总共已迭代的次数：<c:out value="${varstatusName.count}  " /><br>
    是否为第一个位置：<c:out value="${varstatusName.first}  " /><br>
    是否为最后一个位置：<c:out value="${varstatusName.last}" /><br>
    <br/>
</c:forEach>
</body>
</html>
