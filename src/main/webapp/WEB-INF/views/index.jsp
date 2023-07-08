<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring Boot Proyect Demo 1</title>
<!-- En las vistas .jsp, se puede usar la siguiente directiva para construir las rutas a los recursos estáticos:
		 ${pageContext.request.contextPath} 
     
     En este proyecto se ha optado por indicarlas de forma estática, pero si cambia en las controladoras la ubicación lógica y relativas mapeadas, podrían producirse
     errores de acceso a los recursos (.js, .css) si no se actualizan manualmente.
-->
<link rel="stylesheet" href="./styles/index.css">

</head>
<body>
    <div class="cabecera">
        <div class="cab1"></div>
        <div class="cap2"></div>
    </div>
    <div class="cuerpo">
        <div class="panel1">
            <div class="nota"><div class="notacab1"><p>Proyecto</p></div>
                              <div class="notabody"><p style="text-align: center;"><span>#Spring Proyect Demo 1</span></p>
                            </div>
            </div>
            <div class="nota"><div class="notacab1"><p>Objetivos</p></div>
                              <div class="notabody"><p class="objetivos">- <b>C</b>omprender la estructura y elementos de un proyecto web con el gestor de proyecto MAVEN.</p>
                                                    <p class="objetivos">- <b>C</b>onfiguración básica de un proyecto MVC Web con Spring Boot (Pom.xml, application.properties, main).</p>
                                                    <p class="objetivos">- <b>F</b>amiliarizarse con la arquitectura Modelo Vista Controlador de Spring.</p>
                                                    <p class="objetivos">- <b>S</b>er capaz de crear las controladoras (@Controller).</p>
                                                    <p class="objetivos">- <b>D</b>ominar la gestión de direcciones o urls (@RequestMapping).</p>
                                                    <p class="objetivos">- <b>P</b>lantear diversas formas de envío y recogida de parámetros con GET Y POST (@RequestParam).</p>
                                                    <p class="objetivos">- <b>C</b>omprender y hacer uso del Modelo en Spring (Model)</p>
                                                    <p class="objetivos">- <b>E</b>ntender y saber usar las notaciones en Expression language (EL) para renderizar los datos en las vistas .jsp</p>
                                                    <p class="objetivos">- <b>F</b>amiliarizarse en general con las Java Annotation de Spring.</p>
                            </div>
            </div>
            <div class="nota"><div class="notacab2"><p>Entorno de Desarrollo</p></div>
                              <div class="notabody"><p><span>Ide:</span> Eclipse, versión: 2023-03</p>
                                                    <p><span>Servidor:</span> Apache Tomcat, versión: 10</p>
                                                    <p><span>Jdk:</span> OpenJdk, versión: 17.1</p>
                            </div>
            </div>
            <div class="nota"><div class="notacab2"><p>Estandar de Desarrollo</p></div>
                              <div class="notabody"><p><span>Gestor de proyecto:</span> Maven, versión: 4</p>
                            </div>
            </div> 
            <div class="nota"><div class="notacab2"><p>Dependencias</p></div>
                              <div class="notabody"><p><span>Spring Boot Framework:</span> Spring, versión 3.1.0. Módulos: spring-boot-starter-web, spring-boot-starter-tomcat, tomcat-embed-jasper</p>
                            </div>
            </div>    
            <div class="nota"><div class="notacab2"><p>Documentación y Sitios de Interés</p></div>
                              <div class="notabody"><p><a href="https://mvnrepository.com/" target="_blank">Ir a</a> Maven Repository</p>
                                                    <p><a href="https://docs.spring.io/spring-framework/docs/current/reference/html/" target="_blank">Leer</a> Documentación de Spring Framework</p>
                                                    <p><a href="https://docs.spring.io/spring-boot/docs/current/reference/htmlsingle/"target="_blank">Leer</a> Documentación de Spring Boot</p>
                                                    <p><a href="https://docs.spring.io/spring-framework/docs/current/reference/html/web.html#mvc-view" target="_blank">Leer</a> Documentación sobre Spring Views I</p>
                                                    <p><a href="https://docs.spring.io/spring-framework/docs/3.2.x/spring-framework-reference/html/view.html" target="_blank">Leer</a> Documentación sobre Spring Views II</p>
                                                    <p><a href="https://www.javatpoint.com/spring-mvc-form-tag-library" target="_blank">Leer</a> Documentación Spring Mvc Tags</p>
                            </div>
            </div>         
        </div>
        <div class="panel2">
            <div class="item"><p><span>Ejemplo 1:</span> Enlace que al hacer clic realiza una petición por el método GET a la ruta relativa <b>/ejemplo1</b> (controladora MainController) que implementa el método java ejem1 y que delega en la vista example1. <a href="./ejemplo1">Haz clic aquí</a></p></div>
            <div class="item"><p><span>Ejemplo 2:</span> Enlace que al hacer clic realiza una petición por el método GET a la ruta relativa <b>/ejemplo2</b> (controladora MainController) con envío de parámetros. <a href="./ejemplo2?Ciclo=DAW&Grupo=3A&Turno=Noche">Haz clic aquí</a></p></div>
            <div class="item"><p><span>Ejemplo 3:</span> Formulario que envía por método POST a la misma ruta relativa que en el ejemplo anterior <b>ejemplo2</b> (controladora MainController) pero que recoge otro método de la controladora con la sobre carga del método POST.</p>
            				 <div><form name="ejemplo3" method="POST" action="./ejemplo2">
            						  <div><label>Ciclo: </label><input type="text" name="Ciclo" placeholder="Ej: Desarrollo de Aplicaciones Web"/></div><!--
            					   --><div><label>Grupo: </label><input type="text" name="Grupo" placeholder="Ej: 2A"/></div><!--
            					   --><div><label>Turno: </label><input type="text" name="Turno" placeholder="Ej: Mañana"/></div><!--
            					   --><div><input type="submit" value="Enviar" /></div>
            					  </form>
                            </div>
            </div>
            <div class="item"><p><span>Ejemplo 4:</span> Enlace que al hacer clic realiza una petición por el método GET a la ruta relativa <b>./MasEjemplos/ejemplo4</b> (controladora MainController). Puede comprobar como se pueden especificar rutas lógicas en los mapeos de cualquier nivel. Analice el código de la controladora. Es importante que tenga en cuenta que los mapeos relativos de las rutas que especifique, afecta a las rutas relativas de los recursos (.css, .js etc). <a href="./MasEjemplos/ejemplo4">Haz clic aquí</a></p></div>
            <div class="item"><p><span>Ejemplo 5:</span> Enlace que al hacer clic realiza una petición por el método GET a la ruta relativa <b>./ejemplo5</b> (controladora MainController). En este caso, debe analizar el código de la controladora, pues la vista relacionada físicamente se encuentra en un directorio que no es el raiz de las vistas. Es decir, las vistas se pueden organizar físicamentes en difernetes niveles de carpetas. <a href="./ejemplo5">Haz clic aquí</a></p></div>
            <div class="item"><p><span>Ejemplo 6:</span> Formulario que envía por método POST a la ruta relativa <b>./ejemplo6</b> (controladora MainController) un número que se recoge con anotaciones @RequestParam (Ver código de la controladora), se trata sumandole 5 y se carga en el Modelo de Spring un nuevo atributo para que alimente la vista que mostrará el resultado. Tenga en cuenta que da igual que el método de envío sea GET o POST, pues la forma de recoger los parámetros puede ser la misma.</p>
            				 <div><form name="ejemplo6" method="POST" action="./ejemplo6">
            						  <div><label>Número: </label><input type="number" name="numero" required/>+5</div><!--
            					   --><div><input type="submit" value="Enviar" /></div>
            					  </form>
                            </div>
            </div>
            <div class="item"><p><span>Ejemplo 7:</span> Formulario que envía por método POST varios datos del alumno a la ruta relativa <b>./ejemplo7</b> (controladora MainController) y se recoge con anotaciones @RequestParam (Ver código de la controladora), se crea un objeto Alumno (modelo de negocio) que a su vez se carga en el Modelo de Spring que alimentará la vista.</p>
            				 <div><form name="ejemplo7" method="POST" action="./ejemplo7">
            						  <div><label>Nombre: </label><input type="text" name="fnombre" placeholder="Ej: Miguel" required/></div><!--
            					   --><div><label>Apellidos: </label><input type="text" name="fapellidos" placeholder="Ej: Rodriguez Pérez" required/></div><!--
            					   --><div><label>Edad: </label><input type="number" name="fedad" min="1" max="100"/></div><!--
            					   --><div><input type="submit" value="Enviar" /></div>
            					  </form>
                            </div>
            </div>
            <div class="item"><p><span>Ejemplo 8:</span> Formulario que envía por método POST varios datos del alumno a la ruta relativa <b>./ejemplo8</b> (controladora MainController) y se recoge con un solo parámetro de tipo MAP con la anotación @RequestParam (Ver código de la controladora), se crea un objeto Alumno (modelo de negocio) que a su vez se carga en el Modelo de Spring que alimentará la vista. Este ejemplo muestra como se pueden recoger un número indeterminados de parámetros (múltiples parámetros) sin especificar por cada parámetro una @RequestParam.</p>
            				 <div><form name="ejemplo8" method="POST" action="./ejemplo8">
            						  <div><label>Nombre: </label><input type="text" name="nom" placeholder="Ej: Miguel" required/></div><!--
            					   --><div><label>Apellidos: </label><input type="text" name="apell" placeholder="Ej: Rodriguez Pérez" required/></div><!--
            					   --><div><label>Edad: </label><input type="number" name="edad" min="1" max="100" required/></div><!--
            					   --><div><input type="submit" value="Enviar" /></div>
            					  </form>
                            </div>
            </div>
            <div class="item"><p><span>Ejemplo 9:</span> Este ejemplo invoca a un método de una controladora que por defecto mapea las rutas bajo ./OtrosEjemplos/ para todos sus métodos. Esto puede ser interesante si se desea que para cada controladora se mapeén sus métodos en diferentes regiones o areas. En este caso, al hacer click en el enlace de este ejemplo se invoca a <b>./OtrosEjemplos/ejemplo9</b> (controladora MasEjemplosController) que mostrará un formulario con el ejemplo 10. <a href="./OtrosEjemplos/ejemplo9">Haz clic aquí</a></p></div>
        </div>
    </div>
    <div class="pie"><p><span>©</span> 2022 - Daniel Pérez Pérez</p></div>

</body>
</html>