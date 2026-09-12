      ***********************************************
      * Author: 8a
      * Date: 2026-09-08
      * Purpose: Aprender COBOL desde CERO
      * Tectonics: cobc
      ***********************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. capicua.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  Tabla-1.
           05 NUMERO-1 PIC 9(1) occurs 5 TIMES value zeros.
       01  Tabla-2.
           05 NUMERO-2 PIC 9(1) occurs 5 TIMES value zeros.
       77  SALE pic x value space.
       77  I      pic 9 value 0.
       77  J      pic 9 value 6.

       PROCEDURE DIVISION.
       MAIN-ROUTINE.
           DISPLAY "El numero es capicua?"
           PERFORM INGRESA-NUMERO.
       INGRESA-NUMERO.
            DISPLAY "<<Ingresa un numero de hasta 5 cifras>>".
            ACCEPT Tabla-1.
            IF TABLA-1 NOT NUMERIC
                DISPLAY "ERROR en Numero"
                DISPLAY "<<Ingresa un numero de hasta 5 cifras>>"
                ACCEPT Tabla-1
                ELSE
                    PERFORM LLENA-TABLA 5 TIMES.
            PERFORM COMPARA-NUMEROS.
            PERFORM PGR-SALE.
       LLENA-TABLA.

            ADD 1 TO I.
            SUBTRACT 1 FROM J.
            MOVE NUMERO-1(I) TO NUMERO-2(J).

       COMPARA-NUMEROS.
               IF TABLA-1 EQUAL TABLA-2 THEN
                  DISPLAY "En numero " TABLA-1 "es capicua"
                  ELSE
                  DISPLAY "En numero" TABLA-1 "No es capicua".
       PGR-SALE.
            DISPLAY "Si quiere finalizar tipee S o si continua C".
            ACCEPT SALE.
            IF SALE EQUAL "S" THEN DISPLAY "FIN PRGRM" STOP RUN       
                ELSE
            IF SALE EQUAL "C" THEN
                MOVE 0 TO I MOVE 6 to J
                PERFORM INGRESA-NUMERO
                ELSE DISPLAY "Letra Invalida" PERFORM PGR-SALE.


           STOP RUN.
       END PROGRAM capicua.