----------------------------------------------------------------------------------------------------------------------
                                             SpringBootProyectDemo1                                                  
                                                                                                                     
                                          Autor: Daniel Pérez Pérez                                                  
                                             Fecha: 14/06/2023                                                       
----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------
DESCRIPCIÓN
----------------------------------------------------------------------------------------------------------------------
Ejemplo de creación de un proyecto web con maven en el contexto de Spring Boot. Ejemplo de uso de controladoras, mapeos de
rutas, modelo de spring, etc.

----------------------------------------------------------------------------------------------------------------------
ESPECIFICACIÓN TÉCNICA DE DESARROLLO UTILIZADO
----------------------------------------------------------------------------------------------------------------------
Entorno de Desarrollo: Eclipse, versión: 2023-03
Servidor: Apache Tomcat, versión: 9
Jdk: OpenJdk, versión: 17.1
Gestor de proyecto: Maven, versión: 4.0

----------------------------------------------------------------------------------------------------------------------
DEPENDENCIAS
----------------------------------------------------------------------------------------------------------------------
Spring Boot Framework: versión 2.7.12  
       - spring-boot-starter-web
       - spring-boot-starter-tomcat
       - spring-boot-starter-test
       - tomcat-embed-jasper
              
----------------------------------------------------------------------------------------------------------------------
RECOMENDACIÓN PARA ABRIR EL PROYECTO EN ECLIPSE
----------------------------------------------------------------------------------------------------------------------
1º. Copie el directorio con el código en el directorio de su espacio de trabajo de eclipse.
2º. Desde eclipse, importe el proyecto haciendo click en File -> Open Projects from File System 
3º. En Import source, haciendo click en el botón "Directory..." seleccione la carpeta que contiene el proyecto.
4º. Haga click en Finish
5º. Se recomienda realizar un Maven Update (Click derecho sobre el proyecto Maven -> Update Project...)
6º. Recompilar (salvo que tenga activado compilación automática).
7º. Ejecutar, por ejemplo haciendo click derecho sobre el proyecto -> Run As -> Java Application

----------------------------------------------------------------------------------------------------------------------
RECOMENDACIÓN PARA LA LECTURA Y ANÁLISIS DEL PROYECTO
----------------------------------------------------------------------------------------------------------------------

1º pom.xml (maven)
2º es.dsw.SpringBootProyectDemo1
3º src/main/resources/application.properties
4º es.dsw.controllers
