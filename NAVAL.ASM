;Luís Marcelo Stein d'Avila RA-	18125955
;Beatriz Meloni Meneghetti RA-18079053
TITLE NAVAL
.MODEL SMALL
.STACK 100h
.DATA
;Personagens
P1 db "Zavala:$"
P2 db "Budbung:$"
P3 db "Thephbutr:$"

;Introducao
WELCOME db "Boas Vindas Reiyks, eu os invoquei nesse mundo para testa-los como estrategistas."
		 db 13,10, "Apos seculos de confrontos, Asahi nao tem recursos mais para sustentar essa guerra."
		 db 13,10,"A funcao de voces e acabar com isso, agora! O melhor vence, e toma meu lugar como divindade.$"
INITRULES db "Agora vamos as regras:$"
RULES1  db "1. Suas forcas ja estao reduzidas, mas seu General vai ajuda-lo."
	    db 13,10, "2. Os estrategistas agirao de forma intercalada, cuidado com espioes!"
		db 13,10,"3. O Desafio acaba quando a frota de um dos lados for destruido.$"

;Transições
TRANS db "Quando ambos estiverem prontos, pressionem qualquer tecla para seguirmos.$"
TRANS2 db "Muito Bem, pelo visto conheceram seus generais, agora colocarei voces no confronto, Que venca o melhor!$"
TRANS22 db "Pressionem qualquer tecla para seguirmos.$"

;Falas do General 1
GEN1MSG db "Ola Reiyk! Meu nome e Zavala dos Mongtriis, e serei seu General.$"
GEN1MSG2 db "Lembre-se, nos estamos em guerra, e a pessoa que esta no seu lado e seu inimigo, cuidado!$"
GEN1MSG3 db "Antes do confronto final se iniciar, precisamos posicionar nossos navios.$"
GEN1MSG4 db "A Frota sera posicionada em quadrantes divididos em 6 linhas e  6colunas.$"
GEN1MSG5 db "Digite no formato (LETRANUMERO) para dar a ordem, senhor.$"
GEN1MSG6 db "Posicao invalida, senhor.$"
GEN1MSG7 db "Ja posicionou neste quadrante senhor.$"
GEN1MSG8 db "Um tiro certeiro!$"
GEN1MSG9 DB "Nao foi dessa vez senhor.$"
GEN1MSG10 db "Navio ja afundado senhor.$"

;Falas do General 2
GEN2MSG db "Hunpf...Eu, BudBung dos Krotuvackz, Servi a vida inteira para ter que obedecer uma crianca...$"
GEN2MSG2 db "Deixa eu ser claro com voce, se meus homens morrerem por sua causa, eu terei prazer em te matar.$"
GEN2MSG3 db "O inimigo esta do seu lado, entra presta a atencao seu #$%#&%#!$"
GEN2MSG4 db "Nossos navios estao posicionados em 6 linhas e 6 colunas.$"
GEN2MSG5 db "Digite no formato (LETRANUMERO) para dar a ordem. Agora, se vira Espertao.$"
GEN2MSG6 db "Esta fora do campo seu inutil!$"
GEN2MSG7 db "Vai empilhar a minha frota?!$"
GEN2MSG8 db "Derrubou o filho da @#&%!!!$"
GEN2MSG9 db "Mira direito caolho!$"
GEN2MSG10 db "Esse dai ja foi pro inferno!$"

;Frases de telas
ORDEM db " Qual a sua ordem:$"
VITORIA1 db "Parabens Reiyk 1, voce venceu e se tornou a nova divindade de Asahi! Cuide dos moradores desse mundo como se fossem seus filhos.$"
VITORIA2 db "Parabens Reiyk 2, voce venceu e se tornou a nova divindade de Asahi! Cuide dos moradores desse mundo como se fossem seus filhos.$"
MATRIZ1 db "Sua Frota:$"
MATRIZ2 db "Frota Inimiga:$"
LEGENDA1 db "1-Navio posicionado$"
LEGENDA2 db "2-Navio afundado$"
LEGENDA3 db "3-Erro$"
LEGENDA4 db "0-Desconhecido$"
COLUNAS db "   1  2  3  4  5  6$"

;Historia jogador 1
HISATK11 db "17 transicao de Xwd de 187."
         db	13,10,"Os Mongtriis se preparavam para transportar seu lider para o Quartel General no meio da parte escura da transicao de Xwd, quando os satelites naturais ficaram dificeis de se enxergar, uma chuva de bombas tomou os ceus, a base foi destruida e com isso, a"
		 db "maior guerra que Asahi vivenciou foi iniciada.$"
