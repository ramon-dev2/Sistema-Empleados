<%@ include file="comunes/cabecero.jsp"%>

<%@ include file="comunes/navegacion.jsp"%>

<div class="container">
    <div class="p-5 my-5 text-center bg-light border rounded-3">
        <h1 class="display-5 fw-bold">Bienvenido al Sistema de Empleados</h1>
        <p class="fs-5 text-secondary mt-3">
            Administra empleados y departamentos desde un solo lugar.
        </p>
        <div class="d-flex justify-content-center gap-2 mt-4">
            <a href="${urlEmpleados}" class="btn btn-primary">Ver empleados</a>
            <a href="${urlDepartamentos}" class="btn btn-outline-primary">Ver departamentos</a>
        </div>
    </div>
</div>

<%@ include file="comunes/pie-pagina.jsp"%>
