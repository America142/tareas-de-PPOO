package herencia;

public class Pnumeros extends Primitivos  {
	private byte bits;
	public byte getBits() {
		return bits;
	}
	public void setBits(byte bits) {
		this.bits = bits;
	}
	
	public short getCorto() {
		return corto;
	}
	public void setCorto(short corto) {
		this.corto = corto;
	}
	public int getEntero() {
		return entero;
	}
	public void setEntero(int entero) {
		this.entero = entero;
	}
	public long getLargo() {
		return largo;
	}
	public void setLargo(long largo) {
		this.largo = largo;
	}
	private short corto;
	private int entero;
	private long largo;
	
	public Pnumeros(){
		//setNombre("byte");
		//System.out.println("El nombre es:"+getNombre());
		
	}

}