HISATK12 db "49 transicao de Xwd de 347."
		 db 13,10,"Apos ter sua capital invadida pelos Krotuvackz, os Mongtriis armados com canhoes quimicos e tropas blindadas, avancaram em direcao aos postos medicos do inimigo, matando centenas de milhares de feridos e doentes, com a perda da unidade medica, os Krotuva"
		 db "ckz foram obrigados a recuar e recuperar suas forcas em seu proprio territorio.$"
HISATK13 db "2 transicao de Xwd de 593."
		 db 13,10,"Zavala foi nomeado general das forcas de Mongtriis, e sua primeira ordem foi um recuo dos postos avancados que controlavam parte dos transportes de minerios e alimentos dos Krotuvackz, para dias depois bombardear o local que estava sendo re-ocupado pelos"
		 db " Nativos, tal ato fez com que Kratuvia reduzisse seu poderio militar para conseguir re-construir as vias do leste do pais.$"
HISATK14 db "87 transicao de Xwd de 1234."
		 db 13,10,"Apos um longo hiato nos confrontos, um novo lider politico de Mongtriis, chamado Etwreok, ameaca Kratuvia em uma carta aberta para todos os lideres de Asahi,tal ato foi seguido, na noite de 88tXwd, de um bombardeio a base marinha dos Krotuvackz, reduzind"
		 db "o sua frota pela metade e assassinando milhoes de soldados que repousavam no local.$"
HISATK15 db "34 transicao de Xwd de 1379."
		 db 13,10,"As forcas de Mangtreeli eliminam completamente a frota de Kratuvia, invadindo a capital e assassinando Mooaygedof, lider dos Krotuvackz. BudBung eh encontrado morto com a propria espada fincada no estomago, as cinzas de outro ser humanoide desconhecido e"
		 db "h encontrada em frente ao mapa oceanico. Zavala e os Mongtriis saem vitoriosos e juram reestabelecer a paz e re-construir Asahi.$"

;Historia jogador 2
HISATK21 db "56 transicao de Xwd de 213."
		 db 13,10, "Com uma invasão ao castelo real, o grupo de elite assassina dos Krotuvackz assassina a Rainha de Mangtreeli e escapa sem deixar vestigios, deixando o exercito dos Mongtriis em estado de Teuxn Phay e com isso, a maior guerra que Asahi vivenciou foi inici"
		 db "ada.$"
HISATK22 db "39 transicao de Xwd de 355."
		 db 13,10, "No primeiro confronto direto entre os exercitos, usando as taticas antigas de guerrilha, os Krotuvackz cercaram as tropas Mongtriis e massacaram 30% do contigente militar do inimigo, devolvendo a perda causada anos atras , igualando novamente a guerra e"
		 db " iniciando uma recessao por um longo periodo.$"
HISATK23 db "77 transicao de Xwd de 589."
		 db 13,10, "Com a nomeacao de BudBung para comandar as tropas de Krotuvackz, Kratuvia se tornou uma verdadeira tirana, se sobrepondo aos seus vizinhos e utilizando do território deles para aumentar seu exercito. Os civis que se mostravam apoiadores do Mongtriis for"
		 db "am executados em praca publica e os que aceitaram a soberania, foram obrigados a trabalhar nas minas e fazendas de Kratuvia.$"
HISATK24 db "49 transicao de Xwd de 1150."
		 db 13,10, "O Conselho de Kratuvia apos um ultimo bombardeio nas fronteiras de Mangtreeli anuncia estado de defesa, não avancando em territorios e focando em reconstruir suas cidades. Tal anuncio nao foi bem recebido pelos Mongtriis, mas concordaram em entrar em re"
		 db "cessao.$"
HISATK25 db "34 transicao de Xwd de 1379."
		 db 13,10, "As forcas de Kratuvia eliminam completamente a frota de Mangtreeli, invadindo a capital e assassinando o conselho. Zavala eh encontrado morto com um tiro na cabeca, disparado da propria arma, as cinzas de outro ser humanoide desconhecido eh encontrada e"
		 db "m frente ao mapa oceanico. BudBung e os Krotuvackz saem vitoriosos e juram reestabelecer a paz e re-construir Asahi.$"




;Exibição de linhas
LINHAS db 'A'

