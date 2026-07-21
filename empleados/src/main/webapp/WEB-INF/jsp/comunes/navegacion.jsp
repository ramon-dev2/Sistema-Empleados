<!--Agregar los urk de la aplicacion -->
<c:set var="urlInicio">
    <c:url value="/"/>
</c:set>

<c:set var="urlAgregar">
    <c:url value="/agregar"/>
</c:set>

<c:set var="urlAgregarDept">
    <c:url value="/agregarDept"/>
</c:set>

<c:set var="urlEditar">
    <c:url value="/editar"/>
</c:set>


<div class="container">
    <nav class="navbar navbar-expand-lg  bg-primary" data-bs-theme="dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="${urlInicio}">Sistema de Empleados</a>
            <button class="navbar-toggler" type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#navbarNav" aria-controls="navbarNav"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active"
                           aria-current="page" href="${urlInicio}">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${urlAgregar}">Empleados</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${urlAgregar}">Departamento</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</div>
