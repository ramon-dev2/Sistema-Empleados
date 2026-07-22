<%@ include file="../comunes/cabecero.jsp"%>
<%@ include file="../comunes/navegacion.jsp"%>

<c:url var="urlEditarDepartamento" value="/departamentos/editar"/>
<c:url var="urlDepartamentos" value="/departamentos"/>

<div class="container">
    <div class="text-center" style="margin: 30px">
        <h3>Editar departamento</h3>
    </div>
    <form action="${urlEditarDepartamento}" method="post">
        <input type="hidden" name="idDepartamento" value="${departamento.idDepartamento}">
        <div class="mb-3">
            <label for="nombreDepartamento" class="form-label">Nombre</label>
            <input type="text" class="form-control" id="nombreDepartamento"
                   name="nombreDepartamento" maxlength="100" required
                   value="${departamento.nombreDepartamento}">
        </div>
        <div class="text-center">
            <button type="submit" class="btn btn-warning btn-sm me-3">Guardar</button>
            <a href="${urlDepartamentos}" class="btn btn-danger btn-sm">Regresar</a>
        </div>
    </form>
</div>

<%@ include file="../comunes/pie-pagina.jsp"%>
