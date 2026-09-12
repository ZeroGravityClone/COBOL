      ***********************************************
      * Author: 8a
      * Date: 2026-09-08
      * Purpose: Aprender COBOL desde CERO
      * Tectonics: cobc
      ***********************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRUGRAM.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  N    PIC 9.
       77  I    PIC 9.
       77  TEMP PIC 99.
       01  MI-ARRAY.
       05  MI-ELEMENTOS OCCURS 5 TIMES.
            10 ELEMENT PIC 9(2).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
       MAIN-LOGIC.
           MOVE 1 TO ELEMENT(1)
           MOVE 2 TO ELEMENT(2)
           MOVE 3 TO ELEMENT(3)
           MOVE 4 TO ELEMENT(4)
           MOVE 5 TO ELEMENT(5)

           DISPLAY "Array antes de ordenado: "
           PERFORM DISPLAY-ELEMENTOS
           PERFORM SORT-ARRAY

           DISPLAY "Array despues de ordenado: "
           PERFORM DISPLAY-ELEMENTOS
           STOP RUN.

       SORT-ARRAY.
      *     COMPUTE N = 5 AI
            MOVE 5 TO N.
           PERFORM UNTIL N = 1
            MOVE 1 TO I
             PERFORM UNTIL I >= N
               IF ELEMENT(I) < ELEMENT(I + 1)
                   MOVE ELEMENT(I) TO TEMP
                   MOVE ELEMENT(I + 1) TO ELEMENT(I)
                   MOVE TEMP TO ELEMENT(I + 1)
               END-IF
               ADD 1 TO I
            END-PERFORM
            SUBTRACT 1 FROM N
           END-PERFORM.

       DISPLAY-ELEMENTOS.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
               DISPLAY "Element" I ":" ELEMENT(I)
           END-PERFORM.
       END PROGRAM PRUGRAM.
      *Este programa esta hecho de forma manual
