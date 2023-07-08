package es.dsw.models;

public class Profesor {
	private String Nom, Apell;
	private int Edad;
	
	private boolean FlagError;
	private String msgError;
	

	public Profesor(String nom, String apell, int edad) {
		FlagError = false;
		msgError = "";
		
		this.Nom = nom;
		this.Apell = apell;
		this.Edad = edad;

		if ((this.Nom.trim() == "") ||
		    (this.Apell.trim() == "") ||
		    (this.Edad < 0)) {
			FlagError = true;
			msgError = "Error: Datos faltantes.";
		} 
			
	}
	
	public boolean isFlagError() {
		return FlagError;
	}

	public String getMsgError() {
		return msgError;
	}

	public String getNom() {
		return Nom;
	}

	public String getApell() {
		return Apell;
	}

	public int getEdad() {
		return Edad;
	}
	
	public String getIndicadorNomError() {

			if (this.Nom.trim() == "") {
				return "style=\"color: red;\"";
			} else return "style=\"color: black;\"";

	}
	
	public String getIndicadorApellError() {

			if (this.Apell.trim() == "") {
				return "style=\"color: red;\"";
			} else return "style=\"color: black;\"";

	}
	
	public String getIndicadorEdadError() {

			if (this.Edad < 0) {
				return "style=\"color: red;\"";
			} else return "style=\"color: black;\"";

	}

}