;Matrizes de campo
CP1 db 36 DUP(0)
CP2 db 36 DUP(0)

;Matrizes de ataque
AP1 db 36 DUP(0)
AP2 db 36 DUP(0)

;Variavel para ordem
POSICAO DB ?
;Contadores de ordens
SETCONT1 db 0
SETCONT2 db 0

;Contador para exibição das matrizes
PRINTCOLUNA db 0
PRINTLINHA db 0

;Vidas dos jogadores
LIFE1 db 5
LIFE2 db 5
.CODE
;Inicialização de textos
MOV AX, @DATA
MOV DS,AX

;Ignorar os procedimentos
JMP FIMPROC

;Imprime String
PRINT PROC
MOV AH,9
INT 21H
RET
PRINT ENDP

;Imprime o caracter de ESPAÇO(utilizado nas matrizes)
SPACE PROC
MOV AH,2
MOV DL,32
INT 21H
INT 21H
RET
SPACE ENDP

;Limpa e define as opções gráficas da Janela
LIMPA_TELA PROC
MOV AX,0003h
INT 10h
MOV AX,4f02h
MOV BX,103h
INT 10h
	RET
LIMPA_TELA ENDP


;Pula uma linha
PULA PROC
	MOV AH,2
	MOV DL,0DH
	INT 21H
	MOV DL,0AH
	INT 21H
RET
PULA ENDP

;Imprime uma String + Pula Linha
IMP PROC
CALL PRINT
CALL PULA
RET 
IMP ENDP

;Faz a validação da Entrada das letras
CONFLINHA1 PROC
CONFLINHAINI:
MOV AH,1
INT 21H
CMP AL,64 ;Valor minimo 'A'
JA TESTE1
LEA DX,GEN1MSG6
CALL IMP
LEA DX,ORDEM
CALL PRINT
JMP CONFLINHAINI
TESTE1:
CMP AL,71 ;Valor maximo 'F'
JB CONFLINHAFIMA
CMP AL,96 ;Valor minimo 'a'
JA TESTE12
LEA DX,GEN1MSG6
CALL IMP
LEA DX,ORDEM
CALL PRINT
JMP CONFLINHAINI
TESTE12:
CMP AL,103 ;Valor maximo 'f'
JB CONFLINHAFIMB
LEA DX,GEN1MSG6
CALL IMP
LEA DX,ORDEM
CALL PRINT
JMP CONFLINHAINI
CONFLINHAFIMA:
SUB AL,65  ;Subtrai o valor ASCII maiusculas
RET
CONFLINHAFIMB:
SUB AL,97  ;Subtrai o valor ASCII minusculas
RET
CONFLINHA1 ENDP

;Faz a validação da Entrada das letras
CONFLINHA2 PROC
CONFLINHAINI2:
MOV AH,1
INT 21H
CMP AL,64  ;Valor minimo 'A'
JA TESTE2
LEA DX,GEN2MSG6
CALL IMP
LEA DX,ORDEM
CALL PRINT
JMP CONFLINHAINI2
TESTE2:
CMP AL,71  ;Valor maximo 'F'
JB CONFLINHAFIM2A
CMP AL,96  ;Valor minimo 'a'
JA TESTE22
LEA DX,GEN2MSG6
CALL IMP
LEA DX,ORDEM
CALL PRINT
JMP CONFLINHAINI2
TESTE22:
CMP AL,103  ;Valor maximo 'f'
JB CONFLINHAFIM2B
LEA DX,GEN2MSG6
CALL IMP
LEA DX,ORDEM
CALL PRINT
JMP CONFLINHAINI
CONFLINHAFIM2A:
SUB AL,65   ;SUbtrai o valor ASCII maiusculas
RET
CONFLINHAFIM2B:
SUB AL,97   ;Subtrai o valor ASCII minusculas
RET
CONFLINHA2 ENDP

;Faz validação da entrada de  números
CONFCOLUNA1 PROC
CONFCOLUNAINI:
MOV AH,1
INT 21H
CMP AL,48 ;Valor minimo '1'
JA TESTE1A
LEA DX,GEN1MSG6
CALL IMP
LEA DX,ORDEM
CALL PRINT
JMP CONFCOLUNAINI
TESTE1A:
CMP AL,55 ;Valor maximo '6'
JB CONFCOLUNAFIM
LEA DX,GEN1MSG6
CALL IMP
LEA DX,ORDEM
CALL PRINT
JMP CONFCOLUNAINI
CONFCOLUNAFIM:
SUB AL,49  ;Subtrai valor ASCII
RET
CONFCOLUNA1 ENDP

