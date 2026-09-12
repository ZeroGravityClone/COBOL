      ***********************************************
      * Author: 8a
      * Date: 2026-09-08
      * Purpose: Aprender COBOL desde CERO
      * Tectonics: cobc
      ***********************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. practica.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01  Opciones PIC X VALUE SPACES.
           88 Sumar VALUE "+".
           88 Restar VALUE "-".
           88 Multiplicar VALUE "*".
           88 Dividir VALUE "/".
           88 Salir VALUE "s".
       77  Numero1 PIC 999 VALUE ZEROS.
       77  Numero2 PIC 999 VALUE ZEROS.
       
       77  Resultado PIC S999999 VALUE ZEROS.

       PROCEDURE DIVISION.
      *----Menu de Usuario----* 
       AceptaDatos.
           DISPLAY "Elige una operacion.".
           DISPLAY "Sumar (+)".
           DISPLAY "Restar (-)".
           DISPLAY "Multiplicar (*)".
           DISPLAY "Dividir (/)".
           DISPLAY "5 - Salir (s)".
           ACCEPT Opciones.

           IF Sumar THEN
               PERFORM Suma
           ELSE
               IF Restar THEN
                   PERFORM Resta
               ELSE
                   IF Multiplicar THEN
                       PERFORM Multiplicacion
                   ELSE
                       IF Dividir THEN
                           PERFORM Dividiendo
                       ELSE
                           IF Salir
                               DISPLAY "Saliendo del programa..."
                               STOP RUN
                           ELSE
                               DISPLAY "Opcion invalida. Intentelo"
                               " de nuevo. "
                               PERFORM AceptaDatos
                        END-IF
                    END-iF
                END-IF
           END-IF.
      *----Funciones de la Calculadora.----*
       Suma.
           DISPLAY "Has elegido sumar".
           PERFORM SolicitaNumeros.
           ADD Numero1 TO Numero2 GIVING Resultado.
           DISPLAY "El resultado de la suma es: " Resultado "."
           PERFORM AceptaDatos.
       Resta.
           DISPLAY "Has elegido restar".
           PERFORM SolicitaNumeros.
           SUBTRACT Numero2 FROM Numero1 GIVING Resultado.
           DISPLAY "El resultado de la resta es: " Resultado "."
           PERFORM AceptaDatos.
       Multiplicacion.
           DISPLAY "Has elegido Multiplicar".
           PERFORM SolicitaNumeros.
           MULTIPLY Numero1 BY Numero2 GIVING Resultado.
           DISPLAY "El resultado de la multiplicacion es: " Resultado
           "."
           PERFORM AceptaDatos.
       Dividiendo.
           DISPLAY "Has elegido Dividir".
           PERFORM SolicitaNumeros.
           DIVIDE Numero1 BY Numero2 GIVING Resultado.
           DISPLAY "El resultado de la Division es: " Resultado
           "."
           PERFORM AceptaDatos.    
       
       SolicitaNumeros.
           DISPLAY "Por favor, introduzca el primer número.".
           ACCEPT Numero1.
           DISPLAY "Por favor, introduzca el segundo número.".
           ACCEPT Numero2.
           
       END PROGRAM practica.