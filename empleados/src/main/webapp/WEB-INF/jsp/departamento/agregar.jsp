<%@ include file="../comunes/cabecero.jsp"%>
<%@ include file="../comunes/navegacion.jsp"%>

<c:url var="urlGuardarDepartamento" value="/departamentos/agregar"/>
<c:url var="urlDepartamentos" value="/departamentos"/>

<div class="container">
    <div class="text-center" style="margin: 30px">
        <h3>Agregar departamento</h3>
    </div>
    <form action="${urlGuardarDepartamento}" method="post">
        <div class="mb-3">
            <label for="nombreDepartamento" class="form-label">Nombre</label>
            <input type="text" class="form-control" id="nombreDepartamento"
                   name="nombreDepartamento" maxlength="100" required>
        </div>
        <div class="text-center">
            <button type="submit" class="btn btn-warning btn-sm me-3">Agregar</button>
            <a href="${urlDepartamentos}" class="btn btn-danger btn-sm">Regresar</a>
        </div>
    </form>
</div>

<%@ include file="../comunes/pie-pagina.jsp"%>
