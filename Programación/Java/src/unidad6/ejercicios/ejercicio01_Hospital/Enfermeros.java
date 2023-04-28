package unidad6.ejercicios.ejercicio01_Hospital;

public class Enfermeros extends Empleados {

    private int numeroPacientes;

    public Enfermeros() {
        super();
        this.numeroPacientes = 0;
    }

    public Enfermeros(String nombre, String apellidos, int telefono, String dni, String especialidad, float sueldo, int pacientes) {
        super(nombre, apellidos, telefono, dni, especialidad, sueldo);
        this.numeroPacientes = pacientes;
    }

    public int getNumeroPacientes() {
        return numeroPacientes;
    }

    public void setNumeroPacientes(int numeroPacientes) {
        this.numeroPacientes = numeroPacientes;
    }

    public String toString() {
        return "Enfermeros ["+super.toString()+", numeroPacientes=" + numeroPacientes + "]";
    }

}
