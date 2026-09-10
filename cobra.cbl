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
       77  I     PICTURE 9 VALUE 0.
       01  NUMEROS OCCURS 5 TIMES.
           02 NUMERO PIC 9(2).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           
            MOVE 10 TO NUMERO(1).
            MOVE 20 TO NUMERO(2).
            MOVE 30 TO NUMERO(3).
            MOVE 40 TO NUMERO(4).
            MOVE 50 TO NUMERO(5).
       BEGIN.
           DISPLAY "Ingresa un numero de indice del Array"
           DISPLAY "Entre 1 y 5"
           ACCEPT I.
            IF I > 0 AND < 6
            DISPLAY "el dato en la posicion " I " es " NUMERO(I)
            ELSE DISPLAY "El indice solicitado es erroneo: " I
                 DISPLAY "Debe ser entre 1 y 5"
                 GO TO BEGIN.
           STOP RUN.
       END PROGRAM COBRA.
      *Este programa esta hecho de forma manual
