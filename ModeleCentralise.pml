/* Ligne 14 avec 1 seul processus */
int NS = 8; /* Stations */
int NT = NS - 1; /* Troncons */

/* Positions : 0 a NS */
int dirR1 = 1;  /* Est */
int dirR2 = -1; /* Ouest */

/* Directions : -1 Ouest *** 1 est */
int posR1 = 1;
int posR2 = NS;

init {
	end:
	do
		/* Rame 1 */
		/* Arrivee Station Suivante */
		/* Progress au moment d'avancer*/
		:: atomic{dirR1==1 && (posR2!=posR1+1  || dirR1 != dirR2) && posR1<NS 
				-> posR1 = posR1 + 1;} progress0 : skip
		:: atomic{dirR1==-1 && (posR2!=posR1-1  || dirR1 != dirR2) && posR1>1
				-> posR1 = posR1 - 1;} progress1 : skip
			
		/* Changement Direction */
		:: atomic{dirR1==1 && posR1==NS && (posR2!=posR1  || dirR2 != -1)
				-> dirR1 = -1;} progress3 : skip
		:: atomic{dirR1==-1 && posR1==1 && (posR2!=posR1  || dirR2 != 1)
				-> dirR1 = 1;} progress4 : skip
		
		/* Rame 2 */	
		/* Arrivee Station Suivante */
		/* Progress au moment d'avancer*/
		:: atomic{dirR2==1 && (posR1!=posR2+1  || dirR1 != dirR2) && posR2<NS 
				-> posR2 = posR2 + 1;} progress5 : skip
		:: atomic{dirR2==-1 && (posR1!=posR2-1  || dirR1 != dirR2) && posR2>1
				-> posR2 = posR2 - 1;} progress6 : skip
			
		/* Changement Direction */
		:: atomic{dirR2==1 && posR2==NS && (posR2!=posR1  || dirR1 != -1)
				-> dirR2 = -1;} progress7 : skip
		:: atomic{dirR2==-1 && posR2==1 && (posR2!=posR1  || dirR1 != 1)
				-> dirR2 = 1;} progress8 : skip
	od ;
}

ltl p0 {[]((posR1 != posR2) || (dirR1 != dirR2))};

ltl p3 {[](posR1 != 1 && dirR1 == -1 -> (dirR1 == -1 U (posR1 == 1 && dirR1 == 1))) &&
		[](posR2 != 1 && dirR2 == -1 -> (dirR2 == -1 U (posR2 == 1 && dirR2 == 1))) &&
		[](posR1 != NS && dirR1 == 1 -> (dirR1 == 1 U (posR1 == NS && dirR1 == -1))) &&
		[](posR2 != NS && dirR2 == 1 -> (dirR2 == 1 U (posR2 == NS && dirR2 == -1)))};
		
ltl p4{[](posR1 < NS && dirR1 == 1 -> <>(posR1 == NS)) &&
	   [](posR1 > 1 && dirR1 == -1 -> <>(posR1 == 1)) &&
	   [](posR2 < NS && dirR2 == 1 -> <>(posR2 == NS)) &&
	   [](posR2 > 1 && dirR2 == -1 -> <>(posR2 == 1))};

ltl p5{[](posR1 < NS-1 && dirR1 == 1 -> <>(posR1 == NS-1)) &&
	   [](posR2 < NS-1 && dirR2 == 1 -> <>(posR2 == NS-1))};
		
ltl p6 {[]<>(posR1 >= 1 && posR1 <= NS) &&
		[]<>(dirR1 == 1 || dirR1 == -1) &&
		[]<>(posR2 >= 1 && posR2 <= NS) &&
		[]<>(dirR2 == 1 || dirR2 == -1)};
