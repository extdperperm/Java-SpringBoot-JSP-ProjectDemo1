package es.dsw.SpringBootProyectDemo1;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
//[5] - La javaannotations @ComponentScan le indica a spring que paquetes debe escanear. En este caso indicamos que escaneé
//todo lo que está bajo es.dsw
@ComponentScan(basePackages = "es.dsw")
public class SpringBootProyectDemo1Application {

	public static void main(String[] args) { 
		SpringApplication.run(SpringBootProyectDemo1Application.class, args);
	}

}

/*[6] - Ten en cuenta el fichero application.properties que cuelga bajo la ruta src/main/resources. En él se pueden configurar
 * muchas de las funcionalidades de spring boot, entre ellas, observa que se indica que tecnología se utilizará para renderizar
 * las vistas.
 */

