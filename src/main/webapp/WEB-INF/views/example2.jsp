<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring Proyect Demo 1 - Ejemplo 2</title>
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
        <div class="panel2">
            <!--Ejemplo de notación en java de Expression language (EL) haciendo uso de $. Como se comprueba en este ejemplo, técnicamente no es obligatorio que la controladora
                deba tramitar los parámetros recibidos.
            -->
            <div class="item"><p><span>Resultado Ejemplo 2:</span> Se ha recibido por parámetro por método GET; Ciclo = ${param.Ciclo}, Grupo = ${param.Grupo} y Turno = ${param.Turno}. Ejecutado Correctamente.</p></div>
            <div class="item"><p style="text-align:center;"><a href="./">Volver</a></p></div>
        </div>
    </div>
    <div class="pie"><p><span>©</span> 2022 - Daniel Pérez Pérez</p></div>

</body>
</html>