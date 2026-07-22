package gm.empleados.servicio;

import gm.empleados.modelo.Departamento;
import gm.empleados.repositorio.DepartamentoRepositorio;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DepartamentoServicio implements IDepartamentoServicio {
    private final DepartamentoRepositorio departamentoRepositorio;

    public DepartamentoServicio(DepartamentoRepositorio departamentoRepositorio) {
        this.departamentoRepositorio = departamentoRepositorio;
    }

    @Override
    public List<Departamento> listarDepartamentos() {
        return departamentoRepositorio.findAll();
    }

    @Override
    public Departamento buscarDepartamentoPorId(Integer idDepartamento) {
        return departamentoRepositorio.findById(idDepartamento).orElse(null);
    }

    @Override
    public void guardarDepartamento(Departamento departamento) {
        departamentoRepositorio.save(departamento);
    }

    @Override
    public void eliminarDepartamentoPorId(Integer idDepartamento) {
        departamentoRepositorio.deleteById(idDepartamento);
    }
}
