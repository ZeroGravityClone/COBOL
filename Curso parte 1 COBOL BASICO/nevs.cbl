      ***********************************************
      * Author: 8a
      * Date: 2026-09-08
      * Purpose: Aprender COBOL desde CERO
      * Tectonics: cobc
      ***********************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. OPERADORES-clase-6.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  A      PIC 9(2) value 0.
       77  B      PIC 9(2) value 0.
       77  C      PIC 9(2) value 0.
       77  RESTO  PIC 9(2) value 0.
       77  COCIENTE PIC 9(2) value 0.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Ingrese un numero"
            ACCEPT A.
            DISPLAY "Ingrese un 2do numero"
            ACCEPT B.
            DISPLAY "Ingrese un 3er numero"
            ACCEPT C.
            DISPLAY " ".
            DISPLAY "A= "  A "B= "  B " C= " C.

           IF (A = B AND B = C)
               DISPLAY "EN (A = B AND B = C) A, B y C son iguales"
           ELSE
               DISPLAY "EN (A = B AND B = C) A, B y C no son iguales"
           END-IF.

           IF (A > B AND B >= C)
               DISPLAY "EN (A > B AND B >= C) A Es el numero mayor"
           ELSE
               DISPLAY "EN (A > B AND B >= C) A no es mayor"
           END-IF.

           IF (A < B AND C < B)
               DISPLAY "EN (A < B AND C < B) A Es el numero menor"
           ELSE
               DISPLAY "EN (A < B AND C < B) A no es menor"
           END-IF.

           IF (A < B OR B < C) AND NOT (A = B)
               DISPLAY "  C es mayor"
           ELSE
               DISPLAY "  C No es mayor"
           END-IF.
           STOP RUN.
       END PROGRAM OPERADORES-clase-6.
    
           