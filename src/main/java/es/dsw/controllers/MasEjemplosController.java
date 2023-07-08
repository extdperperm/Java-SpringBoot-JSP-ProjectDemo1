package es.dsw.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import es.dsw.models.Profesor;

/* [8] - ORGANIZACIÓN DE LAS CONTROLADORAS POR ÁREAS O REGIONES LÓGICAS DE MAPEO
 * 
 * Esta controladora mapeará todos sus métodos bajo la ruta url /OtrosEjemplos/. De esta forma se puede evitar conflictos entre métodos de diferentes controladoras que mapean la misma
 * ruta o también se puede organizar la aplicación en diferentes áreas.
 */
@Controller
@RequestMapping("/OtrosEjemplos/")
public class MasEjemplosController {

	/*Observa como el mapeo de /ejemplo9 siembre estará bajo la ruta /OtrosEjemplos/.*/
	@RequestMapping(value = {"/ejemplo9"}, method = RequestMethod.GET)
	public String ejem9(Model objModel) {
		
		return "/OtrasVistas/example9";
	}
	
	/* En este caso, se obtienen los parámetros del formulario y es el objeto del modelo de negocio Profesor el que realiza la validación. Si hay algún problema (falta algún dato),
	 * se redirecciona a la misma vista del formulario y se informa en rojo del error y los campos faltantes. Además se carga en el formulario los datos que si están correctos.
	 * Si todo ha ido bién, se delega en la vista example10 y se muestran los datos.
	 * 
	 * Nota: Sprin dispone también de sus Java Annotation para llevar a cabo el control de errores o validación y reducir código. En este caso no es objeto del curso.*/
	@RequestMapping(value = {"/ejemplo10"}, method = RequestMethod.POST)
	public String ejem10(@RequestParam(name="nom", defaultValue = "") String Nombre,
			             @RequestParam(name="apell", defaultValue = "") String Apellido,
			             @RequestParam(name="edad", defaultValue = "-1") int edad,
			             Model objModel) {
				  //Se crea el objeto del modelo Profesor
				  Profesor objProfesor = new Profesor(Nombre, Apellido, edad);
				  
				  //Se carga en el modelo el objeto profesor
				  objModel.addAttribute("DataProfesor", objProfesor);
				  
				  if (objProfesor.isFlagError()) {
					  return "/OtrasVistas/example9";
				  } else {					  
					  return "/OtrasVistas/example10";
				  }
							
	}
}
