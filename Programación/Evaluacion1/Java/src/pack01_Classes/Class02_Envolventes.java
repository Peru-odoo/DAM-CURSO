package pack01_Classes;

import java.util.Scanner;

public class Class02_Envolventes {

    public static void main(String[] args) {
        
        // System.out.println(Long.SIZE);
        // System.out.println(Long.BYTES);
        // System.out.println(Long.MAX_VALUE);
        // System.out.println(Long.MIN_VALUE);

        //ejemplo 0 - Letras y numeros
        Scanner ent=new Scanner(System.in);
        String frase="";
        int count=0,letras=0,numeros=0;
        
        System.out.print("Introduce una cadena de caracteres: ");
        frase=ent.nextLine();

        do {
            if(Character.isDigit(frase.charAt(count))) {
                numeros++;
            } else if(Character.isLetter(frase.charAt(count))) {
                letras++;
            }
            count++;
        } while(count<frase.length());
        System.out.println("En la frase introducida hay "+letras+" letra/s y "+numeros+" numero/hhs");

    } //fin main

} //fin class