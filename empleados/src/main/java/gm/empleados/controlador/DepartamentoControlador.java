package gm.empleados.controlador;

import gm.empleados.modelo.Departamento;
import gm.empleados.servicio.DepartamentoServicio;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/departamentos")
public class DepartamentoControlador {
    private final DepartamentoServicio departamentoServicio;

    public DepartamentoControlador(DepartamentoServicio departamentoServicio) {
        this.departamentoServicio = departamentoServicio;
    }

    @RequestMapping(method = RequestMethod.GET)
    public String listar(ModelMap modelo) {
        modelo.put("departamentos", departamentoServicio.listarDepartamentos());
        return "departamento/listar";
    }

    @RequestMapping(value = "/agregar", method = RequestMethod.GET)
    public String mostrarAgregar() {
        return "departamento/agregar";
    }

    @RequestMapping(value = "/agregar", method = RequestMethod.POST)
    public String agregar(@ModelAttribute("departamentoForma") Departamento departamento) {
        departamentoServicio.guardarDepartamento(departamento);
        return "redirect:/departamentos";
    }

    @RequestMapping(value = "/editar", method = RequestMethod.GET)
    public String mostrarEditar(@RequestParam Integer idDepartamento, ModelMap modelo) {
        Departamento departamento = departamentoServicio.buscarDepartamentoPorId(idDepartamento);
        if (departamento == null) {
            return "redirect:/departamentos";
        }
        modelo.put("departamento", departamento);
        return "departamento/editar";
    }

    @RequestMapping(value = "/editar", method = RequestMethod.POST)
    public String editar(@ModelAttribute("departamentoForma") Departamento departamento) {
        departamentoServicio.guardarDepartamento(departamento);
        return "redirect:/departamentos";
    }

    @RequestMapping(value = "/eliminar", method = RequestMethod.POST)
    public String eliminar(@RequestParam Integer idDepartamento) {
        if (departamentoServicio.buscarDepartamentoPorId(idDepartamento) != null) {
            departamentoServicio.eliminarDepartamentoPorId(idDepartamento);
        }
        return "redirect:/departamentos";
    }
}
