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
         01 var1   PICTURE 9(4).
         01 var2   PIC 9(4).
         01 resul  PIC 9(6).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Ingrese Variable".
            ACCEPT var1.
             DISPLAY var1.
            DISPLAY "Ingrese Variable".
            ACCEPT var2.
             DISPLAY var2.
             ADD var1, var2, GIVING resul.
             DISPLAY "El resultado de la suma es: ", resul.
           STOP RUN.
       END PROGRAM practica.