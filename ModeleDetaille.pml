/* Ligne 14 avec 2 processus et plus de details (Troncons et portes) */
int NS = 2; /* Stations */
int NT = NS - 1; /* Troncons */
mtype = {fermees , ouvertes, refermees}; /** Etat des portes **/

chan ReqR1 = [1] of {bit};
chan ReqR2 = [1] of {bit};

/* Position(0-NS), Direction(-1,1), Lieu(1,0) */
chan R1ToR2 = [1] of {int, int, bit}; 
chan R2ToR1 = [1] of {int, int, bit};

proctype Rame1(){
	int posR1 = 1;  /* Position : 0 a NS */
	int dirR1 = 1;  /* Direction : -1 Ouest *** 1 est */
	bit lieuR1 = 0; /* Lieu de la position : 0 Station *** 1 Troncon */
	mtype portesR1 = fermees; /* Etat des portes */
	
	int posR2 = NS; /* Position : 0 a NS */
	int dirR2 = -1; /* Direction : -1 Ouest *** 1 est */
	bit lieuR2 = 0; /* Lieu de la position : 0 Station *** 1 Troncon */
	
	end:
	do
	/* Rame 1 */
	/* Progress au moment d'avancer*/
	/* Depart Station Suivante */
	:: atomic{dirR1==1 && lieuR1==0 && portesR1==refermees && (posR2!=posR1 || lieuR2 !=1  || dirR1 != dirR2) && posR1<=NS 
		-> portesR1=fermees; posR1 = posR1; lieuR1 = 1;} progress0 : skip /* Direction Est */
	:: atomic{dirR1==-1 && lieuR1==0 && portesR1==refermees &&(posR2!=posR1-1 || lieuR2 !=1  || dirR1 != dirR2) && posR1>1
		-> portesR1=fermees; posR1 = posR1 - 1; lieuR1 = 1;} progress1 : skip /* Direction Ouest */
		
	/* Arrivee Station Suivante */
	:: atomic{dirR1==1 && lieuR1==1 && (posR2!=posR1+1 || lieuR2 !=0  || dirR1 != dirR2) && posR1<NS 
		-> posR1 = posR1 + 1; lieuR1 = 0;} progress2 : skip /* Direction Est */
	:: atomic{dirR1==-1 && lieuR1==1 && (posR2!=posR1 || lieuR2 !=0  || dirR1 != dirR2) && posR1>=1
		-> posR1 = posR1; lieuR1 = 0;} progress3 : skip /* Direction Ouest */
		
	/* OuverturePorte */
	:: atomic{portesR1 == fermees && lieuR1 == 0 -> portesR1 = ouvertes;}
	
	/* FermeturePorte */
	:: atomic{portesR1 == ouvertes -> portesR1 = refermees;}
	
	/* Changement Direction */
	:: atomic{dirR1==1 && posR1==NS && lieuR1==0 && (posR2!=posR1  || dirR2 != -1)
			-> dirR1 = -1;} progress4 : skip /* Est -> Ouest */
	:: atomic{dirR1==-1 && posR1==1 && lieuR1==0 && (posR2!=posR1  || dirR2 != 1)
			-> dirR1 = 1;} progress5 : skip /* Ouest -> Est */
			
	/* Requete de donnees */
	:: atomic{
			/*Partie pour verifier si le depart est possible*/
			((dirR1==1 && lieuR1==0 && (posR2==posR1  && lieuR2==1 && dirR1 == dirR2))	|| 
			(dirR1==-1 && lieuR1==0 && (posR2==posR1-1 && lieuR2==1 && dirR1 == dirR2)) ||
			/*Partie pour verifier si l'arrivee est possible*/
			(dirR1==1 && lieuR1==1 && (posR2==posR1+1 && lieuR2==0 && dirR1 == dirR2)) ||
			(dirR1==-1 && lieuR1==1 && (posR2==posR1 && lieuR2==0 && dirR1 == dirR2)) ||
			/*Partie pour verifier si le changement de direction est possible*/
			(dirR1==1 && posR1==NS && lieuR1==0 && (posR2==posR1  && dirR1 == -1)) ||
			(dirR1==-1 && posR1==1 && lieuR1==0 && (posR2==posR1  && dirR1 == 1))) &&	
			empty(ReqR1)		
			-> ReqR2!1; R2ToR1?posR2,dirR2,lieuR2;}
	
	/* Reponse a la requete*/
	:: atomic{full(ReqR1) -> ReqR1?1; R1ToR2!posR1,dirR1,lieuR1;} progress12 : skip;
	
	od;
}

