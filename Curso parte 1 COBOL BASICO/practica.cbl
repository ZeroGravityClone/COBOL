      ***********************************************
      * Author: 8a
      * Date: 2026-09-08
      * Purpose: Aprender COBOL desde CERO
      * Tectonics: cobc
      ***********************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. practica.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  OPERACION PIC X(1) value SPACES.
       01  VARIABLE-ALFNUM PIC X(10) VALUE 'ASD5678Hg0'.
       01  VARIABLE-ALFABE PIC A(10) VALUE 'AvBnjIopwe'.
       01  VARIABLE-NUM PIC 9(5)V9(2) VALUE 12345,67.
       01  VARIABLE-SNUM PIC S9(5)V9(2) VALUE 12345,67.
      *COMP NUMERICA HEXADECIMAL
       01  NUMERICA-COMP PIC 9(5)V9(2) COMP VALUE 12345,67.
      *COMP-3 NUMERICA COMPRIMIDA
       01  NUMERICA-COMP3 PIC S9(5)V9(2) COMP-3 VALUE 12345,67.
      *VARIABLES DE EDICION
       01  NUMERICA-EDI PIC Z.ZZZ.ZZ9,99- VALUE -12345,67.
       01  VARIABLE-EDI PIC -.---.--9,99 VALUE -12345,67.
       01  FECHA.
      * UN subnivel no puede ser mayor que 49
           05 DIA PIC 9(2) VALUE 01.
           05 FILLER PIC X VALUE '/'.
           05 MES PIC 9(2) VALUE 06.
           05 FILLER PIC X VALUE '/'.
           05 ANIO PIC 9(4) VALUE 2023.
      * UN subnivel no puede ser mayor que 49
       01  LINEA-IMPRE.
           05 NOMBRE PIC X(10) VALUE "RAUL".
           05 FILLER PIC X(5) VALUE SPACES.
           05 APELLIDO1 PIC X(10) VALUE "GONZALEZ".
           05 FILLER PIC X(5) VALUE SPACES.
           05 APELLIDO2 PIC X(10) VALUE "GARCIA".
      * 
       01  CAMPO1 PIC X(3).
       01  CAMPO2 REDEFINES CAMPO1 PIC 9(3).
      *
       01  RESPUESTA    PIC XX.
       01  MI-ARRAY.
           05 MI-ELEMENTOS OCCURS 5 TIMES.
            10 ELEMENT PIC 9(2).

       PROCEDURE DIVISION.
       INGRESA.
           DISPLAY "<------------------------>"
           DISPLAY "Ingresa Grupo de variables"
           DISPLAY "A = Alfabeticos y Alfanumerico"
           DISPLAY "A = Numericos"
           DISPLAY "E = Edicion"
           DISPLAY "S = Finalizar"
           DISPLAY "<------------------------>"
           ACCEPT OPERACION.
           PERFORM DECIDE.
       DECIDE.
           EVALUATE OPERACION
           WHEN 'A'
                     DISPLAY "ALFANUMERICA X(10) ---> " VARIABLE-ALFNUM
                     DISPLAY "ALFABETICA A(10) ---> " VARIABLE-ALFABE
                     PERFORM INGRESA
           WHEN 'N'
                     DISPLAY "NUMERICA 9(5)V9(2) ---> " VARIABLE-NUM
                     DISPLAY "NUMERICA S9(5)V9(2) ---> " VARIABLE-SNUM
                     PERFORM INGRESA
           
              DISPLAY "NUMERICA-EDI 9(5)V9(2) COMP ---> " NUMERICA-COMP
              DISPLAY "NUMERICA S9(5)V9(2) COMP-3 ---> " NUMERICA-COMP3
              PERFORM INGRESA
           
           WHEN 'E'
                DISPLAY "NUMERICA-EDI ---> " NUMERICA-EDI
                DISPLAY "VARIABLE-EDI -. ---. --9,99 ---> " VARIABLE-EDI
                DISPLAY "FECHA con FILLER ---> " FECHA
                DISPLAY "LINEA-IMPRE1 ----> " LINEA-IMPRE
                DISPLAY "LINEA-IMPRE2 ----> " LINEA-IMPRE
                DISPLAY "LINEA-IMPRE3 ----> " LINEA-IMPRE
                PERFORM INGRESA

           WHEN "S" DISPLAY "finaliza" STOP RUN
           WHEN OTHER
                     DISPLAY "Grupo Invalido"
                     PERFORM INGRESA
           END-EVALUATE
            
           STOP RUN.
       END PROGRAM practica.