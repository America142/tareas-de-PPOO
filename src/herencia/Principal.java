package herencia;

public class Principal {
	static Pnumeros numericos = new Pnumeros();
	static Pnumeros bits = new Pnumeros();
	static Pnumeros corto = new Pnumeros();
	static Pnumeros entero = new Pnumeros();
	static Pnumeros largo = new Pnumeros();

	public static void main(String[] args) {
		bits.setNombre("Byte");
		bits.setLongitud("0-127");
		bits.setDescrpcion("Es el enter mas pequeño");
		bits.setPrimitivo("es");
		bits.setBits((byte) 10);

		 System.out.println(bits.getNombre() + " " + bits.getLongitud() + "");
		System.out.println(bits.getDescrpcion() + " " + bits.getPrimitivo() + ""  + bits.getBits()+"");
		
	}

}
