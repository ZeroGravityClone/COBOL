      ***********************************************
      * Author: 8a
      * Date: 2026-09-08
      * Purpose: Aprender COBOL desde CERO
      * Tectonics: cobc
      ***********************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. COBRA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  WS-CADENA PICTURE IS XXXXX.
       77  WS-CADENA-ALFAB PIC A(30).
       77  WS-CADENA-ALFAN PIC X(30).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
       PROGRAM-BEGIN.
           DISPLAY "Introduce cualquier cadena: ".
           ACCEPT WS-CADENA.
           DISPLAY "Cualquier cadena es: " WS-CADENA.
           DISPLAY "Longitud: "FUNCTION LENGTH(WS-CADENA).
           DISPLAY "MAYUSCULA: "FUNCTION UPPER-CASE(WS-CADENA).
           DISPLAY "MINUSCULA: "FUNCTION LOWER-CASE(WS-CADENA).
           DISPLAY "-----------------------------------------".

           DISPLAY "Introduce una cadena ALFABETICA".
           ACCEPT WS-CADENA-ALFAB.
           DISPLAY "La cedena ALFABETICA es: " WS-CADENA-ALFAB.
           DISPLAY "Longitud: "FUNCTION LENGTH(WS-CADENA-ALFAB).
           DISPLAY "MAYUSCULA: "FUNCTION UPPER-CASE(WS-CADENA-ALFAB).
           DISPLAY "MINUSCULA: "FUNCTION LOWER-CASE(WS-CADENA-ALFAB).
           DISPLAY "-----------------------------------------".

           DISPLAY "Introduce una cadena ALFANUMERICA".
           ACCEPT WS-CADENA-ALFAN.
           DISPLAY "La cedena NUMERICA es: " WS-CADENA-ALFAN.
           DISPLAY "Longitud: "FUNCTION LENGTH(WS-CADENA-ALFAN).
           DISPLAY "MAYUSCULA: "FUNCTION UPPER-CASE(WS-CADENA-ALFAN).
           DISPLAY "MINUSCULA: "FUNCTION LOWER-CASE(WS-CADENA-ALFAN).
           DISPLAY "-----------------------------------------".

       PROGRAM-DONE.
           PERFORM ES-ALFABETICA
           STOP RUN.

       ES-ALFABETICA.
            IF WS-CADENA-ALFAB IS ALPHABETIC THEN
            DISPLAY "CADENA ALFABETICA VERIFICADA ES: " WS-CADENA-ALFAB
                ELSE
            DISPLAY "ESTA CADENA NO ES ALFABETICA: " WS-CADENA-ALFAB
            END-IF.

       END PROGRAM COBRA.
      *Este programa esta hecho de forma manual
