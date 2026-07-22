package gm.empleados.servicio;

import gm.empleados.modelo.Departamento;

import java.util.List;

public interface IDepartamentoServicio {
    List<Departamento> listarDepartamentos();
    Departamento buscarDepartamentoPorId(Integer idDepartamento);
    void guardarDepartamento(Departamento departamento);
    void eliminarDepartamentoPorId(Integer idDepartamento);
}
