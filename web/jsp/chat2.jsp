<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>聊天</title>
    <link rel="stylesheet" href="/css/chat2.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.0/handlebars.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/list.js/1.1.1/list.min.js"></script>
</head>
<body>
<div class="container clearfix">
    <div class="people-list" id="people-list">
        <div class="search">
            <input type="text" placeholder="search"/>
            <i class="fa fa-search"></i>
        </div>
        <ul class="list">
            <li class="clearfix">
                <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/195612/chat_avatar_01.jpg" alt="avatar"/>
                <div class="about">
                    <div class="name"><p id="info"/></div>
                    <div class="status">
                        <i class="fa fa-circle online"></i> online
                    </div>
                </div>
            </li>
        </ul>
    </div>

    <div class="chat">
        <div class="chat-header clearfix">
            <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/195612/chat_avatar_01_green.jpg" alt="avatar"/>
            <div class="chat-about">
                <div class="chat-with">Chat with Vincent Porter</div>
                <div class="chat-num-messages">already 1 902 messages</div>
            </div>
            <i class="fa fa-star"></i>
        </div>

        <div class="chat-history" id="content">
            <ul>
                <%--<li class="clearfix">--%>
                    <%--<div class="message-data align-right">--%>
                        <%--<span class="message-data-time">10:10 AM, Today</span> &nbsp; &nbsp;--%>
                        <%--<span class="message-data-name">Olia</span> <i class="fa fa-circle me"></i>--%>
                    <%--</div>--%>
                    <%--<div class="message other-message float-right">--%>
                        <%--Hi Vincent, how are you? How is the project coming along?--%>
                    <%--</div>--%>
                <%--</li>--%>
            </ul>
        </div>

        <div class="chat-message clearfix">
            <textarea name="msg" id="msg" onkeydown="send(event)" placeholder="Type your message" rows="3"></textarea>
            <i class="fa fa-file-o"></i> &nbsp;&nbsp;&nbsp;
            <i class="fa fa-file-image-o"></i>
            <button id="sendBtn" type="button" value="发送" onclick="sendMsg()">Send</button>
            <button id="clearBtn" type="button" value="清空" onclick="clearAll()">Clear</button>
        </div>
    </div>
</div>

<script id="message-template" type="text/x-handlebars-template">
    <li class="clearfix">
        <div class="message-data align-right">
            <span class="message-data-time">{{time}}, Today</span> &nbsp; &nbsp;
            <span class="message-data-name">Olia</span> <i class="fa fa-circle me"></i>
        </div>
        <div class="message other-message float-right">
            {{messageOutput}}
        </div>
    </li>
</script>

<script id="message-response-template" type="text/x-handlebars-template">
    <li>
        <div class="message-data">
            <span class="message-data-name"><i class="fa fa-circle online"></i> Vincent</span>
            <span class="message-data-time">{{time}}, Today</span>
        </div>
        <div class="message my-message">
            {{response}}
        </div>
    </li>
</script>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js" ></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/sockjs/1/sockjs.min.js"></script>
<script type="text/javascript" src="/script/chat.js"></script>
<script type="text/javascript" src="/script/chat2.js"></script>
</body>
</html>
<!-- https://codepen.io/drehimself/pen/KdXwxR -->