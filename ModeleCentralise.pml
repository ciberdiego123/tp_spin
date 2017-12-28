/* Ligne 14 a 1 seul processus */
int NS = 2; /* Stations */
int NT = NS - 1; /* Troncons */
int posR1, posR2;
mtype = {ouest,est};
mtype dirR1, dirR2;

init {
	d_step{
		dirR1 = est;
		dirR2 = ouest;
		posR1 = 1;
		posR2 = NS;
	}
	do
		/* Rame 1 */
		/* Station Suivante */
		:: d_step{dirR1==est && (posR2!=posR1+1  || dirR1 != dirR2) && posR1<NS 
				-> posR1 = posR1 + 1;}
		:: d_step{dirR1==ouest && (posR2!=posR1-1  || dirR1 != dirR2) && posR1>1
				->posR1 = posR1 - 1;}
			
		/* Changement Direction */
		:: d_step{dirR1==est && posR1==NS && (posR2!=posR1  || dirR2 != ouest)
				->dirR1 = ouest;}
		:: d_step{dirR1==ouest && posR1==1 && (posR2!=posR1  || dirR2 != est)
				-> dirR1 = est;}
		
		/* Rame 2 */	
		/* Station Suivante */
		:: d_step{dirR2==est && (posR1!=posR2+1  || dirR1 != dirR2) && posR2<NS 
				-> posR2 = posR2 + 1;}
		:: d_step{dirR2==ouest && (posR1!=posR2-1  || dirR1 != dirR2) && posR2>1
				-> posR2 = posR2 - 1;}
			
		/* Changement Direction */
		:: d_step{dirR2==est && posR2==NS && (posR2!=posR1  || dirR1 != ouest)
				-> dirR2 = ouest;}
		:: d_step{dirR2==ouest && posR2==1 && (posR2!=posR1  || dirR1 != est)
				-> dirR2 = est;}
	od ;
}


