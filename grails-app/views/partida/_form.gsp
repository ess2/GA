<%@ page import="ga.Partida" %>



<div class="fieldcontain ${hasErrors(bean: partidaInstance, field: 'numero', 'error')} required">
	<label for="numero">
		<g:message code="partida.numero.label" default="Numero" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="numero" required="" value="${partidaInstance?.numero}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: partidaInstance, field: 'placar', 'error')} required">
	<label for="placar">
		<g:message code="partida.placar.label" default="Placar" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="placar" required="" value="${partidaInstance?.placar}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: partidaInstance, field: 'situacao', 'error')} required">
	<label for="situacao">
		<g:message code="partida.situacao.label" default="Situacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="situacao" required="" value="${partidaInstance?.situacao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: partidaInstance, field: 'numCampo', 'error')} required">
	<label for="numCampo">
		<g:message code="partida.numCampo.label" default="Num Campo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="numCampo" required="" value="${partidaInstance?.numCampo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: partidaInstance, field: 'numReserva', 'error')} required">
	<label for="numReserva">
		<g:message code="partida.numReserva.label" default="Num Reserva" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="numReserva" required="" value="${partidaInstance?.numReserva}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: partidaInstance, field: 'lastAdminModification', 'error')} required">
	<label for="lastAdminModification">
		<g:message code="partida.lastAdminModification.label" default="Last Admin Modification" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastAdminModification" required="" value="${partidaInstance?.lastAdminModification}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: partidaInstance, field: 'lastUpdateModification', 'error')} required">
	<label for="lastUpdateModification">
		<g:message code="partida.lastUpdateModification.label" default="Last Update Modification" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastUpdateModification" required="" value="${partidaInstance?.lastUpdateModification}"/>

</div>

