      ***********************************************
      * Author: 8a
      * Date: 2026-09-08
      * Purpose: Aprender COBOL desde CERO
      * Tectonics: cobc
      ***********************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. OPERACIONES.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 VAR1        PIC S9(9).
       01 VAR2        PIC S9(9).
       01 RESUL       PIC S9(7)V99.
       01 RESUL-DISP  PIC -(7)9.99.
       01 VAR-DISP    PIC -(9)9.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Leer primera variable: ".
           ACCEPT VAR1.
           MOVE VAR1 TO VAR-DISP.
           DISPLAY "La primera es: " VAR-DISP.

           DISPLAY "Leer segunda variable: ".
           ACCEPT VAR2.
           MOVE VAR2 TO VAR-DISP.
           DISPLAY "La segunda es: " VAR-DISP.

           COMPUTE RESUL = VAR1 + VAR2.
           MOVE RESUL TO RESUL-DISP.
           DISPLAY "La suma es: " RESUL-DISP.

           COMPUTE RESUL = VAR1 - VAR2.
           MOVE RESUL TO RESUL-DISP.
           DISPLAY "La suma es: " RESUL-DISP.

           COMPUTE RESUL = VAR1 * VAR2.
           MOVE RESUL TO RESUL-DISP.
           DISPLAY "La suma es: " RESUL-DISP.

           COMPUTE RESUL = VAR1 / VAR2.
           MOVE RESUL TO RESUL-DISP.
           DISPLAY "La suma es: " RESUL-DISP.

           IF RESUL > 9 THEN
               DISPLAY "Resultado es mayor a 9"
           ELSE
               DISPLAY "Resultado es menor a 9"
           END-IF.

           STOP RUN.

      *CODIGO GENERADO POR IA, usa COMPUTE el cual consume recursos de mas