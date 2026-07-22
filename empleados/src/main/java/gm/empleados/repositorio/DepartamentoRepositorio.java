package gm.empleados.repositorio;

import gm.empleados.modelo.Departamento;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DepartamentoRepositorio extends JpaRepository<Departamento, Integer> {
}