;Faz validação da entrada de  números
CONFCOLUNA2 PROC
CONFCOLUNAINI2:
MOV AH,1  
INT 21H
CMP AL,47  ;Valor minimo '1'
JA TESTE2A
LEA DX,GEN2MSG6
CALL IMP
LEA DX,ORDEM
CALL PRINT
JMP CONFCOLUNAINI2
TESTE2A:
CMP AL,55  ;Valor maximo '6'
JB CONFCOLUNAFIM2
LEA DX,GEN2MSG6
CALL IMP
LEA DX,ORDEM
CALL PRINT
JMP CONFCOLUNAINI2
CONFCOLUNAFIM2:
SUB AL,49  ;Subtrai o valor ASCII
RET
CONFCOLUNA2 ENDP

;Chama as conferencias de letras e números e converte em uma ordem
GETORDEM1 PROC
CALL PULA
LEA DX,ORDEM
CALL PRINT
CALL CONFLINHA1
MOV BX,6
MUL BX
MOV POSICAO,AL
CALL CONFCOLUNA1
ADD POSICAO,AL

RET
GETORDEM1 ENDP

;Chama as conferencias de letras e números e converte em uma ordem
GETORDEM2 PROC
CALL PULA
LEA DX,ORDEM
CALL PRINT
CALL CONFLINHA2
MOV BX,6
MUL BX
MOV POSICAO,AL
CALL CONFCOLUNA2
ADD POSICAO,AL
RET
GETORDEM2 ENDP

;Pega a posição obtida pela ordem, e posiciona na matriz de campo
SETNAVIO1 PROC
SETNAVIO1INI:
XOR BX,BX
MOV BL,POSICAO
CMP CP1[BX],1 ;Validação de posição já ocupada
JNE NAVOK
LEA DX,GEN1MSG7
CALL IMP
CALL GETORDEM1 ;chamada para obter nova posição
JMP SETNAVIO1INI
NAVOK:
MOV CP1[BX],1
RET
SETNAVIO1 ENDP

;Pega a posição obtida pela ordem, e posiciona na matriz de campo
SETNAVIO2 PROC
SETNAVIO2INI:
XOR BX,BX
MOV BL,POSICAO
CMP CP2[BX],1  ;Validação de posição já ocupada
JNE NAVOK2
LEA DX,GEN2MSG7
CALL IMP
CALL GETORDEM2 ;chamada para obter nova posição
JMP SETNAVIO2INI
NAVOK2:
MOV CP2[BX],1
RET
SETNAVIO2 ENDP

;Solicita uma ordem, verifica se a ordem corresponde no campo adversario
;Subtraindo vida ou não
;Altera a matriz de ataque
;Chama a função de fim de jogo se a vida chegar a 0
ATK12 PROC
LEA DX,P1
CALL PRINT
CALL GETORDEM1
XOR BX,BX
MOV BL,POSICAO
CMP CP2[BX],1
JNE ERRO1

CMP AP1[BX],0
JNE TESTEATK1
MOV AP1[BX],2
DEC LIFE2
MOV CP2[BX],2
CALL PULA
LEA DX,GEN1MSG8
CALL IMP
JMP ATK1FIM

TESTEATK1:
CMP AP1[BX],2
JNE ERRO11

ERRO1:
CALL PULA
LEA DX,GEN1MSG9
CALL IMP
MOV AP1[BX],3
JMP ATK1FIM2

ERRO11:

CALL PULA
LEA DX,GEN1MSG10
CALL IMP
JMP ATK1FIM2

ATK1FIM:
CMP LIFE2,0
JNE ATK1FIM2
CALL FIM1
ATK1FIM2:
RET
ATK12 ENDP

;Solicita uma ordem, verifica se a ordem corresponde no campo adversario
;Subtraindo vida ou não
;Altera a matriz de ataque
;Chama a função de fim de jogo se a vida chegar a 0
ATK21 PROC
LEA DX,P2
CALL PRINT
CALL GETORDEM2
XOR BX,BX
MOV BL,POSICAO
CMP CP1[BX],1
JNE ERRO2

CMP AP2[BX],0
JNE TESTEATK2
MOV AP2[BX],2
DEC LIFE1
MOV CP1[BX],2
CALL PULA
LEA DX,GEN2MSG8
CALL IMP
JMP ATK2FIM

