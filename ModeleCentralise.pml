/* Ligne 14 a 1 seul processus */
int NS = 2; /* Stations */
int NT = NS - 1; /* Troncons */
int stationR1, stationR2;
mtype = {ouest,est};
mtype posR1, posR2;

init {
	d_step{
		posR1 = est;
		posR2 = ouest;
		stationR1 = 1;
		stationR2 = NS;
	}
	do
		/* Rame 1 */
		/* Arrivee Station */
		:: d_step{posR1==est && (stationR2!=stationR1+1  || posR1 != posR2) && stationR1<NS 
				-> stationR1 = stationR1 + 1;}
		:: d_step{posR1==ouest && (stationR2!=stationR1-1  || posR1 != posR2) && stationR1>1
				->stationR1 = stationR1 - 1;}
			
		/* Changement Direction */
		:: d_step{posR1==est && stationR1==NS && (stationR2!=stationR1  || posR2 != ouest)
				->posR1 = ouest;}
		:: d_step{posR1==ouest && stationR1==1 && (stationR2!=stationR1  || posR2 != est)
				-> posR1 = est;}
		
		/* Rame 2 */	
		/* Arrivee Station */
		:: d_step{posR2==est && (stationR1!=stationR2+1  || posR1 != posR2) && stationR2<NS 
				-> stationR2 = stationR2 + 1;}
		:: d_step{posR2==ouest && (stationR1!=stationR2-1  || posR1 != posR2) && stationR2>1
				-> stationR2 = stationR2 - 1;}
			
		/* Changement Direction */
		:: d_step{posR2==est && stationR2==NS && (stationR2!=stationR1  || posR1 != ouest)
				-> posR2 = ouest;}
		:: d_step{posR2==ouest && stationR2==1 && (stationR2!=stationR1  || posR1 != est)
				-> posR2 = est;}
	od ;
}


