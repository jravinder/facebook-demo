
<%@ page import="facebook.demo.Friend" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'friend.label', default: 'Friend')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        
        <div class="body">
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
              <h1>My Profile</h1>

                  <g:fbInfo/>
                  <br />
                  <br />
              <h1>Friends List
              </h1>

                  <g:fbFriendsInfo/>

            </div>
            
        </div>
    </body>
</html>
