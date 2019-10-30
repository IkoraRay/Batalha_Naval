TITLE NAVAL
.MODEL SMALL
.STACK 100h
.DATA
P1 db "Jogador 1:$"
P2 db "Jogador 2:$"
WELCOME db "Boas Vindas Reiyks, eu os invoquei nesse mundo para testa-los como estrategistas.$"
WELCOME2 db "Apos seculos de confrontos, Asahi nao tem recursos mais para sustentar essa guerra.$"
WELCOME3 db "A funcao de voces e acabar com isso, agora! O melhor vence, e toma meu lugar como divindade.$"
INITRULES db "Agora vamos as regras:$"
RULES1 db "1. Suas forcas ja estao reduzidas, mas seu General vai ajuda-lo.$"
RULES2 db "2. Os estrategistas agirao de forma intercalada, cuidado com espioes!$"
RULES3 db "3. O Desafio acaba quando a frota de um dos lados for destruido.$"
TRANS db "Quando ambos estiverem prontos, pressione Spacebar.$"
GEN1MSG db "Ola Reiyk! Meu nome e Zavala, e serei seu General.$"
GEN1MSG2 db "Lembre-se, nos estamos em guerra, e a pessoa que esta no seu lado e seu inimigo, cuidado!$"
GEN1MSG3 db "Antes do confronto final se iniciar, precisamos posicionar nossos navios.$"
GEN1MSG4 db "A Frota sera posicionada em quadrantes divididos em 6 linhas e  6colunas.$"
GEN1MSG5 db "Digite no formato (LETRANUMERO) para dar a ordem, senhor.$"
GEN1MSG6 db "Posicao invalida, senhor.$"
GEN2MSG db "Hunpf...Eu, Budbung, Servi a vida inteira para ter que obedecer uma criança...$"
GEN2MSG2 db "Deixa eu ser claro com voce, se meus homens morrerem por sua causa, eu terei prazer em te matar.$"
GEN2MSG3 db "O inimigo esta do seu lado, entra presta a atencao seu #$%#&%#!$"
GEN2MSG4 db "Nossos navios estao posicionados em 6 linhas e 6 colunas.$"
GEN2MSG5 db "Digite no formato (LETRANUMERO) para dar a ordem. Agora, se vira Espertao.$"
GEN2MSG6 db "Ta querendo colocar navio na casa da mae?$"
ORDEM db "Ordem:$"
CP1 db 36 DUP(0)
CP2 db 36 DUP(0)
POSICAO DB ?
SETCONT1 db 0
.CODE
MOV AX, @DATA
MOV DS,AX

JMP FIMPROC
PRINT PROC
MOV AH,9
INT 21H
RET
PRINT ENDP

LIMPA_TELA PROC
	PUSH CX
	MOV CX,30
	INICIO_LIMPA_TELA:
	CALL PULA
	LOOP INICIO_LIMPA_TELA
    CALL PULA
	POP CX
	RET
LIMPA_TELA ENDP

PULA PROC
	MOV AH,2
	MOV DL,0DH
	INT 21H
	MOV DL,0AH
	INT 21H
RET
PULA ENDP

CONFSPACE PROC
INISPACE:
MOV AH,1
INT 21H
CMP AL,40
JNE INISPACE
RET
CONFSPACE ENDP
IMP PROC
CALL PRINT
CALL PULA
RET 
IMP ENDP

CONFLINHA1 PROC
CONFLINHAINI:
MOV AH,1
INT 21H
CMP AL,64
JA TESTE1
LEA DX,GEN1MSG6
CALL IMP
LEA DX,ORDEM
CALL PRINT
JMP CONFLINHAINI
TESTE1:
CMP AL,70
JB CONFLINHAFIM
LEA DX,GEN1MSG6
CALL IMP
LEA DX,ORDEM
CALL PRINT
JMP CONFLINHAINI
CONFLINHAFIM:
RET
CONFLINHA1 ENDP

CONFCOLUNA1 PROC
CONFCOLUNAINI:
MOV AH,1
INT 21H
CMP AL,48
JA TESTE1A
LEA DX,GEN1MSG6
CALL IMP
LEA DX,ORDEM
CALL PRINT
JMP CONFCOLUNAINI
TESTE1A:
CMP AL,57
JB CONFCOLUNAFIM
LEA DX,GEN1MSG6
CALL IMP
LEA DX,ORDEM
CALL PRINT
JMP CONFCOLUNAINI
CONFCOLUNAFIM:
RET
CONFCOLUNA ENDP

GETORDEM1 PROC
LEA DX,ORDEM
CALL PRINT
CALL CONFLINHA1
SUB AL,65
MOV BX,6
MUL BX
MOV POSICAO,AL
CALL CONFCOLUNA
ADD POSICAO,AL
SUB POSICAO,1
RET
GETORDEM1 ENDP

SETNAVIO1 PROC
SETNAVIO1INI:
XOR BX,BX
MOV BL,POSICAO
CMP CP1[BX],1
JNE NAVOK
LEA DX,GEN1MSG6
GETORDEM1
JMP SETNAVIO1INI
NAVOK:
MOV CP1[BX],1
RET
SETNAVIO1 ENDP

FIMPROC:
;INTRODUÇÃO
;CALL LIMPA_TELA
LEA DX,WELCOME
CALL IMP
LEA DX,WELCOME2
CALL IMP
LEA DX,WELCOME3
CALL IMP
LEA DX,INITRULES
CALL IMP
LEA DX,RULES1
CALL IMP
LEA DX,RULES2
CALL IMP
LEA DX,RULES3
CALL IMP
LEA DX,TRANS
CALL IMP
CALL CONFSPACE
;MONTAGEM JOGADOR 1
;CALL LIMPA_TELA
LEA DX,P1
CALL IMP
LEA DX,GEN1MSG
CALL IMP
LEA DX,GEN1MSG2
CALL IMP
LEA DX,GEN1MSG3
CALL IMP
LEA DX,GEN1MSG4
CALL IMP
LEA DX,GEN1MSG5
CALL IMP
LOOPSET1:
CALL GETORDEM1
CALL SETNAVIO1
INC SETCONT1
CMP SETCONT1,5
JB LOOPSET1

LEA DX,P2
CALL IMP
LEA DX,GEN2MSG
CALL IMP
LEA DX,GEN2MSG2
CALL IMP
LEA DX,GEN2MSG3
CALL IMP
LEA DX,GEN2MSG4
CALL IMP
LEA DX,GEN2MSG5
CALL IMP


FIM:
MOV AH,4CH
INT 21H
END