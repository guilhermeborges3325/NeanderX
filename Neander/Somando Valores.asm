;---------------------------------------------------
; Programa: Somando Valores Armazenados
; Autor:Guilherme Borges
; Data:18-09-2025
;---------------------------------------------------

X       EQU 128            ; variável X
Y       EQU 129            ; variável Y
Z       EQU 130            ; variável Z

        ORG 0          c    ; início do programa

; ===== Loop 1: espera e lê o primeiro valor =====
LOOP1:
        IN   01            ; espera pelo teclado
        ADD  ESPERA        ; "força" o JZ funcionar
        JZ   LOOP1         ; fica no loop até ter entrada
        IN   00            ; lê o primeiro valor
        STA  X             ; guarda em X
        OUT  00            ; mostra no visoral

; ===== Loop 2: espera e lê o segundo valor =====
LOOP2:
        IN   01
        ADD  ESPERA
        JZ   LOOP2
        IN   00            ; lê o segundo valor
        STA  Y             ; guarda em Y
        OUT  00

; ===== Soma X + Y =====
        LDA  X             ; AC ← X
        ADD  Y             ; AC ← AC + Y
        STA  Z             ; Z ← resultado

; ===== Loop 3: espera e mostra o resultado =====
LOOP3:
        IN   01
        ADD  ESPERA
        JZ   LOOP3
        LDA  Z             ; AC ← resultado
        OUT  00            ; mostra no visor
        HLT

; ===== Constante usada para espera =====
ESPERA: DB 0

        END LOOP1
