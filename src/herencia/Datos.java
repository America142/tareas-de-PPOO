package herencia;

public abstract class Datos {
	String nombre;
	private String longitud;
	private String descrpcion;

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getLongitud() {
		return longitud;
	}

	public void setLongitud(String longitud) {
		this.longitud = longitud;
	}

	public String getDescrpcion() {
		return descrpcion;
	}

	public void setDescrpcion(String descrpcion) {
		this.descrpcion = descrpcion;
	}

}
