/* Ligne 14 avec 2 processus */
int NS = 2; /* Stations */
int NT = NS - 1; /* Troncons */
chan ReqR1 = [1] of {bit};
chan ReqR2 = [1] of {bit};
/*  Position(0-NS), Direction(-1,1) */
chan R1ToR2 = [1] of {int, int}; 
chan R2ToR1 = [1] of {int, int};

proctype Rame1(){
	int posR1 = 1;  /* Position : 0 a NS */
	int dirR1 = 1;  /* Direction : -1 Ouest *** 1 est */
	int posR2 = NS; /* Position : 0 a NS */
	int dirR2 = -1; /* Direction : -1 Ouest *** 1 est */
	end:
	do
	/* Rame 1 */
	/* Progress au moment d'avancer*/
	/* Arrivee Station Suivante */
	:: atomic{dirR1==1 && (posR2!=posR1+1  || dirR1 != dirR2) && posR1<NS 
			-> posR1 = posR1 + 1;} progress0 : skip
	:: atomic{dirR1==-1 && (posR2!=posR1-1  || dirR1 != dirR2) && posR1>1
			-> posR1 = posR1 - 1;} progress1 : skip 
		
	/* Changement Direction */
	:: atomic{dirR1==1 && posR1==NS && (posR2!=posR1  || dirR2 != -1)
			-> dirR1 = -1;} progress2 : skip
	:: atomic{dirR1==-1 && posR1==1 && (posR2!=posR1  || dirR2 != 1)
			-> dirR1 = 1;} progress3 : skip
					
	/* Requete de donnees */
	:: atomic{
			/*Partie pour verifier si le depart est possible*/
			(((dirR1==1 && posR2==posR1+1  && dirR1 == dirR2)	||
			(dirR1==-1 && posR2==posR1-1  && dirR1 == dirR2) ||
			/*Partie pour verifier si le changement de direction est possible*/
			(dirR1==1 && posR1==NS && posR2==posR1  && dirR2 == -1) ||
			(dirR1==-1 && posR1==1 && posR2==posR1  && dirR2 == 1)) &&
			empty(ReqR1))
			-> ReqR2!1; R2ToR1?posR2,dirR2;}
	
	/* Reponse a la requete*/
	:: atomic{full(ReqR1) -> ReqR1?1; R1ToR2!posR1,dirR1;} progress8:skip;
	
	od;
}

proctype Rame2(){
	int posR1 = 1;  /* Position : 0 a NS */
	int dirR1 = 1;  /* Direction : -1 Ouest *** 1 est */
	int posR2 = NS; /* Position : 0 a NS */
	int dirR2 = -1; /* Direction : -1 Ouest *** 1 est */
	end:
	do
	/* Rame 2 */	
	/* Progress au moment d'avancer*/
	/* Arrivee Station Suivante */
	:: atomic{dirR2==1 && (posR1!=posR2+1  || dirR1 != dirR2) && posR2<NS 
			-> posR2 = posR2 + 1;} progress4 :skip
	:: atomic{dirR2==-1 && (posR1!=posR2-1  || dirR1 != dirR2) && posR2>1
			-> posR2 = posR2 - 1;} progress5 : skip
		
	/* Changement Direction */
	:: atomic{dirR2==1 && posR2==NS && (posR2!=posR1  || dirR1 != -1)
			-> dirR2 = -1;} progress6 : skip
	:: atomic{dirR2==-1 && posR2==1 && (posR2!=posR1  || dirR1 != 1)
			-> dirR2 = 1;} progress7 : skip;
			
	/* Requete de donnees */
	:: atomic{
			/*Partie pour verifier si le depart est possible*/
			(((dirR2==1 && posR1==posR2+1  && dirR1 == dirR2)	|| 
			(dirR2==-1 && posR1==posR2-1  && dirR1 == dirR2) ||
			/*Partie pour verifier si le changement de direction est possible*/
			(dirR2==1 && posR2==NS && posR2==posR1  && dirR1 == -1) ||
			(dirR2==-1 && posR2==1 && posR2==posR1  && dirR1 == 1)) &&
			empty(ReqR2))
			-> ReqR1!1; R1ToR2?posR1,dirR1;} 
	
	/* Reponse a la requete*/
	:: atomic{full(ReqR2) -> ReqR2?1; R2ToR1!posR2,dirR2;} progress9:skip;
	
	od;
}

init {
	atomic{
		run Rame1();
		run Rame2(); 
	}
}

ltl p0 {[]((Rame1:posR1!=0 && Rame2:posR2!=0 && Rame1:dirR1!=0 && Rame2:dirR2!=0)
		-> ((Rame1:posR1 != Rame2:posR2) || (Rame1:dirR1 != Rame2:dirR2)))};

ltl p3 {[](Rame1:posR1 != 1 && Rame1:dirR1 == -1 -> (Rame1:dirR1 == -1 U (Rame1:posR1 == 1 && Rame1:dirR1 == 1))) &&
		[](Rame2:posR2 != 1 && Rame2:dirR2 == -1 -> (Rame2:dirR2 == -1 U (Rame2:posR2 == 1 && Rame2:dirR2 == 1))) &&
		[](Rame1:posR1 != NS && Rame1:dirR1 == 1 -> (Rame1:dirR1 == 1 U (Rame1:posR1 == NS && Rame1:dirR1 == -1))) &&
		[](Rame2:posR2 != NS && Rame2:dirR2 == 1 -> (Rame2:dirR2 == 1 U (Rame2:posR2 == NS && Rame2:dirR2 == -1)))};
		
ltl p4{[](Rame1:posR1 < NS && Rame1:dirR1 == 1 -> <>(Rame1:posR1 == NS)) &&
	   [](Rame1:posR1 > 1 && Rame1:dirR1 == -1 -> <>(Rame1:posR1 == 1)) &&
	   [](Rame2:posR2 < NS && Rame2:dirR2 == 1 -> <>(Rame2:posR2 == NS)) &&
	   [](Rame2:posR2 > 1 && Rame2:dirR2 == -1 -> <>(Rame2:posR2 == 1))};

ltl p5{[](Rame1:posR1 < NS-1 && Rame1:dirR1 == 1 -> <>(Rame1:posR1 == NS-1)) &&
	   [](Rame2:posR2 < NS-1 && Rame2:dirR2 == 1 -> <>(Rame2:posR2 == NS-1))};
		
ltl p6 {[]<>(Rame1:posR1 >= 1 && Rame1:posR1 <= NS) &&
		[]<>(Rame1:dirR1 == 1 || Rame1:dirR1 == -1) &&
		[]<>(Rame2:posR2 >= 1 && Rame2:posR2 <= NS) &&
		[]<>(Rame2:dirR2 == 1 || Rame2:dirR2 == -1)};
