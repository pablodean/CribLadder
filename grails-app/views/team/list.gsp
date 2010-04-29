
<%@ page import="au.com.ladder.crib.Team" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'team.label', default: 'Team')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'team.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="name" title="${message(code: 'team.name.label', default: 'Name')}" />
                        
                            <g:sortableColumn property="player1" title="${message(code: 'team.player1.label', default: 'Player1')}" />
                        
                            <g:sortableColumn property="player2" title="${message(code: 'team.player2.label', default: 'Player2')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${teamInstanceList}" status="i" var="teamInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${teamInstance.id}">${fieldValue(bean: teamInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: teamInstance, field: "name")}</td>
                        
                            <td>${fieldValue(bean: teamInstance, field: "player1")}</td>
                        
                            <td>${fieldValue(bean: teamInstance, field: "player2")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${teamInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
