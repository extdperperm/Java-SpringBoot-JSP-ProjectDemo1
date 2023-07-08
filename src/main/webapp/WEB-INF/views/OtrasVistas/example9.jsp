<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring Proyect Demo 1 - Ejemplo 9</title>
<!-- En las vistas .jsp, se puede usar la siguiente directiva para construir las rutas a los recursos estáticos:
		 ${pageContext.request.contextPath} 
     
     En este proyecto se ha optado por indicarlas de forma estática, pero si cambia en las controladoras la ubicación lógica y relativas mapeadas, podrían producirse
     errores de acceso a los recursos (.js, .css) si no se actualizan manualmente.
-->
<link rel="stylesheet" href="../styles/index.css">
</head>
<body>
    <div class="cabecera">
        <div class="cab1"></div>
        <div class="cap2"></div>
    </div>
    <div class="cuerpo">
        <div class="panel2">
            <!--Ejemplo de notación en java de Expression language (EL) haciendo uso de $. Como se comprueba en este ejemplo, técnicamente no es obligatorio que la controladora
                deba tramitar los parámetros recibidos.
            -->
            
            <!-- A la hora de acceder al objeto del negocio bajo el parámetro de AlumnoData, fijarse en como se puede acceder escribiendo los métodos geters sin la palabra "get" y sin los paréntesis empezando en minuscula.
                 También se puede especificar el nombre completo del método get incluido los paréntesis (ej: Edad).
             -->
            <div class="item"><p><span>Resultado Ejemplo 9:</span> Ejecutado Correctamente.</p></div>
            <div class="item"><p><span>Ejemplo 10:</span> Formulario que envía por método POST varios datos del profesor a la ruta relativa <b>./ejemplo10</b> (controladora MasEjemplosController) y la controladora realiza una verificación tal que si algún dato es vacío se retorna a la vista actual informando del error.</p>
            				 <div><form name="ejemplo10" method="POST" action="./ejemplo10">
            						  <div><label ${DataProfesor.indicadorNomError}>Nombre: </label><input type="text" name="nom" value="${DataProfesor.nom}" placeholder="Ej: Miguel" /></div><!--
            					   --><div><label ${DataProfesor.indicadorApellError}>Apellidos: </label><input type="text" name="apell" value="${DataProfesor.apell}" placeholder="Ej: Rodriguez Pérez" /></div><!--
            					   --><div><label ${DataProfesor.indicadorEdadError}>Edad: </label><input type="number" name="edad" min="1" max="100" value="${DataProfesor.edad}" /></div><!--
            					   --> <br/><p style="color: red; text-align: center;">${DataProfesor.msgError}</p>
            					      <div><input type="submit" value="Enviar" /></div>
            					  </form>
            					 
                            </div>
            </div>
            <div class="item"><p style="text-align:center;"><a href="../">Volver</a></p></div>
        </div>
    </div>
    <div class="pie"><p><span>©</span> 2022 - Daniel Pérez Pérez</p></div>

</body>
</html>