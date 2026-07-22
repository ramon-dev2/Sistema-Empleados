<%@ include file="../comunes/cabecero.jsp"%>

<%@ include file="../comunes/navegacion.jsp"%>

<div class="container">
    <div class="text-center" style="margin: 30px">
        <h3>Editar Empleado</h3>
    </div>
    <form action="${urlEditar}" modelAttribute="empleadoForma" method="post">
        <input type="hidden" name="idEmpleado" value="${empleado.idEmpleado}"/>
        <div class="mb-3">
            <label for="nombreEmpleado" class="form-label">Nombre</label>
            <input type="text" class="form-control" id="nombreEmpleado"
                   name="nombreEmpleado" required="true" value="${empleado.nombreEmpleado}">
        </div>
        <div class="mb-3">
            <label for="departamento" class="form-label">Departamento</label>
            <select class="form-select" id="departamento" name="idDepartamento" required>
                <option value="" disabled>Seleccione un departamento</option>
                <c:forEach var="departamento" items="${departamentos}">
                    <option value="${departamento.idDepartamento}"
                            <c:if test="${empleado.departamento.idDepartamento == departamento.idDepartamento}">selected</c:if>>
                        ${departamento.nombreDepartamento}
                    </option>
                </c:forEach>
            </select>
        </div>
        <div class="mb-3">
            <label for="sueldo" class="form-label">Sueldo</label>
            <input type="number" class="form-control" id="sueldo" name="sueldo"
                   value="${empleado.sueldo}">
        </div>
        <div class="mb-3">
            <label for="activo" class="form-label">Estado</label>
            <select class="form-select" id="activo" name="activo" required>
                <option value="true" <c:if test="${empleado.activo}">selected</c:if>>Activo</option>
                <option value="false" <c:if test="${not empleado.activo}">selected</c:if>>Inactivo</option>
            </select>
        </div>
        <div class="text-center">
            <button type="submit" class="btn btn-warning btn-sm me-3"
                    <c:if test="${empty departamentos}">disabled</c:if>>Editar</button>
            <a href="${urlEmpleados}" class="btn btn-danger btn-sm">Regresar</a>
        </div>
    </form>
</div>
<%@ include file="../comunes/pie-pagina.jsp"%>