proctype Rame2(){
	int posR1 = 1;  /* Position : 0 a NS */
	int dirR1 = 1;  /* Direction : -1 Ouest *** 1 est */
	bit lieuR1 = 0; /* Lieu de la position 0 Station : *** 1 Troncon */
	
	int posR2 = NS; /* Position : 0 a NS */
	int dirR2 = -1; /* Direction : -1 Ouest *** 1 est */
	bit lieuR2 = 0; /* Lieu de la position : 0 Station *** 1 Troncon */
	mtype portesR2 = fermees; /* Etat des portes */
	
	end:
	do
	/* Rame 2 */	
	/* Progress au moment d'avancer*/

	/* Depart Station Suivante */
	:: atomic{dirR2==1 && lieuR2==0 && portesR2==refermees && (posR1!=posR2 || lieuR1 !=1  || dirR1 != dirR2) && posR2<=NS 
		-> portesR2=fermees; posR2 = posR2; lieuR2 = 1;} progress6 : skip /* Direction Est */
	:: atomic{dirR2==-1 && lieuR2==0 && portesR2==refermees && (posR2!=posR1-1 || lieuR1 !=1  || dirR1 != dirR2) && posR2>1
		-> portesR2=fermees; posR2 = posR2 - 1; lieuR2 = 1;} progress7 : skip /* Direction Ouest */
		
	/* Arrivee Station Suivante */
	:: atomic{dirR2==1 && lieuR2==1 && (posR1!=posR2+1 || lieuR1 !=0  || dirR1 != dirR2) && posR2<NS 
		-> posR2 = posR2 + 1; lieuR2 = 0;} progress8 : skip /* Direction Est */
	:: atomic{dirR2==-1 && lieuR2==1 && (posR1!=posR2 || lieuR1 !=0  || dirR1 != dirR2) && posR2>=1
		-> posR2 = posR2; lieuR2 = 0;} progress9 : skip /* Direction Ouest */
			
		
	/* OuverturePorte */
	:: atomic{portesR2 == fermees && lieuR2 == 0 -> portesR2 = ouvertes;}
	
	/* FermeturePorte */
	:: atomic{portesR2 == ouvertes -> portesR2 = refermees;} 
		
	/* Changement Direction */
	:: atomic{dirR2==1 && posR2==NS && lieuR2==0 && (posR2!=posR1  || dirR1 != -1)
			-> dirR2 = -1;} progress10 : skip /* Est -> Ouest */
	:: atomic{dirR2==-1 && posR2==1 && lieuR2==0 && (posR2!=posR1  || dirR1 != 1)
			-> dirR2 = 1;} progress11 : skip /* Ouest -> Est */
			
	/* Requete de donnees */
	:: atomic{
			/*Partie pour verifier si le depart est possible*/
			((dirR2==1 && lieuR2==0 && (posR1==posR2  && lieuR1==1 && dirR1 == dirR2))	|| 
			(dirR2==-1 && lieuR2==0 && (posR1==posR2-1 && lieuR1==1 && dirR1 == dirR2)) ||
			/*Partie pour verifier si l'arrivee est possible*/
			(dirR2==1 && lieuR2==1 && (posR1==posR2+1 && lieuR1==0 && dirR1 == dirR2)) ||
			(dirR2==-1 && lieuR2==1 && (posR1==posR2 && lieuR1==0 && dirR1 == dirR2)) ||
			/*Partie pour verifier si le changement de direction est possible*/
			(dirR2==1 && posR2==NS && lieuR2==0 && (posR2==posR1  && dirR1 == -1)) ||
			(dirR2==-1 && posR2==1 && lieuR2==0 && (posR2==posR1  && dirR1 == 1))) &&
			empty(ReqR2)
			-> ReqR1!1; R1ToR2?posR1,dirR1,lieuR1;} 
	
	/* Reponse a la requete*/
	:: atomic{full(ReqR2) -> ReqR2?1; R2ToR1!posR2,dirR2,lieuR2;} progress13 : skip;
	
	od;
}

init {
	atomic{	
		run Rame1();
		run Rame2(); 
	}
}

ltl p0 {[]((Rame1:posR1!=0 && Rame2:posR2!=0 && Rame1:dirR1!=0 && Rame2:dirR2!=0)
		-> ((Rame1:posR1 != Rame2:posR2) || (Rame1:dirR1 != Rame2:dirR2) || (Rame1:lieuR1 != Rame2:lieuR2)))};

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
		
ltl p7 {[](Rame1:lieuR1 == 1 -> Rame1:portesR1 == fermees) &&
		[](Rame2:lieuR2 == 1 -> Rame2:portesR2 == fermees)};
		
ltl p8 {[]((Rame1:lieuR1 == 0 && Rame1:portesR1 == fermees) -> <>(Rame1:portesR1 == ouvertes)) &&
		[]((Rame2:lieuR2 == 0 && Rame2:portesR2 == fermees) -> <>(Rame2:portesR2 == ouvertes))};