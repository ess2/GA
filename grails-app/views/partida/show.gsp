
<%@ page import="ga.Partida" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'partida.label', default: 'Partida')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-partida" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-partida" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list partida">
			
				<g:if test="${partidaInstance?.numero}">
				<li class="fieldcontain">
					<span id="numero-label" class="property-label"><g:message code="partida.numero.label" default="Numero" /></span>
					
						<span class="property-value" aria-labelledby="numero-label"><g:fieldValue bean="${partidaInstance}" field="numero"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${partidaInstance?.placar}">
				<li class="fieldcontain">
					<span id="placar-label" class="property-label"><g:message code="partida.placar.label" default="Placar" /></span>
					
						<span class="property-value" aria-labelledby="placar-label"><g:fieldValue bean="${partidaInstance}" field="placar"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${partidaInstance?.situacao}">
				<li class="fieldcontain">
					<span id="situacao-label" class="property-label"><g:message code="partida.situacao.label" default="Situacao" /></span>
					
						<span class="property-value" aria-labelledby="situacao-label"><g:fieldValue bean="${partidaInstance}" field="situacao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${partidaInstance?.numCampo}">
				<li class="fieldcontain">
					<span id="numCampo-label" class="property-label"><g:message code="partida.numCampo.label" default="Num Campo" /></span>
					
						<span class="property-value" aria-labelledby="numCampo-label"><g:fieldValue bean="${partidaInstance}" field="numCampo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${partidaInstance?.numReserva}">
				<li class="fieldcontain">
					<span id="numReserva-label" class="property-label"><g:message code="partida.numReserva.label" default="Num Reserva" /></span>
					
						<span class="property-value" aria-labelledby="numReserva-label"><g:fieldValue bean="${partidaInstance}" field="numReserva"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${partidaInstance?.lastAdminModification}">
				<li class="fieldcontain">
					<span id="lastAdminModification-label" class="property-label"><g:message code="partida.lastAdminModification.label" default="Last Admin Modification" /></span>
					
						<span class="property-value" aria-labelledby="lastAdminModification-label"><g:fieldValue bean="${partidaInstance}" field="lastAdminModification"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${partidaInstance?.lastUpdateModification}">
				<li class="fieldcontain">
					<span id="lastUpdateModification-label" class="property-label"><g:message code="partida.lastUpdateModification.label" default="Last Update Modification" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdateModification-label"><g:fieldValue bean="${partidaInstance}" field="lastUpdateModification"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:partidaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${partidaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
