/* Ligne 14 a 1 seul processus */
int NS = 2; /* Stations */
int NT = NS - 1; /* Troncons */
int posR1, posR2; /* Positions 0 a NS */
int dirR1, dirR2; /* Directions -1 Ouest *** 1 est */

init {
	dirR1 = 1;  /* Est */
	dirR2 = -1; /* Ouest */
	posR1 = 1;
	posR2 = NS;

	do
		/* Rame 1 */
		/* Arrivee Station Suivante */
		/* Progress au moment de avancer*/
		:: atomic{dirR1==1 && (posR2!=posR1+1  || dirR1 != dirR2) && posR1<NS 
				-> posR1 = posR1 + 1;} progress0 : skip
		:: atomic{dirR1==-1 && (posR2!=posR1-1  || dirR1 != dirR2) && posR1>1
				-> posR1 = posR1 - 1;} progress1 : skip
			
		/* Changement Direction */
		:: atomic{dirR1==1 && posR1==NS && (posR2!=posR1  || dirR2 != -1)
				-> dirR1 = -1;}
		:: atomic{dirR1==-1 && posR1==1 && (posR2!=posR1  || dirR2 != 1)
				-> dirR1 = 1;}
		
		/* Rame 2 */	
		/* Arrivee Station Suivante */
		/* Progress au moment de avancer*/
		:: atomic{dirR2==1 && (posR1!=posR2+1  || dirR1 != dirR2) && posR2<NS 
				-> posR2 = posR2 + 1;} progress2 : skip
		:: atomic{dirR2==-1 && (posR1!=posR2-1  || dirR1 != dirR2) && posR2>1
				-> posR2 = posR2 - 1;} progress3 : skip
			
		/* Changement Direction */
		:: atomic{dirR2==1 && posR2==NS && (posR2!=posR1  || dirR1 != -1)
				-> dirR2 = -1;}
		:: atomic{dirR2==-1 && posR2==1 && (posR2!=posR1  || dirR1 != 1)
				-> dirR2 = 1;}
	od ;
}


