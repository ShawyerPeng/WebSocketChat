<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>聊天</title>
    <link rel="stylesheet" href="/css/chat.css">
</head>
<body>
    欢迎：<p id="info"/>
    <div id="content"></div>
    <input type="text" placeholder="请输入要发送的信息" id="msg" onkeydown="send(event)">
    <input id="sendBtn" type="button" value="发送" onclick="sendMsg()" >
    <input id="clearBtn" type="button" value="清空" onclick="clearAll()">
</body>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js" ></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/sockjs/1/sockjs.min.js"></script>
<script type="text/javascript" src="/script/chat.js"></script>
</html>
