/* Ligne 14 a 1 seul processus */
int NS = 2; /* Stations */
int NT = NS - 1; /* Troncons */
chan ReqR1 = [0] of {bit};
chan ReqR2 = [0] of {bit};
/*  Position(0-NS), Direction(-1,1) */
chan R1ToR2 = [1] of {int, int}; 
chan R2ToR1 = [1] of {int, int};

proctype Rame1(){
	int posR1 = 1;  /* Position 0 a NS */
	int dirR1 = 1;  /* Direction -1 Ouest *** 1 est */
	int posR2 = NS; /* Position 0 a NS */
	int dirR2 = -1; /* Direction -1 Ouest *** 1 est */
	
	do
	/* Rame 1 */
	/* Progress au moment de avancer*/
	/* Arrivee Station Suivante */
	:: atomic{dirR1==1 && (posR2!=posR1+1  || dirR1 != dirR2) && posR1<NS 
			-> posR1 = posR1 + 1;} progress0 : skip
	:: atomic{dirR1==-1 && (posR2!=posR1-1  || dirR1 != dirR2) && posR1>1
			-> posR1 = posR1 - 1;} progress1 : skip 
		
	/* Changement Direction */
	:: atomic{dirR1==1 && posR1==NS && (posR2!=posR1  || dirR2 != -1)
			-> dirR1 = -1;}
	:: atomic{dirR1==-1 && posR1==1 && (posR2!=posR1  || dirR2 != 1)
			-> dirR1 = 1;}
					
	/* Requete de donnees */
	:: atomic{ReqR2!1; R2ToR1?posR2,dirR2;}
	
	/* Reponse a la requete*/
	:: atomic{ReqR1?1; R1ToR2!posR1,dirR1;}
	
	od;
}

proctype Rame2(){
	int posR1 = 1;  /* Position 0 a NS */
	int dirR1 = 1;  /* Direction -1 Ouest *** 1 est */
	int posR2 = NS; /* Position 0 a NS */
	int dirR2 = -1; /* Direction -1 Ouest *** 1 est */
	
	do
	/* Rame 2 */	
	/* Progress au moment de avancer*/
	/* Arrivee Station Suivante */
	:: atomic{dirR2==1 && (posR1!=posR2+1  || dirR1 != dirR2) && posR2<NS 
			-> posR2 = posR2 + 1;} progress2:skip
	:: atomic{dirR2==-1 && (posR1!=posR2-1  || dirR1 != dirR2) && posR2>1
			-> posR2 = posR2 - 1;} progress3 : skip
		
	/* Changement Direction */
	:: atomic{dirR2==1 && posR2==NS && (posR2!=posR1  || dirR1 != -1)
			-> dirR2 = -1;}
	:: atomic{dirR2==-1 && posR2==1 && (posR2!=posR1  || dirR1 != 1)
			-> dirR2 = 1;}
			
	/* Requete de donnees */
	:: atomic{ReqR1!1; R1ToR2?posR1,dirR1;} 
	
	/* Reponse a la requete*/
	:: atomic{ReqR2?1; R2ToR1!posR2,dirR2;}
	
	od;
}

init {
	atomic{
		run Rame1();
		run Rame2(); 
	}
}