TESTEATK2:
CMP AP2[BX],2
JNE ERRO21

ERRO2:
CALL PULA
LEA DX,GEN2MSG9
CALL IMP
MOV AP2[BX],3
JMP ATK2FIM2

ERRO21:
CALL PULA
LEA DX,GEN2MSG10
CALL IMP
JMP ATK2FIM2

ATK2FIM:
CMP LIFE1,0
JNE ATK2FIM2
CALL FIM2

ATK2FIM2:
RET
ATK21 ENDP

;Imprime a posição atual do BX da matriz de campo do jogador 1
PRINTAM1 PROC
MOV DL,CP1[BX]
ADD DL,48
MOV AH,2
INT 21H
RET
PRINTAM1 ENDP

;Imprime a posição atual do BX  da matriz de ataque do jogador 1
PRINTAM12 PROC
MOV DL,AP1[BX]
ADD DL,48
MOV AH,2
INT 21H
RET
PRINTAM12 ENDP

;Imprime a posição atual do BX da matriz de campo do jogador 2
PRINTAM2 PROC
MOV DL,CP2[BX]
ADD DL,48
MOV AH,2
INT 21H
RET
PRINTAM2 ENDP

;Imprime a posição atual do BX  da matriz de ataque do jogador 2
PRINTAM22 PROC
MOV DL,AP2[BX]
ADD DL,48
MOV AH,2
INT 21H
RET
PRINTAM22 ENDP

;Finaliza o jogo com a vitoria do jogador 1
FIM1 PROC
CALL LIMPA_TELA
LEA DX,HISATK15
CALL IMP
MOV AH,1
INT 21H
CALL LIMPA_TELA
LEA DX,P3
CALL IMP
LEA DX,VITORIA1
CALL IMP
MOV AH,1
INT 21H
MOV AH,4CH
INT 21H
RET
FIM1 ENDP

;Finaliza o jogo com a vitoria do jogador 2
FIM2 PROC
CALL LIMPA_TELA
LEA DX,HISATK25
CALL IMP
MOV AH,1
INT 21H
CALL LIMPA_TELA
LEA DX, P3
CALL IMP
LEA DX,VITORIA2
CALL IMP
MOV AH,1
INT 21H
MOV AH,4CH
INT 21H
RET
FIM2 ENDP

;Imprime as Strings de história do jogador 1
CONTAHISTORIA1 PROC
CMP LIFE2,4
JNE PROX11
CALL LIMPA_TELA
LEA DX,HISATK11
CALL IMP
MOV AH,1
INT 21H
PROX11:
CMP LIFE2,3
JNE PROX12
CALL LIMPA_TELA
LEA DX,HISATK12
CALL IMP
MOV AH,1
INT 21H
PROX12:
CMP LIFE2,2
JNE PROX13
CALL LIMPA_TELA
LEA DX,HISATK13
CALL IMP
MOV AH,1
INT 21H
PROX13:
CMP LIFE2,1
JNE PROX14
CALL LIMPA_TELA
LEA DX,HISATK14
CALL IMP
MOV AH,1
INT 21H
PROX14:
RET
CONTAHISTORIA1 ENDP

;Imprime as Strings de história do jogador 2
CONTAHISTORIA2 PROC
CMP LIFE1,4
JNE PROX21
CALL LIMPA_TELA
LEA DX,HISATK21
CALL IMP
MOV AH,1
INT 21H
PROX21:
CMP LIFE1,3
JNE PROX22
CALL LIMPA_TELA
LEA DX,HISATK22
CALL IMP
MOV AH,1
INT 21H
PROX22:
CMP LIFE1,2
JNE PROX23
CALL LIMPA_TELA
LEA DX,HISATK23
CALL IMP
MOV AH,1
INT 21H
PROX23:
CMP LIFE1,1
JNE PROX24
CALL LIMPA_TELA
LEA DX,HISATK24
CALL IMP
MOV AH,1
INT 21H
PROX24:
RET
CONTAHISTORIA2 ENDP



FIMPROC:
;INTRODUÇÃO
CALL LIMPA_TELA
LEA DX,P3
CALL IMP
LEA DX,WELCOME
CALL IMP
LEA DX,INITRULES
CALL IMP
LEA DX,RULES1
CALL IMP
LEA DX,TRANS
CALL IMP
MOV AH,1
INT 21H
;MONTAGEM JOGADOR 1
CALL LIMPA_TELA
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
;MONTAGEM JOGADOR 2
CALL LIMPA_TELA
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
CALL PULA

