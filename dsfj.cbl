      ***********************************************
      * Author: 8a
      * Date: 2026-09-08
      * Purpose: Aprender COBOL desde CERO
      * Tectonics: cobc
      ***********************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. OPERACIONES.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
         01 var1 PICTURE 9(4).
         01 var2 PIC 9(4).
         01 resul PIC 9(6).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "ingrese variable 1: ".
           ACCEPT var1.
           DISPLAY "La variable 1 es: ", var1
      *
           DISPLAY "ingrese variable 2: ".
           ACCEPT var2.
           DISPLAY "La variable 2 es: ", var2
      *
           ADD var1, var2 GIVING resul.
           DISPLAY "El resultado de la suma es: ", resul.
      
           SUBTRACT var1 FROM var2 GIVING resul.
           DISPLAY "El resultado de la resta es: ", resul.

           MULTIPLY var1 BY var2 GIVING resul.
           DISPLAY "El resultado de la resta es: ", resul.

           DIVIDE var1 BY var2 GIVING resul.
           DISPLAY "El resultado de la resta es: ", resul.

           COMPUTE resul = (var1 * var2) / var2.
           DISPLAY "El resultado de todo es: ", resul.
            STOP RUN.
       END PROGRAM OPERACIONES.
