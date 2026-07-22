<%@ include file="../comunes/cabecero.jsp"%>
<%@ include file="../comunes/navegacion.jsp"%>

<c:url var="urlAgregarDepartamento" value="/departamentos/agregar"/>

<div class="container">
    <div class="d-flex justify-content-between align-items-center" style="margin: 30px 0">
        <h3>Listado De Departamentos</h3>
        <a href="${urlAgregarDepartamento}" class="btn btn-primary">Agregar departamento</a>
    </div>

    <table class="table table-striped table-hover table-bordered align-middle">
        <thead class="table-dark text-center">
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Nombre</th>
            <th scope="col">Acciones</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="departamento" items="${departamentos}">
            <tr>
                <th scope="row">${departamento.idDepartamento}</th>
                <td>${departamento.nombreDepartamento}</td>
                <td class="text-center">
                    <c:url var="urlEditarDepartamento" value="/departamentos/editar">
                        <c:param name="idDepartamento" value="${departamento.idDepartamento}"/>
                    </c:url>
                    <a href="${urlEditarDepartamento}" class="btn btn-warning btn-sm me-3">Editar</a>

                    <c:url var="urlEliminarDepartamento" value="/departamentos/eliminar"/>
                    <form action="${urlEliminarDepartamento}" method="post" class="d-inline">
                        <input type="hidden" name="idDepartamento" value="${departamento.idDepartamento}">
                        <button type="submit" class="btn btn-danger btn-sm"
                                onclick="return confirm('¿Eliminar este departamento?')">Eliminar</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
        <c:if test="${empty departamentos}">
            <tr>
                <td colspan="3" class="text-center">No hay departamentos registrados.</td>
            </tr>
        </c:if>
        </tbody>
    </table>
</div>

<%@ include file="../comunes/pie-pagina.jsp"%>
