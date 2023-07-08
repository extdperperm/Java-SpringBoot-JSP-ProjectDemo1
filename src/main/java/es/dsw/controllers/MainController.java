package es.dsw.controllers;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import es.dsw.models.*;

/* [7] - CREACIÓN DE LAS CONTROLADORAS
 * 
 * La Java Annotation @Controller le indicará al servlet de Spring que se trata de una controladora
 * que mapea una serie de rutas lógicas de cliente. Recuerda que para que mapeé esta clase debe estar especificado 
 * con las javaannotations @ComponentScan en el método main del proyecto.
 */
@Controller
public class MainController {
	
	/* La Java Annotation @RequestMapping indica que el método de la clase controladora (que debe ser de ámbito público), es un mapeo de acceso lógico. En este caso
	 * cuando el usuario acceda a la raiz de la aplicación (/) o escriba en la url la ruta absoluta a la aplicación seguido de /index, se
	 * disparará la ejecución de este método por método GET.  
	 *  
	 * Observa como al indicar el mapeo "/" de forma implicita se está especificando que él acceso por defecto a la aplicación desde el cliente es 
	 * la raíz de la aplicación. También, tal como se muestra en el ejemplo, se puede indicar más de un alias para un mismo
	 * método java. En este caso, da gual que el cliente solicite la ruta lógica de la raíz (/) o (/index), pues se delegará a la misma
	 * lógica de la controladora y por ende misma vista index.jsp en este caso.
	 */
	@RequestMapping(value = {"/", "/index"})
	public String index() {
		return "index";  
	} 
	
	/* En este ejemplo, se indica de forma explícita que el método http que se capturará es el GET. Siempre es recomendable indicarlo
	 * por legilibilidad del código. Observa además como no tiene que coincidir el nombre del método java con los nombres alias de los mapeos y
	 * con el nombre de la vista; todos pueden ser diferentes.
	 * 
	 * Existen otras dos notaciones que podrían minimizar este código de cabecera como son @PostMapping y @GetMapping. Por ejemplo, en este caso como alternativa
	 * se podría haber utilizado @GetMapping(value = "/ejemplo1")*/
	@RequestMapping(value={"/ejemplo1"}, method = RequestMethod.GET)
	public String ejem1() {
		return "example1";  
	}
	
	
	/* Este ejemplo es similar al anterior con la única diferencia de que desde donde se invoca a esta controladora se están enviando parámetros por GET. En este caso
	 * la controladora no los recoge pero si observas su vista delegeada example2.jsp, esta última, utiliza la notación Expression language (EL) para renderizar la vista mostrando los datos.*/
	@RequestMapping(value = {"/ejemplo2"}, method = RequestMethod.GET)
	public String ejem2() {
		return "example2"; 
	}
	
	/* Este ejemplo muestra como se puede compartir la misma ruta de mapeo (que en el ejemplo anterior) pero sobrecargando la captura del evento por petición POST. Al igual que en el
	 * anterior ejemplo, aunque se reciben parámetros, la controladora no realiza ningún tipo de manipulación.*/
	@RequestMapping(value = {"/ejemplo2"}, method = RequestMethod.POST)
	public String ejem3() {
		return "example3";
	}
	
	/*Este ejemplo, hace incapie en como se pueden diseñar rutas lógicas de mapeo de tantos niveles como deseés.*/
	@RequestMapping(value = {"/MasEjemplos/ejemplo4"}, method = RequestMethod.GET)
	public String ejem4() {
		return "example4";
	}
	
	/*En este ejemplo se ilustra como también se pueden organizar las vistas físicamente en diferentes niveles de carpetas.*/
	@RequestMapping(value = {"/ejemplo5"}, method = RequestMethod.GET)
	public String ejem5() {
		return "/OtrasVistas/example5";
	}
	
	/*En este ejemplo se hace uso de los @RequestParam para obtener los datos del formulario, la controladora lo trata (lógica de negocio) y carga en el objeto del
	 * modelo de Spring el resultado.*/
	@RequestMapping(value = {"/ejemplo6"}, method = RequestMethod.POST)
	public String ejem6(@RequestParam("numero") String num, Model objModel) {
		//Del modelo, se obtiene el parámetro recibido por post (se asume que es string y se convierte a entero)
		int aux = Integer.parseInt(num);
		//Se aplica la lógica especificada en la controladora. En este caso, se suma 5.
		aux = aux + 5;
		//Se asigna un nuevo atributo al modelo que alimentará la vista. Se pueden añadir tantos atributos como se deseén y pueden se objetos que representen modelos del negocio.
		objModel.addAttribute("Resultado", aux);
		//Se delega en una vista.
		return "/OtrasVistas/example6";
	}
	
	/*Se obtiene los datos del formulario con las notaciones @RequestParam, se crea un objeto del modelo del negocio y se carga en el objeto Model
	 * para nutrir la vista. Puede observar que el parámetro edad se ha declarado como opcional (required=false) es decir, si no se envía no causa excepción. Además
	 * se puede especificar valores por defecto en caso de no resivir un parámetro. No es obligatorio hacer uso de require y defaultValue de forma simultanea, aunque en este
	 * ejemplo si se hace.*/
	@RequestMapping(value = {"/ejemplo7"}, method = RequestMethod.POST)
	public String ejem7(@RequestParam("fnombre") String nombre, @RequestParam("fapellidos") String apellidos, @RequestParam(name="fedad", required=false, defaultValue = "-1") int edad, Model objModel) {
		
		//Se crea un objeto del modelo del negocio.
		Alumno objAlumno = new Alumno(nombre, apellidos, edad);
		
		//Se añade el objeto Alumno al Modelo de Spring. Puede entenderse el objeto de Model como el transporte entre la controladora y la vista.
		objModel.addAttribute("AlumnoData", objAlumno);
		
		//Se delega en la vista
		return "/OtrasVistas/example7"; 
	}
	
	/*En este ejemplo, se demuestra como se pueden recoger un número indeterminado de parámetros, bien sean motivados por formularios dinámicos o por un 
	 * número considerable de parámetros. Se recogen en una variable de tipo Map. Se podrían recoger en otro tipo de colección como Listas, etc.*/
	@RequestMapping(value = {"/ejemplo8"}, method = RequestMethod.POST)
	public String ejem8(@RequestParam Map<String,String> requestParams, Model objModel) {
		
		//Se crea el objeto alumno
		Alumno objAlumno = new Alumno(requestParams.get("nom"), requestParams.get("apell"), Integer.parseInt(requestParams.get("edad")));

		//El objeto del negocio (alumno) se carga como atributo del model de Spring.
		objModel.addAttribute("AlumnoData", objAlumno);

		//Se delega en la vista.
		return "/OtrasVistas/example8";
	}

}
