
<%@ page import="facebook.demo.Friend" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'friend.label', default: 'Friend')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
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
            <div class="paginateButtons">
                <g:paginate total="${friendInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
