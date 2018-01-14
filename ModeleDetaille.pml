/* Ligne 14 a 1 seul processus */
int NS = 8; /* Stations */
int NT = NS - 1; /* Troncons */
mtype = {fermees , ouvertes, refermees}; /** Etat des portes **/

chan ReqR1 = [0] of {bit};
chan ReqR2 = [0] of {bit};

/* Position(0-NS), Direction(-1,1), Lieu(1,0) */
chan R1ToR2 = [1] of {int, int, bit}; 
chan R2ToR1 = [1] of {int, int, bit};

proctype Rame1(){
	int posR1 = 1;  /* Position 0 a NS */
	int dirR1 = 1;  /* Direction -1 Ouest *** 1 est */
	bit lieuR1 = 1; /* Lieu de la position 1 Station *** 0 Troncon */
	mtype portesR1 = fermees; /* Etat des portes */
	
	int posR2 = NS; /* Position 0 a NS */
	int dirR2 = -1; /* Direction -1 Ouest *** 1 est */
	bit lieuR2 = 1; /* Lieu de la position 1 Station *** 0 Troncon */
	
	end:
	do
	/* Rame 1 */
	/* Progress au moment de avancer*/
	/* Depart Station Suivante */
	:: atomic{dirR1==1 && lieuR1==1 && portesR1==refermees && (posR2!=posR1 || lieuR2 !=0  || dirR1 != dirR2) && posR1<=NS 
		-> portesR1=fermees; posR1 = posR1; lieuR1 = 0;} progress0 : skip
	:: atomic{dirR1==-1 && lieuR1==1 && portesR1==refermees &&(posR2!=posR1-1 || lieuR2 !=0  || dirR1 != dirR2) && posR1>1
		-> portesR1=fermees; posR1 = posR1 - 1; lieuR1 = 0;} progress1 : skip
		
	/* Arrivee Station Suivante */
	:: atomic{dirR1==1 && lieuR1==0 && (posR2!=posR1+1 || lieuR2 !=1  || dirR1 != dirR2) && posR1<NS 
		-> posR1 = posR1 + 1; lieuR1 = 1;} progress2 : skip
	:: atomic{dirR1==-1 && lieuR1==0 && (posR2!=posR1 || lieuR2 !=1  || dirR1 != dirR2) && posR1>=1
		-> posR1 = posR1; lieuR1 = 1;} progress3 : skip
		
	/* OuverturePorte */
	:: atomic{portesR1 == fermees && lieuR1 == 1 -> portesR1 = ouvertes;}
	
	/* FermeturePorte */
	:: atomic{portesR1 == ouvertes -> portesR1 = refermees;}
	
	/* Changement Direction */
	:: atomic{dirR1==1 && posR1==NS && lieuR1==1 && (posR2!=posR1  || dirR2 != -1)
			-> dirR1 = -1;}
	:: atomic{dirR1==-1 && posR1==1 && lieuR1==1 && (posR2!=posR1  || dirR2 != 1)
			-> dirR1 = 1;}
			
	/* Requete de donnees */
	:: atomic{ReqR2!1; R2ToR1?posR2,dirR2,lieuR2;}
	
	/* Reponse a la requete*/
	:: atomic{ReqR1?1; R1ToR2!posR1,dirR1,lieuR1;}
	
	od;
}

proctype Rame2(){
	int posR1 = 1;  /* Position 0 a NS */
	int dirR1 = 1;  /* Direction -1 Ouest *** 1 est */
	bit lieuR1 = 1; /* Lieu de la position 1 Station *** 0 Troncon */
	
	int posR2 = NS; /* Position 0 a NS */
	int dirR2 = -1; /* Direction -1 Ouest *** 1 est */
	bit lieuR2 = 1; /* Lieu de la position 1 Station *** 0 Troncon */
	mtype portesR2 = fermees; /* Etat des portes */
	
	end:
	do
	/* Rame 2 */	
	/* Progress au moment de avancer*/

	/* Depart Station Suivante */
	:: atomic{dirR2==1 && lieuR2==1 && portesR2==refermees && (posR1!=posR2 || lieuR1 !=0  || dirR1 != dirR2) && posR2<=NS 
		-> portesR2=fermees; posR2 = posR2; lieuR2 = 0;} progress4 : skip
	:: atomic{dirR2==-1 && lieuR1==1 && portesR2==refermees && (posR2!=posR1-1 || lieuR1 !=0  || dirR1 != dirR2) && posR2>1
		-> portesR2=fermees; posR2 = posR2 - 1; lieuR2 = 0;} progress5 : skip
		
	/* Arrivee Station Suivante */
	:: atomic{dirR2==1 && lieuR2==0 && (posR1!=posR2+1 || lieuR1 !=1  || dirR1 != dirR2) && posR2<NS 
		-> posR2 = posR2 + 1; lieuR2 = 1;} progress6 : skip
	:: atomic{dirR2==-1 && lieuR2==0 && (posR1!=posR2 || lieuR1 !=1  || dirR1 != dirR2) && posR2>=1
		-> posR2 = posR2; lieuR2 = 1;} progress7 : skip
			
		
	/* OuverturePorte */
	:: atomic{portesR2 == fermees && lieuR2 == 1 -> portesR2 = ouvertes;}
	
	/* FermeturePorte */
	:: atomic{portesR2 == ouvertes -> portesR2 = refermees;}
		
	/* Changement Direction */
	:: atomic{dirR2==1 && posR2==NS && (posR2!=posR1  || dirR1 != -1)
			-> dirR2 = -1;}
	:: atomic{dirR2==-1 && posR2==1 && (posR2!=posR1  || dirR1 != 1)
			-> dirR2 = 1;}
			
	/* Requete de donnees */
	:: atomic{ReqR1!1; R1ToR2?posR1,dirR1,lieuR1;} 
	
	/* Reponse a la requete*/
	:: atomic{ReqR2?1; R2ToR1!posR2,dirR2,lieuR2;}
	
	od;
}

init {
	atomic{	
		run Rame1();
		run Rame2(); 
	}
}

ltl p0 {[]((Rame1:posR1 != Rame2:posR2) || (Rame1:dirR1 != Rame2:dirR2))};

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
		
ltl p7 {[](Rame1:lieuR1 == 0 -> Rame1:portesR1 == fermees) &&
		[](Rame2:lieuR2 == 0 -> Rame2:portesR2 == fermees)};
		
ltl p8 {[]((Rame1:lieuR1 == 1 && Rame1:portesR1 == fermees) -> <>(Rame1:portesR1 == ouvertes)) &&
		[]((Rame2:lieuR2 == 1 && Rame2:portesR2 == fermees) -> <>(Rame2:portesR2 == ouvertes))};