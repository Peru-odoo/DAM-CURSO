package unidad6.clases.clase01_MiZoo;

public class Principal {

    public static void main(String[] args) {
        Leon jose = new Leon("Leon africano", "grande");
        Gallina gallinaG = new Gallina("Gallina de corral", "chiquito");
        jose.sonido();
        gallinaG.sonido();
    }

}
