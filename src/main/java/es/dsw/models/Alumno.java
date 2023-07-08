package es.dsw.models;

public class Alumno {

	private String Nom, Apell;
	private int Edad;
	
	public Alumno() {
		this.Nom = "";
		this.Apell = "";
		this.Edad = -1;
	}
	
	public Alumno(String nom, String apell, int edad) {
		this.Nom = nom;
		this.Apell = apell;
		this.Edad = edad;
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

	public void setNom(String nom) {
		Nom = nom;
	}

	public void setApell(String apell) {
		Apell = apell;
	}

	public void setEdad(int edad) {
		Edad = edad;
	}
	
}

