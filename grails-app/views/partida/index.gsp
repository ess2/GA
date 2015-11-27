
<%@ page import="ga.Partida" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'partida.label', default: 'Partida')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-partida" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-partida" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="numero" title="${message(code: 'partida.numero.label', default: 'Numero')}" />
					
						<g:sortableColumn property="placar" title="${message(code: 'partida.placar.label', default: 'Placar')}" />
					
						<g:sortableColumn property="situacao" title="${message(code: 'partida.situacao.label', default: 'Situacao')}" />
					
						<g:sortableColumn property="numCampo" title="${message(code: 'partida.numCampo.label', default: 'Num Campo')}" />
					
						<g:sortableColumn property="numReserva" title="${message(code: 'partida.numReserva.label', default: 'Num Reserva')}" />
					
						<g:sortableColumn property="lastAdminModification" title="${message(code: 'partida.lastAdminModification.label', default: 'Last Admin Modification')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${partidaInstanceList}" status="i" var="partidaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${partidaInstance.id}">${fieldValue(bean: partidaInstance, field: "numero")}</g:link></td>
					
						<td>${fieldValue(bean: partidaInstance, field: "placar")}</td>
					
						<td>${fieldValue(bean: partidaInstance, field: "situacao")}</td>
					
						<td>${fieldValue(bean: partidaInstance, field: "numCampo")}</td>
					
						<td>${fieldValue(bean: partidaInstance, field: "numReserva")}</td>
					
						<td>${fieldValue(bean: partidaInstance, field: "lastAdminModification")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${partidaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
