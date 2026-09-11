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
           PERFORM 100-LOOP THRU 100-EXIT.

        100-LOOP.
            DISPLAY 'Iteracion1: ' CONTADOR.
            ADD 1 TO CONTADOR.
            DISPLAY 'Iteracion2: ' CONTADOR.
            SUBTRACT 1 FROM CONTADOR.
            DISPLAY 'Iteracion3: ' CONTADOR.
        100-EXIT.
            DISPLAY 'Finalizado'. 

           STOP RUN.
       END PROGRAM practica.