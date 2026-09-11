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
       01  CONTADOR PIC 9(2) VALUE 1.

       PROCEDURE DIVISION.
           PERFORM UNTIL CONTADOR > 10
            DISPLAY 'Iteracion: ' CONTADOR
           ADD +1 TO CONTADOR
           END-PERFORM.

           DISPLAY 'Finalizado'.

           STOP RUN.
       END PROGRAM practica.