<%@ include file="../comunes/cabecero.jsp"%>

<%@ include file="../comunes/navegacion.jsp"%>

<div class="container">
    <div class="text-center" style="margin: 30px">
        <h3>Agregar Empleados</h3>
    </div>
    <form action="${urlAgregar}" modelAttribute="empleadoForma" method="post">
        <div class="mb-3">
            <label for="nombreEmpleado" class="form-label">Nombre</label>
            <input type="text" class="form-control" id="nombreEmpleado"
                   name="nombreEmpleado" required="true">
        </div>
        <div class="mb-3">
            <label for="departamento" class="form-label">Departamento</label>
            <select class="form-select" id="departamento" name="idDepartamento" required>
                <option value="" selected disabled>Seleccione un departamento</option>
                <c:forEach var="departamento" items="${departamentos}">
                    <option value="${departamento.idDepartamento}">
                        ${departamento.nombreDepartamento}
                    </option>
                </c:forEach>
            </select>
            <c:if test="${empty departamentos}">
                <div class="form-text text-danger">
                    Debe registrar un departamento antes de agregar empleados.
                </div>
            </c:if>
        </div>
        <div class="mb-3">
            <label for="sueldo" class="form-label">Sueldo</label>
            <input type="number" class="form-control" id="sueldo" name="sueldo">
        </div>
        <div class="mb-3">
            <label for="activo" class="form-label">Estado</label>
            <select class="form-select" id="activo" name="activo" required>
                <option value="true" selected>Activo</option>
                <option value="false">Inactivo</option>
            </select>
        </div>
        <div class="text-center">
            <button type="submit" class="btn btn-warning btn-sm me-3"
                    <c:if test="${empty departamentos}">disabled</c:if>>Agregar</button>
            <a href="${urlEmpleados}" class="btn btn-danger btn-sm">Regresar</a>
        </div>
    </form>
</div>
<%@ include file="../comunes/pie-pagina.jsp"%>
