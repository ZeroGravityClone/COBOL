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
       77  I    PIC 9.
       77  ENTRADA  PIC x(2).
       77  NUM  PIC 99.
       01  MI-ARRAY.
           05 MI-ELEMENTOS OCCURS 6 TIMES.
           10 ELEMENT PIC 99.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           PERFORM CARGAR-ELEMENTOS
           DISPLAY "Contenido de la tabla: "
           PERFORM DISPLAY-ELEMENTOS
             
           STOP RUN.

       CARGAR-ELEMENTOS.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 6
               MOVE SPACES TO ENTRADA
             PERFORM UNTIL ENTRADA IS NUMERIC
               DISPLAY "Ingrese el numero ", I, ": "
               ACCEPT ENTRADA
               IF ENTRADA IS NOT NUMERIC
                   DISPLAY "No se permiten letras"
               END-IF
             END-PERFORM
               MOVE ENTRADA TO NUM
               MOVE NUM TO ELEMENT(I)
           END-PERFORM.

       DISPLAY-ELEMENTOS.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 6
               DISPLAY "Elemento ", I, ": " ELEMENT(I)
           END-PERFORM.

       END PROGRAM practica.