LOOPSET2:
CALL GETORDEM2
CALL SETNAVIO2
INC SETCONT2
CMP SETCONT2,5
JNE LOOPSET2

;TRANSIÇÃO JOGADAS
CALL LIMPA_TELA
LEA DX,P3
CALL IMP
LEA DX,TRANS2
CALL IMP
LEA DX,TRANS22
CALL IMP
MOV AH,1
INT 21H
CALL LIMPA_TELA

;Fase de ataques


FASEATK:
;Vez de ataque do jogador 1
CALL LIMPA_TELA
;Reset de variaveis e registradores
XOR BX,BX
MOV PRINTLINHA,0
MOV PRINTCOLUNA,0
LEA DX,MATRIZ1
CALL IMP
LEA DX,COLUNAS
CALL IMP

INITPRINTCOLUNALINHA1:
MOV DL,LINHAS
MOV AH,2
INT 21H
INITPRINTCOLUNA1:
CALL SPACE
CALL PRINTAM1
INC PRINTCOLUNA
INC BX
CMP PRINTCOLUNA,6
JB INITPRINTCOLUNA1
MOV PRINTCOLUNA,0
CALL PULA
INC PRINTLINHA
INC LINHAS
CMP PRINTLINHA,6
JB INITPRINTCOLUNALINHA1

CALL PULA

MOV PRINTCOLUNA,0
MOV PRINTLINHA,0
MOV LINHAS, 'A'
XOR BX,BX
LEA DX,MATRIZ2
CALL IMP
LEA DX, COLUNAS
CALL IMP
INITPRINTCOLUNALINHA12:
MOV DL,LINHAS
MOV AH,2
INT 21H
INITPRINTCOLUNA12:
CALL SPACE
CALL PRINTAM12
INC PRINTCOLUNA
INC BX
CMP PRINTCOLUNA,6
JB INITPRINTCOLUNA12
MOV PRINTCOLUNA,0
CALL PULA

INC PRINTLINHA
INC LINHAS
CMP PRINTLINHA,6
JB INITPRINTCOLUNALINHA12

LEA DX,LEGENDA1
CALL IMP
LEA DX,LEGENDA2
CALL IMP
LEA DX,LEGENDA3
CALL IMP
LEA DX,LEGENDA4
CALL IMP


CALL ATK12
MOV AH,1
INT 21H
CALL CONTAHISTORIA1
CALL LIMPA_TELA

;Vez de ataque do jogador 2
;Reset de variaveis e registradores
MOV PRINTCOLUNA,0
MOV PRINTLINHA,0
MOV LINHAS, 'A'
XOR BX,BX
LEA DX, MATRIZ1
CALL IMP
LEA DX,COLUNAS
CALL IMP

INITPRINTCOLUNALINHA21:
MOV DL,LINHAS
MOV AH,2
INT 21H

INITPRINTCOLUNA21:
CALL SPACE
CALL PRINTAM2
INC PRINTCOLUNA
INC BX
CMP PRINTCOLUNA,6
JB INITPRINTCOLUNA21
CALL PULA

MOV PRINTCOLUNA,0
INC PRINTLINHA
INC LINHAS
CMP PRINTLINHA,6
JB INITPRINTCOLUNALINHA21
CALL PULA

MOV PRINTCOLUNA,0
MOV PRINTLINHA,0
XOR BX,BX
LEA DX, MATRIZ2
CALL IMP
LEA DX,COLUNAS
CALL IMP
INITPRINTCOLUNALINHA22:
MOV DL,LINHAS
MOV AH,2
INT 21H
INITPRINTCOLUNA22:
CALL SPACE
CALL PRINTAM22
INC BX

INC PRINTCOLUNA
CMP PRINTCOLUNA,6
JB INITPRINTCOLUNA22
MOV PRINTCOLUNA,0
CALL PULA

INC LINHAS
INC PRINTLINHA
CMP PRINTLINHA,6
JB INITPRINTCOLUNALINHA22
CALL PULA
LEA DX,LEGENDA1
CALL IMP
LEA DX,LEGENDA2
CALL IMP
LEA DX,LEGENDA3
CALL IMP
LEA DX,LEGENDA4
CALL IMP


CALL ATK21
MOV AH,1
INT 21H
CALL CONTAHISTORIA2
JMP FASEATK


END
