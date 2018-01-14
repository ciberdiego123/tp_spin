#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM p8 */
	case 3: // STATE 1 - _spin_nvr.tmp:131 - [((!(!(((Rame2.lieuR2==1)&&(Rame2.portesR2==fermees))))&&!((Rame2.portesR2==ouvertes))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][1] = 1;
		if (!(( !( !(((((int)((P1 *)Pptr(f_pid(1)))->lieuR2)==1)&&(((int)((P1 *)Pptr(f_pid(1)))->portesR2)==3))))&& !((((int)((P1 *)Pptr(f_pid(1)))->portesR2)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 3 - _spin_nvr.tmp:132 - [((!(!(((Rame1.lieuR1==1)&&(Rame1.portesR1==fermees))))&&!((Rame1.portesR1==ouvertes))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][3] = 1;
		if (!(( !( !(((((int)((P0 *)Pptr(f_pid(0)))->lieuR1)==1)&&(((int)((P0 *)Pptr(f_pid(0)))->portesR1)==3))))&& !((((int)((P0 *)Pptr(f_pid(0)))->portesR1)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 10 - _spin_nvr.tmp:137 - [(!((Rame2.portesR2==ouvertes)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][10] = 1;
		if (!( !((((int)((P1 *)Pptr(f_pid(1)))->portesR2)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 15 - _spin_nvr.tmp:141 - [(!((Rame1.portesR1==ouvertes)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][15] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->portesR1)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 20 - _spin_nvr.tmp:143 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][20] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM p7 */
	case 8: // STATE 1 - _spin_nvr.tmp:122 - [((!((!((Rame1.lieuR1==0))||(Rame1.portesR1==fermees)))||!((!((Rame2.lieuR2==0))||(Rame2.portesR2==fermees)))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][1] = 1;
		if (!(( !(( !((((int)((P0 *)Pptr(f_pid(0)))->lieuR1)==0))||(((int)((P0 *)Pptr(f_pid(0)))->portesR1)==3)))|| !(( !((((int)((P1 *)Pptr(f_pid(1)))->lieuR2)==0))||(((int)((P1 *)Pptr(f_pid(1)))->portesR2)==3))))))
			continue;
		/* merge: assert(!((!((!((Rame1.lieuR1==0))||(Rame1.portesR1==fermees)))||!((!((Rame2.lieuR2==0))||(Rame2.portesR2==fermees))))))(0, 2, 6) */
		reached[9][2] = 1;
		spin_assert( !(( !(( !((((int)((P0 *)Pptr(f_pid(0)))->lieuR1)==0))||(((int)((P0 *)Pptr(f_pid(0)))->portesR1)==3)))|| !(( !((((int)((P1 *)Pptr(f_pid(1)))->lieuR2)==0))||(((int)((P1 *)Pptr(f_pid(1)))->portesR2)==3))))), " !(( !(( !((Rame1.lieuR1==0))||(Rame1.portesR1==3)))|| !(( !((Rame2.lieuR2==0))||(Rame2.portesR2==3)))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[9][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 9: // STATE 10 - _spin_nvr.tmp:127 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM p6 */
	case 10: // STATE 1 - _spin_nvr.tmp:96 - [(!(((Rame2.posR2>=1)&&(Rame2.posR2<=NS))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][1] = 1;
		if (!( !(((((int)((P1 *)Pptr(f_pid(1)))->posR2)>=1)&&(((int)((P1 *)Pptr(f_pid(1)))->posR2)<=now.NS)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 3 - _spin_nvr.tmp:97 - [(!(((Rame2.dirR2==1)||(Rame2.dirR2==-(1)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][3] = 1;
		if (!( !(((((int)((P1 *)Pptr(f_pid(1)))->dirR2)==1)||(((int)((P1 *)Pptr(f_pid(1)))->dirR2)== -(1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 5 - _spin_nvr.tmp:98 - [(!(((Rame1.posR1>=1)&&(Rame1.posR1<=NS))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][5] = 1;
		if (!( !(((((int)((P0 *)Pptr(f_pid(0)))->posR1)>=1)&&(((int)((P0 *)Pptr(f_pid(0)))->posR1)<=now.NS)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 7 - _spin_nvr.tmp:99 - [(!(((Rame1.dirR1==1)||(Rame1.dirR1==-(1)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported7 = 0;
			if (verbose && !reported7)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported7 = 0;
			if (verbose && !reported7)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][7] = 1;
		if (!( !(((((int)((P0 *)Pptr(f_pid(0)))->dirR1)==1)||(((int)((P0 *)Pptr(f_pid(0)))->dirR1)== -(1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 14 - _spin_nvr.tmp:104 - [(!(((Rame2.posR2>=1)&&(Rame2.posR2<=NS))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported14 = 0;
			if (verbose && !reported14)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported14 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported14 = 0;
			if (verbose && !reported14)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported14 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][14] = 1;
		if (!( !(((((int)((P1 *)Pptr(f_pid(1)))->posR2)>=1)&&(((int)((P1 *)Pptr(f_pid(1)))->posR2)<=now.NS)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 19 - _spin_nvr.tmp:108 - [(!(((Rame2.dirR2==1)||(Rame2.dirR2==-(1)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported19 = 0;
			if (verbose && !reported19)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported19 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported19 = 0;
			if (verbose && !reported19)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported19 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][19] = 1;
		if (!( !(((((int)((P1 *)Pptr(f_pid(1)))->dirR2)==1)||(((int)((P1 *)Pptr(f_pid(1)))->dirR2)== -(1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 24 - _spin_nvr.tmp:112 - [(!(((Rame1.posR1>=1)&&(Rame1.posR1<=NS))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported24 = 0;
			if (verbose && !reported24)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported24 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported24 = 0;
			if (verbose && !reported24)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported24 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][24] = 1;
		if (!( !(((((int)((P0 *)Pptr(f_pid(0)))->posR1)>=1)&&(((int)((P0 *)Pptr(f_pid(0)))->posR1)<=now.NS)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 29 - _spin_nvr.tmp:116 - [(!(((Rame1.dirR1==1)||(Rame1.dirR1==-(1)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported29 = 0;
			if (verbose && !reported29)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported29 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported29 = 0;
			if (verbose && !reported29)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported29 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][29] = 1;
		if (!( !(((((int)((P0 *)Pptr(f_pid(0)))->dirR1)==1)||(((int)((P0 *)Pptr(f_pid(0)))->dirR1)== -(1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 34 - _spin_nvr.tmp:118 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported34 = 0;
			if (verbose && !reported34)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported34 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported34 = 0;
			if (verbose && !reported34)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported34 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][34] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM p5 */
	case 19: // STATE 1 - _spin_nvr.tmp:80 - [((!(!(((Rame2.posR2<(NS-1))&&(Rame2.dirR2==1))))&&!((Rame2.posR2==(NS-1)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][1] = 1;
		if (!(( !( !(((((int)((P1 *)Pptr(f_pid(1)))->posR2)<(now.NS-1))&&(((int)((P1 *)Pptr(f_pid(1)))->dirR2)==1))))&& !((((int)((P1 *)Pptr(f_pid(1)))->posR2)==(now.NS-1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 3 - _spin_nvr.tmp:81 - [((!(!(((Rame1.posR1<(NS-1))&&(Rame1.dirR1==1))))&&!((Rame1.posR1==(NS-1)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][3] = 1;
		if (!(( !( !(((((int)((P0 *)Pptr(f_pid(0)))->posR1)<(now.NS-1))&&(((int)((P0 *)Pptr(f_pid(0)))->dirR1)==1))))&& !((((int)((P0 *)Pptr(f_pid(0)))->posR1)==(now.NS-1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 10 - _spin_nvr.tmp:86 - [(!((Rame2.posR2==(NS-1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][10] = 1;
		if (!( !((((int)((P1 *)Pptr(f_pid(1)))->posR2)==(now.NS-1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 15 - _spin_nvr.tmp:90 - [(!((Rame1.posR1==(NS-1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][15] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->posR1)==(now.NS-1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 20 - _spin_nvr.tmp:92 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][20] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM p4 */
	case 24: // STATE 1 - _spin_nvr.tmp:54 - [(((!(!(((Rame2.posR2<NS)&&(Rame2.dirR2==1))))&&!((Rame2.posR2==NS)))&&(!(!(((Rame1.posR1<NS)&&(Rame1.dirR1==1))))||(!(!(((Rame1.posR1>1)&&(Rame1.dirR1==-(1)))))||(!(!(((Rame2.posR2<NS)&&(Rame2.dirR2==1))))||!(!(((Rame2.posR2>1)&&(Rame2.dirR2==-(1))))))))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][1] = 1;
		if (!((( !( !(((((int)((P1 *)Pptr(f_pid(1)))->posR2)<now.NS)&&(((int)((P1 *)Pptr(f_pid(1)))->dirR2)==1))))&& !((((int)((P1 *)Pptr(f_pid(1)))->posR2)==now.NS)))&&( !( !(((((int)((P0 *)Pptr(f_pid(0)))->posR1)<now.NS)&&(((int)((P0 *)Pptr(f_pid(0)))->dirR1)==1))))||( !( !(((((int)((P0 *)Pptr(f_pid(0)))->posR1)>1)&&(((int)((P0 *)Pptr(f_pid(0)))->dirR1)== -(1)))))||( !( !(((((int)((P1 *)Pptr(f_pid(1)))->posR2)<now.NS)&&(((int)((P1 *)Pptr(f_pid(1)))->dirR2)==1))))|| !( !(((((int)((P1 *)Pptr(f_pid(1)))->posR2)>1)&&(((int)((P1 *)Pptr(f_pid(1)))->dirR2)== -(1)))))))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 3 - _spin_nvr.tmp:55 - [(((!(!(((Rame2.posR2>1)&&(Rame2.dirR2==-(1)))))&&!((Rame2.posR2==1)))&&(!(!(((Rame1.posR1<NS)&&(Rame1.dirR1==1))))||(!(!(((Rame1.posR1>1)&&(Rame1.dirR1==-(1)))))||(!(!(((Rame2.posR2<NS)&&(Rame2.dirR2==1))))||!(!(((Rame2.posR2>1)&&(Rame2.dirR2==-(1))))))))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][3] = 1;
		if (!((( !( !(((((int)((P1 *)Pptr(f_pid(1)))->posR2)>1)&&(((int)((P1 *)Pptr(f_pid(1)))->dirR2)== -(1)))))&& !((((int)((P1 *)Pptr(f_pid(1)))->posR2)==1)))&&( !( !(((((int)((P0 *)Pptr(f_pid(0)))->posR1)<now.NS)&&(((int)((P0 *)Pptr(f_pid(0)))->dirR1)==1))))||( !( !(((((int)((P0 *)Pptr(f_pid(0)))->posR1)>1)&&(((int)((P0 *)Pptr(f_pid(0)))->dirR1)== -(1)))))||( !( !(((((int)((P1 *)Pptr(f_pid(1)))->posR2)<now.NS)&&(((int)((P1 *)Pptr(f_pid(1)))->dirR2)==1))))|| !( !(((((int)((P1 *)Pptr(f_pid(1)))->posR2)>1)&&(((int)((P1 *)Pptr(f_pid(1)))->dirR2)== -(1)))))))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 5 - _spin_nvr.tmp:56 - [((!(!(((Rame1.posR1<NS)&&(Rame1.dirR1==1))))&&!((Rame1.posR1==NS))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][5] = 1;
		if (!(( !( !(((((int)((P0 *)Pptr(f_pid(0)))->posR1)<now.NS)&&(((int)((P0 *)Pptr(f_pid(0)))->dirR1)==1))))&& !((((int)((P0 *)Pptr(f_pid(0)))->posR1)==now.NS)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 7 - _spin_nvr.tmp:57 - [((!(!(((Rame1.posR1>1)&&(Rame1.dirR1==-(1)))))&&!((Rame1.posR1==1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported7 = 0;
			if (verbose && !reported7)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported7 = 0;
			if (verbose && !reported7)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][7] = 1;
		if (!(( !( !(((((int)((P0 *)Pptr(f_pid(0)))->posR1)>1)&&(((int)((P0 *)Pptr(f_pid(0)))->dirR1)== -(1)))))&& !((((int)((P0 *)Pptr(f_pid(0)))->posR1)==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 14 - _spin_nvr.tmp:62 - [(!((Rame2.posR2==NS)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported14 = 0;
			if (verbose && !reported14)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported14 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported14 = 0;
			if (verbose && !reported14)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported14 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][14] = 1;
		if (!( !((((int)((P1 *)Pptr(f_pid(1)))->posR2)==now.NS))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 19 - _spin_nvr.tmp:66 - [(!((Rame2.posR2==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported19 = 0;
			if (verbose && !reported19)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported19 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported19 = 0;
			if (verbose && !reported19)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported19 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][19] = 1;
		if (!( !((((int)((P1 *)Pptr(f_pid(1)))->posR2)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 24 - _spin_nvr.tmp:70 - [(!((Rame1.posR1==NS)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported24 = 0;
			if (verbose && !reported24)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported24 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported24 = 0;
			if (verbose && !reported24)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported24 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][24] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->posR1)==now.NS))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 29 - _spin_nvr.tmp:74 - [(!((Rame1.posR1==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported29 = 0;
			if (verbose && !reported29)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported29 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported29 = 0;
			if (verbose && !reported29)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported29 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][29] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->posR1)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 34 - _spin_nvr.tmp:76 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported34 = 0;
			if (verbose && !reported34)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported34 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported34 = 0;
			if (verbose && !reported34)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported34 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][34] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM p3 */
	case 33: // STATE 1 - _spin_nvr.tmp:21 - [(((!(!(((Rame2.posR2!=NS)&&(Rame2.dirR2==1))))&&!(((Rame2.posR2==NS)&&(Rame2.dirR2==-(1)))))&&(!(!(((Rame1.posR1!=1)&&(Rame1.dirR1==-(1)))))||(!(!(((Rame1.posR1!=NS)&&(Rame1.dirR1==1))))||(!(!(((Rame2.posR2!=1)&&(Rame2.dirR2==-(1)))))||!(!(((Rame2.posR2!=NS)&&(Rame2.dirR2==1)))))))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][1] = 1;
		if (!((( !( !(((((int)((P1 *)Pptr(f_pid(1)))->posR2)!=now.NS)&&(((int)((P1 *)Pptr(f_pid(1)))->dirR2)==1))))&& !(((((int)((P1 *)Pptr(f_pid(1)))->posR2)==now.NS)&&(((int)((P1 *)Pptr(f_pid(1)))->dirR2)== -(1)))))&&( !( !(((((int)((P0 *)Pptr(f_pid(0)))->posR1)!=1)&&(((int)((P0 *)Pptr(f_pid(0)))->dirR1)== -(1)))))||( !( !(((((int)((P0 *)Pptr(f_pid(0)))->posR1)!=now.NS)&&(((int)((P0 *)Pptr(f_pid(0)))->dirR1)==1))))||( !( !(((((int)((P1 *)Pptr(f_pid(1)))->posR2)!=1)&&(((int)((P1 *)Pptr(f_pid(1)))->dirR2)== -(1)))))|| !( !(((((int)((P1 *)Pptr(f_pid(1)))->posR2)!=now.NS)&&(((int)((P1 *)Pptr(f_pid(1)))->dirR2)==1))))))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 3 - _spin_nvr.tmp:22 - [((((!(!(((Rame1.posR1!=1)&&(Rame1.dirR1==-(1)))))&&!(((Rame1.posR1==1)&&(Rame1.dirR1==1))))&&!((Rame1.dirR1==-(1))))||(((!(!(((Rame1.posR1!=NS)&&(Rame1.dirR1==1))))&&!(((Rame1.posR1==NS)&&(Rame1.dirR1==-(1)))))&&!((Rame1.dirR1==1)))||(((!(!(((Rame2.posR2!=1)&&(Rame2.dirR2==-(1)))))&&!(((Rame2.posR2==1)&&(Rame2.dirR2==1))))&&!((Rame2.dirR2==-(1))))||((!(!(((Rame2.posR2!=NS)&&(Rame2.dirR2==1))))&&!(((Rame2.posR2==NS)&&(Rame2.dirR2==-(1)))))&&!((Rame2.dirR2==1)))))))] (14:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][3] = 1;
		if (!(((( !( !(((((int)((P0 *)Pptr(f_pid(0)))->posR1)!=1)&&(((int)((P0 *)Pptr(f_pid(0)))->dirR1)== -(1)))))&& !(((((int)((P0 *)Pptr(f_pid(0)))->posR1)==1)&&(((int)((P0 *)Pptr(f_pid(0)))->dirR1)==1))))&& !((((int)((P0 *)Pptr(f_pid(0)))->dirR1)== -(1))))||((( !( !(((((int)((P0 *)Pptr(f_pid(0)))->posR1)!=now.NS)&&(((int)((P0 *)Pptr(f_pid(0)))->dirR1)==1))))&& !(((((int)((P0 *)Pptr(f_pid(0)))->posR1)==now.NS)&&(((int)((P0 *)Pptr(f_pid(0)))->dirR1)== -(1)))))&& !((((int)((P0 *)Pptr(f_pid(0)))->dirR1)==1)))||((( !( !(((((int)((P1 *)Pptr(f_pid(1)))->posR2)!=1)&&(((int)((P1 *)Pptr(f_pid(1)))->dirR2)== -(1)))))&& !(((((int)((P1 *)Pptr(f_pid(1)))->posR2)==1)&&(((int)((P1 *)Pptr(f_pid(1)))->dirR2)==1))))&& !((((int)((P1 *)Pptr(f_pid(1)))->dirR2)== -(1))))||(( !( !(((((int)((P1 *)Pptr(f_pid(1)))->posR2)!=now.NS)&&(((int)((P1 *)Pptr(f_pid(1)))->dirR2)==1))))&& !(((((int)((P1 *)Pptr(f_pid(1)))->posR2)==now.NS)&&(((int)((P1 *)Pptr(f_pid(1)))->dirR2)== -(1)))))&& !((((int)((P1 *)Pptr(f_pid(1)))->dirR2)==1))))))))
			continue;
		/* merge: assert(!((((!(!(((Rame1.posR1!=1)&&(Rame1.dirR1==-(1)))))&&!(((Rame1.posR1==1)&&(Rame1.dirR1==1))))&&!((Rame1.dirR1==-(1))))||(((!(!(((Rame1.posR1!=NS)&&(Rame1.dirR1==1))))&&!(((Rame1.posR1==NS)&&(Rame1.dirR1==-(1)))))&&!((Rame1.dirR1==1)))||(((!(!(((Rame2.posR2!=1)&&(Rame2.dirR2==-(1)))))&&!(((Rame2.posR2==1)&&(Rame2.dirR2==1))))&&!((Rame2.dirR2==-(1))))||((!(!(((Rame2.posR2!=NS)&&(Rame2.dirR2==1))))&&!(((Rame2.posR2==NS)&&(Rame2.dirR2==-(1)))))&&!((Rame2.dirR2==1))))))))(0, 4, 14) */
		reached[5][4] = 1;
		spin_assert( !(((( !( !(((((int)((P0 *)Pptr(f_pid(0)))->posR1)!=1)&&(((int)((P0 *)Pptr(f_pid(0)))->dirR1)== -(1)))))&& !(((((int)((P0 *)Pptr(f_pid(0)))->posR1)==1)&&(((int)((P0 *)Pptr(f_pid(0)))->dirR1)==1))))&& !((((int)((P0 *)Pptr(f_pid(0)))->dirR1)== -(1))))||((( !( !(((((int)((P0 *)Pptr(f_pid(0)))->posR1)!=now.NS)&&(((int)((P0 *)Pptr(f_pid(0)))->dirR1)==1))))&& !(((((int)((P0 *)Pptr(f_pid(0)))->posR1)==now.NS)&&(((int)((P0 *)Pptr(f_pid(0)))->dirR1)== -(1)))))&& !((((int)((P0 *)Pptr(f_pid(0)))->dirR1)==1)))||((( !( !(((((int)((P1 *)Pptr(f_pid(1)))->posR2)!=1)&&(((int)((P1 *)Pptr(f_pid(1)))->dirR2)== -(1)))))&& !(((((int)((P1 *)Pptr(f_pid(1)))->posR2)==1)&&(((int)((P1 *)Pptr(f_pid(1)))->dirR2)==1))))&& !((((int)((P1 *)Pptr(f_pid(1)))->dirR2)== -(1))))||(( !( !(((((int)((P1 *)Pptr(f_pid(1)))->posR2)!=now.NS)&&(((int)((P1 *)Pptr(f_pid(1)))->dirR2)==1))))&& !(((((int)((P1 *)Pptr(f_pid(1)))->posR2)==now.NS)&&(((int)((P1 *)Pptr(f_pid(1)))->dirR2)== -(1)))))&& !((((int)((P1 *)Pptr(f_pid(1)))->dirR2)==1))))))), " !(((( !( !(((Rame1.posR1!=1)&&(Rame1.dirR1== -(1)))))&& !(((Rame1.posR1==1)&&(Rame1.dirR1==1))))&& !((Rame1.dirR1== -(1))))||((( !( !(((Rame1.posR1!=NS)&&(Rame1.dirR1==1))))&& !(((Rame1.posR1==NS)&&(Rame1.dirR1== -(1)))))&& !((Rame1.dirR1==1)))||((( !( !(((Rame2.posR2!=1)&&(Rame2.dirR2== -(1)))))&& !(((Rame2.posR2==1)&&(Rame2.dirR2==1))))&& !((Rame2.dirR2== -(1))))||(( !( !(((Rame2.posR2!=NS)&&(Rame2.dirR2==1))))&& !(((Rame2.posR2==NS)&&(Rame2.dirR2== -(1)))))&& !((Rame2.dirR2==1)))))))", II, tt, t);
		/* merge: .(goto)(0, 15, 14) */
		reached[5][15] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 35: // STATE 6 - _spin_nvr.tmp:23 - [(((!(!(((Rame2.posR2!=1)&&(Rame2.dirR2==-(1)))))&&!(((Rame2.posR2==1)&&(Rame2.dirR2==1))))&&(!(!(((Rame1.posR1!=1)&&(Rame1.dirR1==-(1)))))||(!(!(((Rame1.posR1!=NS)&&(Rame1.dirR1==1))))||(!(!(((Rame2.posR2!=1)&&(Rame2.dirR2==-(1)))))||!(!(((Rame2.posR2!=NS)&&(Rame2.dirR2==1)))))))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][6] = 1;
		if (!((( !( !(((((int)((P1 *)Pptr(f_pid(1)))->posR2)!=1)&&(((int)((P1 *)Pptr(f_pid(1)))->dirR2)== -(1)))))&& !(((((int)((P1 *)Pptr(f_pid(1)))->posR2)==1)&&(((int)((P1 *)Pptr(f_pid(1)))->dirR2)==1))))&&( !( !(((((int)((P0 *)Pptr(f_pid(0)))->posR1)!=1)&&(((int)((P0 *)Pptr(f_pid(0)))->dirR1)== -(1)))))||( !( !(((((int)((P0 *)Pptr(f_pid(0)))->posR1)!=now.NS)&&(((int)((P0 *)Pptr(f_pid(0)))->dirR1)==1))))||( !( !(((((int)((P1 *)Pptr(f_pid(1)))->posR2)!=1)&&(((int)((P1 *)Pptr(f_pid(1)))->dirR2)== -(1)))))|| !( !(((((int)((P1 *)Pptr(f_pid(1)))->posR2)!=now.NS)&&(((int)((P1 *)Pptr(f_pid(1)))->dirR2)==1))))))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 8 - _spin_nvr.tmp:24 - [((!(!(((Rame1.posR1!=NS)&&(Rame1.dirR1==1))))&&!(((Rame1.posR1==NS)&&(Rame1.dirR1==-(1))))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][8] = 1;
		if (!(( !( !(((((int)((P0 *)Pptr(f_pid(0)))->posR1)!=now.NS)&&(((int)((P0 *)Pptr(f_pid(0)))->dirR1)==1))))&& !(((((int)((P0 *)Pptr(f_pid(0)))->posR1)==now.NS)&&(((int)((P0 *)Pptr(f_pid(0)))->dirR1)== -(1)))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 10 - _spin_nvr.tmp:25 - [((!(!(((Rame1.posR1!=1)&&(Rame1.dirR1==-(1)))))&&!(((Rame1.posR1==1)&&(Rame1.dirR1==1)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][10] = 1;
		if (!(( !( !(((((int)((P0 *)Pptr(f_pid(0)))->posR1)!=1)&&(((int)((P0 *)Pptr(f_pid(0)))->dirR1)== -(1)))))&& !(((((int)((P0 *)Pptr(f_pid(0)))->posR1)==1)&&(((int)((P0 *)Pptr(f_pid(0)))->dirR1)==1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 17 - _spin_nvr.tmp:30 - [(!(((Rame2.posR2==NS)&&(Rame2.dirR2==-(1)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][17] = 1;
		if (!( !(((((int)((P1 *)Pptr(f_pid(1)))->posR2)==now.NS)&&(((int)((P1 *)Pptr(f_pid(1)))->dirR2)== -(1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 19 - _spin_nvr.tmp:31 - [((!(((Rame2.posR2==NS)&&(Rame2.dirR2==-(1))))&&!((Rame2.dirR2==1))))] (22:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported19 = 0;
			if (verbose && !reported19)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported19 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported19 = 0;
			if (verbose && !reported19)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported19 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][19] = 1;
		if (!(( !(((((int)((P1 *)Pptr(f_pid(1)))->posR2)==now.NS)&&(((int)((P1 *)Pptr(f_pid(1)))->dirR2)== -(1))))&& !((((int)((P1 *)Pptr(f_pid(1)))->dirR2)==1)))))
			continue;
		/* merge: assert(!((!(((Rame2.posR2==NS)&&(Rame2.dirR2==-(1))))&&!((Rame2.dirR2==1)))))(0, 20, 22) */
		reached[5][20] = 1;
		spin_assert( !(( !(((((int)((P1 *)Pptr(f_pid(1)))->posR2)==now.NS)&&(((int)((P1 *)Pptr(f_pid(1)))->dirR2)== -(1))))&& !((((int)((P1 *)Pptr(f_pid(1)))->dirR2)==1)))), " !(( !(((Rame2.posR2==NS)&&(Rame2.dirR2== -(1))))&& !((Rame2.dirR2==1))))", II, tt, t);
		/* merge: .(goto)(0, 23, 22) */
		reached[5][23] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 40: // STATE 25 - _spin_nvr.tmp:35 - [(!(((Rame2.posR2==1)&&(Rame2.dirR2==1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported25 = 0;
			if (verbose && !reported25)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported25 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported25 = 0;
			if (verbose && !reported25)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported25 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][25] = 1;
		if (!( !(((((int)((P1 *)Pptr(f_pid(1)))->posR2)==1)&&(((int)((P1 *)Pptr(f_pid(1)))->dirR2)==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 27 - _spin_nvr.tmp:36 - [((!(((Rame2.posR2==1)&&(Rame2.dirR2==1)))&&!((Rame2.dirR2==-(1)))))] (30:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported27 = 0;
			if (verbose && !reported27)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported27 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported27 = 0;
			if (verbose && !reported27)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported27 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][27] = 1;
		if (!(( !(((((int)((P1 *)Pptr(f_pid(1)))->posR2)==1)&&(((int)((P1 *)Pptr(f_pid(1)))->dirR2)==1)))&& !((((int)((P1 *)Pptr(f_pid(1)))->dirR2)== -(1))))))
			continue;
		/* merge: assert(!((!(((Rame2.posR2==1)&&(Rame2.dirR2==1)))&&!((Rame2.dirR2==-(1))))))(0, 28, 30) */
		reached[5][28] = 1;
		spin_assert( !(( !(((((int)((P1 *)Pptr(f_pid(1)))->posR2)==1)&&(((int)((P1 *)Pptr(f_pid(1)))->dirR2)==1)))&& !((((int)((P1 *)Pptr(f_pid(1)))->dirR2)== -(1))))), " !(( !(((Rame2.posR2==1)&&(Rame2.dirR2==1)))&& !((Rame2.dirR2== -(1)))))", II, tt, t);
		/* merge: .(goto)(0, 31, 30) */
		reached[5][31] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 42: // STATE 33 - _spin_nvr.tmp:40 - [(!(((Rame1.posR1==NS)&&(Rame1.dirR1==-(1)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported33 = 0;
			if (verbose && !reported33)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported33 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported33 = 0;
			if (verbose && !reported33)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported33 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][33] = 1;
		if (!( !(((((int)((P0 *)Pptr(f_pid(0)))->posR1)==now.NS)&&(((int)((P0 *)Pptr(f_pid(0)))->dirR1)== -(1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 35 - _spin_nvr.tmp:41 - [((!(((Rame1.posR1==NS)&&(Rame1.dirR1==-(1))))&&!((Rame1.dirR1==1))))] (38:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported35 = 0;
			if (verbose && !reported35)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported35 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported35 = 0;
			if (verbose && !reported35)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported35 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][35] = 1;
		if (!(( !(((((int)((P0 *)Pptr(f_pid(0)))->posR1)==now.NS)&&(((int)((P0 *)Pptr(f_pid(0)))->dirR1)== -(1))))&& !((((int)((P0 *)Pptr(f_pid(0)))->dirR1)==1)))))
			continue;
		/* merge: assert(!((!(((Rame1.posR1==NS)&&(Rame1.dirR1==-(1))))&&!((Rame1.dirR1==1)))))(0, 36, 38) */
		reached[5][36] = 1;
		spin_assert( !(( !(((((int)((P0 *)Pptr(f_pid(0)))->posR1)==now.NS)&&(((int)((P0 *)Pptr(f_pid(0)))->dirR1)== -(1))))&& !((((int)((P0 *)Pptr(f_pid(0)))->dirR1)==1)))), " !(( !(((Rame1.posR1==NS)&&(Rame1.dirR1== -(1))))&& !((Rame1.dirR1==1))))", II, tt, t);
		/* merge: .(goto)(0, 39, 38) */
		reached[5][39] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 44: // STATE 41 - _spin_nvr.tmp:45 - [(!(((Rame1.posR1==1)&&(Rame1.dirR1==1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported41 = 0;
			if (verbose && !reported41)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported41 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported41 = 0;
			if (verbose && !reported41)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported41 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][41] = 1;
		if (!( !(((((int)((P0 *)Pptr(f_pid(0)))->posR1)==1)&&(((int)((P0 *)Pptr(f_pid(0)))->dirR1)==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 43 - _spin_nvr.tmp:46 - [((!(((Rame1.posR1==1)&&(Rame1.dirR1==1)))&&!((Rame1.dirR1==-(1)))))] (46:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported43 = 0;
			if (verbose && !reported43)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported43 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported43 = 0;
			if (verbose && !reported43)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported43 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][43] = 1;
		if (!(( !(((((int)((P0 *)Pptr(f_pid(0)))->posR1)==1)&&(((int)((P0 *)Pptr(f_pid(0)))->dirR1)==1)))&& !((((int)((P0 *)Pptr(f_pid(0)))->dirR1)== -(1))))))
			continue;
		/* merge: assert(!((!(((Rame1.posR1==1)&&(Rame1.dirR1==1)))&&!((Rame1.dirR1==-(1))))))(0, 44, 46) */
		reached[5][44] = 1;
		spin_assert( !(( !(((((int)((P0 *)Pptr(f_pid(0)))->posR1)==1)&&(((int)((P0 *)Pptr(f_pid(0)))->dirR1)==1)))&& !((((int)((P0 *)Pptr(f_pid(0)))->dirR1)== -(1))))), " !(( !(((Rame1.posR1==1)&&(Rame1.dirR1==1)))&& !((Rame1.dirR1== -(1)))))", II, tt, t);
		/* merge: .(goto)(0, 47, 46) */
		reached[5][47] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 46: // STATE 50 - _spin_nvr.tmp:50 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported50 = 0;
			if (verbose && !reported50)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported50 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported50 = 0;
			if (verbose && !reported50)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported50 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][50] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM p0 */
	case 47: // STATE 1 - _spin_nvr.tmp:12 - [(!(((Rame1.posR1!=Rame2.posR2)||(Rame1.dirR1!=Rame2.dirR2))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][1] = 1;
		if (!( !(((((int)((P0 *)Pptr(f_pid(0)))->posR1)!=((int)((P1 *)Pptr(f_pid(1)))->posR2))||(((int)((P0 *)Pptr(f_pid(0)))->dirR1)!=((int)((P1 *)Pptr(f_pid(1)))->dirR2))))))
			continue;
		/* merge: assert(!(!(((Rame1.posR1!=Rame2.posR2)||(Rame1.dirR1!=Rame2.dirR2)))))(0, 2, 6) */
		reached[4][2] = 1;
		spin_assert( !( !(((((int)((P0 *)Pptr(f_pid(0)))->posR1)!=((int)((P1 *)Pptr(f_pid(1)))->posR2))||(((int)((P0 *)Pptr(f_pid(0)))->dirR1)!=((int)((P1 *)Pptr(f_pid(1)))->dirR2))))), " !( !(((Rame1.posR1!=Rame2.posR2)||(Rame1.dirR1!=Rame2.dirR2))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[4][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 48: // STATE 10 - _spin_nvr.tmp:17 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM pp */
	case 49: // STATE 1 - _spin_nvr.tmp:3 - [(!((Rame1.posR1>=1)))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][1] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->posR1)>=1))))
			continue;
		/* merge: assert(!(!((Rame1.posR1>=1))))(0, 2, 6) */
		reached[3][2] = 1;
		spin_assert( !( !((((int)((P0 *)Pptr(f_pid(0)))->posR1)>=1))), " !( !((Rame1.posR1>=1)))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[3][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 50: // STATE 10 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 51: // STATE 1 - ModeleDetaille.pml:111 - [(run Rame1())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 2 - ModeleDetaille.pml:112 - [(run Rame2())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!(addproc(II, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 4 - ModeleDetaille.pml:114 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Rame2 */
	case 54: // STATE 1 - ModeleDetaille.pml:76 - [((((((dirR2==1)&&(lieuR2==1))&&(portesR2==refermees))&&(((posR1!=posR2)||(lieuR1!=0))||(dirR1!=dirR2)))&&(posR2<=NS)))] (6:0:3 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!((((((((P1 *)this)->dirR2==1)&&(((int)((P1 *)this)->lieuR2)==1))&&(((P1 *)this)->portesR2==1))&&(((((P1 *)this)->posR1!=((P1 *)this)->posR2)||(((int)((P1 *)this)->lieuR1)!=0))||(((P1 *)this)->dirR1!=((P1 *)this)->dirR2)))&&(((P1 *)this)->posR2<=now.NS))))
			continue;
		/* merge: portesR2 = fermees(6, 2, 6) */
		reached[1][2] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->portesR2;
		((P1 *)this)->portesR2 = 3;
#ifdef VAR_RANGES
		logval("Rame2:portesR2", ((P1 *)this)->portesR2);
#endif
		;
		/* merge: posR2 = posR2(6, 3, 6) */
		reached[1][3] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->posR2;
		((P1 *)this)->posR2 = ((P1 *)this)->posR2;
#ifdef VAR_RANGES
		logval("Rame2:posR2", ((P1 *)this)->posR2);
#endif
		;
		/* merge: lieuR2 = 0(6, 4, 6) */
		reached[1][4] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)this)->lieuR2);
		((P1 *)this)->lieuR2 = 0;
#ifdef VAR_RANGES
		logval("Rame2:lieuR2", ((int)((P1 *)this)->lieuR2));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 55: // STATE 7 - ModeleDetaille.pml:78 - [((((((dirR2==-(1))&&(lieuR1==1))&&(portesR2==refermees))&&(((posR2!=(posR1-1))||(lieuR1!=0))||(dirR1!=dirR2)))&&(posR2>1)))] (12:0:3 - 1)
		IfNotBlocked
		reached[1][7] = 1;
		if (!((((((((P1 *)this)->dirR2== -(1))&&(((int)((P1 *)this)->lieuR1)==1))&&(((P1 *)this)->portesR2==1))&&(((((P1 *)this)->posR2!=(((P1 *)this)->posR1-1))||(((int)((P1 *)this)->lieuR1)!=0))||(((P1 *)this)->dirR1!=((P1 *)this)->dirR2)))&&(((P1 *)this)->posR2>1))))
			continue;
		/* merge: portesR2 = fermees(12, 8, 12) */
		reached[1][8] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->portesR2;
		((P1 *)this)->portesR2 = 3;
#ifdef VAR_RANGES
		logval("Rame2:portesR2", ((P1 *)this)->portesR2);
#endif
		;
		/* merge: posR2 = (posR2-1)(12, 9, 12) */
		reached[1][9] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->posR2;
		((P1 *)this)->posR2 = (((P1 *)this)->posR2-1);
#ifdef VAR_RANGES
		logval("Rame2:posR2", ((P1 *)this)->posR2);
#endif
		;
		/* merge: lieuR2 = 0(12, 10, 12) */
		reached[1][10] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)this)->lieuR2);
		((P1 *)this)->lieuR2 = 0;
#ifdef VAR_RANGES
		logval("Rame2:lieuR2", ((int)((P1 *)this)->lieuR2));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 56: // STATE 13 - ModeleDetaille.pml:82 - [(((((dirR2==1)&&(lieuR2==0))&&(((posR1!=(posR2+1))||(lieuR1!=1))||(dirR1!=dirR2)))&&(posR2<NS)))] (17:0:2 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		if (!(((((((P1 *)this)->dirR2==1)&&(((int)((P1 *)this)->lieuR2)==0))&&(((((P1 *)this)->posR1!=(((P1 *)this)->posR2+1))||(((int)((P1 *)this)->lieuR1)!=1))||(((P1 *)this)->dirR1!=((P1 *)this)->dirR2)))&&(((P1 *)this)->posR2<now.NS))))
			continue;
		/* merge: posR2 = (posR2+1)(17, 14, 17) */
		reached[1][14] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->posR2;
		((P1 *)this)->posR2 = (((P1 *)this)->posR2+1);
#ifdef VAR_RANGES
		logval("Rame2:posR2", ((P1 *)this)->posR2);
#endif
		;
		/* merge: lieuR2 = 1(17, 15, 17) */
		reached[1][15] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)this)->lieuR2);
		((P1 *)this)->lieuR2 = 1;
#ifdef VAR_RANGES
		logval("Rame2:lieuR2", ((int)((P1 *)this)->lieuR2));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 57: // STATE 18 - ModeleDetaille.pml:84 - [(((((dirR2==-(1))&&(lieuR2==0))&&(((posR1!=posR2)||(lieuR1!=1))||(dirR1!=dirR2)))&&(posR2>=1)))] (22:0:2 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		if (!(((((((P1 *)this)->dirR2== -(1))&&(((int)((P1 *)this)->lieuR2)==0))&&(((((P1 *)this)->posR1!=((P1 *)this)->posR2)||(((int)((P1 *)this)->lieuR1)!=1))||(((P1 *)this)->dirR1!=((P1 *)this)->dirR2)))&&(((P1 *)this)->posR2>=1))))
			continue;
		/* merge: posR2 = posR2(22, 19, 22) */
		reached[1][19] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->posR2;
		((P1 *)this)->posR2 = ((P1 *)this)->posR2;
#ifdef VAR_RANGES
		logval("Rame2:posR2", ((P1 *)this)->posR2);
#endif
		;
		/* merge: lieuR2 = 1(22, 20, 22) */
		reached[1][20] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)this)->lieuR2);
		((P1 *)this)->lieuR2 = 1;
#ifdef VAR_RANGES
		logval("Rame2:lieuR2", ((int)((P1 *)this)->lieuR2));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 58: // STATE 23 - ModeleDetaille.pml:89 - [(((portesR2==fermees)&&(lieuR2==1)))] (41:0:1 - 1)
		IfNotBlocked
		reached[1][23] = 1;
		if (!(((((P1 *)this)->portesR2==3)&&(((int)((P1 *)this)->lieuR2)==1))))
			continue;
		/* merge: portesR2 = ouvertes(0, 24, 41) */
		reached[1][24] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->portesR2;
		((P1 *)this)->portesR2 = 2;
#ifdef VAR_RANGES
		logval("Rame2:portesR2", ((P1 *)this)->portesR2);
#endif
		;
		/* merge: .(goto)(0, 42, 41) */
		reached[1][42] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 59: // STATE 26 - ModeleDetaille.pml:92 - [((portesR2==ouvertes))] (41:0:1 - 1)
		IfNotBlocked
		reached[1][26] = 1;
		if (!((((P1 *)this)->portesR2==2)))
			continue;
		/* merge: portesR2 = refermees(0, 27, 41) */
		reached[1][27] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->portesR2;
		((P1 *)this)->portesR2 = 1;
#ifdef VAR_RANGES
		logval("Rame2:portesR2", ((P1 *)this)->portesR2);
#endif
		;
		/* merge: .(goto)(0, 42, 41) */
		reached[1][42] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 60: // STATE 29 - ModeleDetaille.pml:95 - [((((dirR2==1)&&(posR2==NS))&&((posR2!=posR1)||(dirR1!=-(1)))))] (41:0:1 - 1)
		IfNotBlocked
		reached[1][29] = 1;
		if (!((((((P1 *)this)->dirR2==1)&&(((P1 *)this)->posR2==now.NS))&&((((P1 *)this)->posR2!=((P1 *)this)->posR1)||(((P1 *)this)->dirR1!= -(1))))))
			continue;
		/* merge: dirR2 = -(1)(0, 30, 41) */
		reached[1][30] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->dirR2;
		((P1 *)this)->dirR2 =  -(1);
#ifdef VAR_RANGES
		logval("Rame2:dirR2", ((P1 *)this)->dirR2);
#endif
		;
		/* merge: .(goto)(0, 42, 41) */
		reached[1][42] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 61: // STATE 32 - ModeleDetaille.pml:97 - [((((dirR2==-(1))&&(posR2==1))&&((posR2!=posR1)||(dirR1!=1))))] (41:0:1 - 1)
		IfNotBlocked
		reached[1][32] = 1;
		if (!((((((P1 *)this)->dirR2== -(1))&&(((P1 *)this)->posR2==1))&&((((P1 *)this)->posR2!=((P1 *)this)->posR1)||(((P1 *)this)->dirR1!=1)))))
			continue;
		/* merge: dirR2 = 1(0, 33, 41) */
		reached[1][33] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->dirR2;
		((P1 *)this)->dirR2 = 1;
#ifdef VAR_RANGES
		logval("Rame2:dirR2", ((P1 *)this)->dirR2);
#endif
		;
		/* merge: .(goto)(0, 42, 41) */
		reached[1][42] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 62: // STATE 35 - ModeleDetaille.pml:101 - [ReqR1!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][35] = 1;
		if (q_full(now.ReqR1))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.ReqR1);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.ReqR1, 0, 1, 0, 0, 1);
		if (q_zero(now.ReqR1)) { boq = now.ReqR1; };
		_m = 2; goto P999; /* 0 */
	case 63: // STATE 36 - ModeleDetaille.pml:101 - [R1ToR2?posR1,dirR1,lieuR1] (0:0:3 - 1)
		reached[1][36] = 1;
		if (q_zero(now.R1ToR2))
		{	if (boq != now.R1ToR2) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.R1ToR2) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->posR1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->dirR1;
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)this)->lieuR1);
		;
		((P1 *)this)->posR1 = qrecv(now.R1ToR2, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("Rame2:posR1", ((P1 *)this)->posR1);
#endif
		;
		((P1 *)this)->dirR1 = qrecv(now.R1ToR2, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("Rame2:dirR1", ((P1 *)this)->dirR1);
#endif
		;
		((P1 *)this)->lieuR1 = qrecv(now.R1ToR2, XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("Rame2:lieuR1", ((int)((P1 *)this)->lieuR1));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.R1ToR2);
		sprintf(simtmp, "%d", ((P1 *)this)->posR1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)this)->dirR1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->lieuR1)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.R1ToR2))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 64: // STATE 38 - ModeleDetaille.pml:104 - [ReqR2?1] (0:0:0 - 1)
		reached[1][38] = 1;
		if (q_zero(now.ReqR2))
		{	if (boq != now.ReqR2) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.ReqR2) == 0) continue;

		XX=1;
		if (1 != qrecv(now.ReqR2, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.ReqR2-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.ReqR2, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.ReqR2);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.ReqR2))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 65: // STATE 39 - ModeleDetaille.pml:104 - [R2ToR1!posR2,dirR2,lieuR2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][39] = 1;
		if (q_full(now.R2ToR1))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.R2ToR1);
		sprintf(simtmp, "%d", ((P1 *)this)->posR2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)this)->dirR2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->lieuR2)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.R2ToR1, 0, ((P1 *)this)->posR2, ((P1 *)this)->dirR2, ((int)((P1 *)this)->lieuR2), 3);
		if (q_zero(now.R2ToR1)) { boq = now.R2ToR1; };
		_m = 2; goto P999; /* 0 */
	case 66: // STATE 44 - ModeleDetaille.pml:107 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][44] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Rame1 */
	case 67: // STATE 1 - ModeleDetaille.pml:28 - [((((((dirR1==1)&&(lieuR1==1))&&(portesR1==refermees))&&(((posR2!=posR1)||(lieuR2!=0))||(dirR1!=dirR2)))&&(posR1<=NS)))] (6:0:3 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((((((P0 *)this)->dirR1==1)&&(((int)((P0 *)this)->lieuR1)==1))&&(((P0 *)this)->portesR1==1))&&(((((P0 *)this)->posR2!=((P0 *)this)->posR1)||(((int)((P0 *)this)->lieuR2)!=0))||(((P0 *)this)->dirR1!=((P0 *)this)->dirR2)))&&(((P0 *)this)->posR1<=now.NS))))
			continue;
		/* merge: portesR1 = fermees(6, 2, 6) */
		reached[0][2] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->portesR1;
		((P0 *)this)->portesR1 = 3;
#ifdef VAR_RANGES
		logval("Rame1:portesR1", ((P0 *)this)->portesR1);
#endif
		;
		/* merge: posR1 = posR1(6, 3, 6) */
		reached[0][3] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)this)->posR1;
		((P0 *)this)->posR1 = ((P0 *)this)->posR1;
#ifdef VAR_RANGES
		logval("Rame1:posR1", ((P0 *)this)->posR1);
#endif
		;
		/* merge: lieuR1 = 0(6, 4, 6) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)this)->lieuR1);
		((P0 *)this)->lieuR1 = 0;
#ifdef VAR_RANGES
		logval("Rame1:lieuR1", ((int)((P0 *)this)->lieuR1));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 68: // STATE 7 - ModeleDetaille.pml:30 - [((((((dirR1==-(1))&&(lieuR1==1))&&(portesR1==refermees))&&(((posR2!=(posR1-1))||(lieuR2!=0))||(dirR1!=dirR2)))&&(posR1>1)))] (12:0:3 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		if (!((((((((P0 *)this)->dirR1== -(1))&&(((int)((P0 *)this)->lieuR1)==1))&&(((P0 *)this)->portesR1==1))&&(((((P0 *)this)->posR2!=(((P0 *)this)->posR1-1))||(((int)((P0 *)this)->lieuR2)!=0))||(((P0 *)this)->dirR1!=((P0 *)this)->dirR2)))&&(((P0 *)this)->posR1>1))))
			continue;
		/* merge: portesR1 = fermees(12, 8, 12) */
		reached[0][8] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->portesR1;
		((P0 *)this)->portesR1 = 3;
#ifdef VAR_RANGES
		logval("Rame1:portesR1", ((P0 *)this)->portesR1);
#endif
		;
		/* merge: posR1 = (posR1-1)(12, 9, 12) */
		reached[0][9] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)this)->posR1;
		((P0 *)this)->posR1 = (((P0 *)this)->posR1-1);
#ifdef VAR_RANGES
		logval("Rame1:posR1", ((P0 *)this)->posR1);
#endif
		;
		/* merge: lieuR1 = 0(12, 10, 12) */
		reached[0][10] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)this)->lieuR1);
		((P0 *)this)->lieuR1 = 0;
#ifdef VAR_RANGES
		logval("Rame1:lieuR1", ((int)((P0 *)this)->lieuR1));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 69: // STATE 13 - ModeleDetaille.pml:34 - [(((((dirR1==1)&&(lieuR1==0))&&(((posR2!=(posR1+1))||(lieuR2!=1))||(dirR1!=dirR2)))&&(posR1<NS)))] (17:0:2 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		if (!(((((((P0 *)this)->dirR1==1)&&(((int)((P0 *)this)->lieuR1)==0))&&(((((P0 *)this)->posR2!=(((P0 *)this)->posR1+1))||(((int)((P0 *)this)->lieuR2)!=1))||(((P0 *)this)->dirR1!=((P0 *)this)->dirR2)))&&(((P0 *)this)->posR1<now.NS))))
			continue;
		/* merge: posR1 = (posR1+1)(17, 14, 17) */
		reached[0][14] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->posR1;
		((P0 *)this)->posR1 = (((P0 *)this)->posR1+1);
#ifdef VAR_RANGES
		logval("Rame1:posR1", ((P0 *)this)->posR1);
#endif
		;
		/* merge: lieuR1 = 1(17, 15, 17) */
		reached[0][15] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)this)->lieuR1);
		((P0 *)this)->lieuR1 = 1;
#ifdef VAR_RANGES
		logval("Rame1:lieuR1", ((int)((P0 *)this)->lieuR1));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 70: // STATE 18 - ModeleDetaille.pml:36 - [(((((dirR1==-(1))&&(lieuR1==0))&&(((posR2!=posR1)||(lieuR2!=1))||(dirR1!=dirR2)))&&(posR1>=1)))] (22:0:2 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		if (!(((((((P0 *)this)->dirR1== -(1))&&(((int)((P0 *)this)->lieuR1)==0))&&(((((P0 *)this)->posR2!=((P0 *)this)->posR1)||(((int)((P0 *)this)->lieuR2)!=1))||(((P0 *)this)->dirR1!=((P0 *)this)->dirR2)))&&(((P0 *)this)->posR1>=1))))
			continue;
		/* merge: posR1 = posR1(22, 19, 22) */
		reached[0][19] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->posR1;
		((P0 *)this)->posR1 = ((P0 *)this)->posR1;
#ifdef VAR_RANGES
		logval("Rame1:posR1", ((P0 *)this)->posR1);
#endif
		;
		/* merge: lieuR1 = 1(22, 20, 22) */
		reached[0][20] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)this)->lieuR1);
		((P0 *)this)->lieuR1 = 1;
#ifdef VAR_RANGES
		logval("Rame1:lieuR1", ((int)((P0 *)this)->lieuR1));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 71: // STATE 23 - ModeleDetaille.pml:40 - [(((portesR1==fermees)&&(lieuR1==1)))] (41:0:1 - 1)
		IfNotBlocked
		reached[0][23] = 1;
		if (!(((((P0 *)this)->portesR1==3)&&(((int)((P0 *)this)->lieuR1)==1))))
			continue;
		/* merge: portesR1 = ouvertes(0, 24, 41) */
		reached[0][24] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->portesR1;
		((P0 *)this)->portesR1 = 2;
#ifdef VAR_RANGES
		logval("Rame1:portesR1", ((P0 *)this)->portesR1);
#endif
		;
		/* merge: .(goto)(0, 42, 41) */
		reached[0][42] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 72: // STATE 26 - ModeleDetaille.pml:43 - [((portesR1==ouvertes))] (41:0:1 - 1)
		IfNotBlocked
		reached[0][26] = 1;
		if (!((((P0 *)this)->portesR1==2)))
			continue;
		/* merge: portesR1 = refermees(0, 27, 41) */
		reached[0][27] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->portesR1;
		((P0 *)this)->portesR1 = 1;
#ifdef VAR_RANGES
		logval("Rame1:portesR1", ((P0 *)this)->portesR1);
#endif
		;
		/* merge: .(goto)(0, 42, 41) */
		reached[0][42] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 73: // STATE 29 - ModeleDetaille.pml:46 - [(((((dirR1==1)&&(posR1==NS))&&(lieuR1==1))&&((posR2!=posR1)||(dirR2!=-(1)))))] (41:0:1 - 1)
		IfNotBlocked
		reached[0][29] = 1;
		if (!(((((((P0 *)this)->dirR1==1)&&(((P0 *)this)->posR1==now.NS))&&(((int)((P0 *)this)->lieuR1)==1))&&((((P0 *)this)->posR2!=((P0 *)this)->posR1)||(((P0 *)this)->dirR2!= -(1))))))
			continue;
		/* merge: dirR1 = -(1)(0, 30, 41) */
		reached[0][30] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->dirR1;
		((P0 *)this)->dirR1 =  -(1);
#ifdef VAR_RANGES
		logval("Rame1:dirR1", ((P0 *)this)->dirR1);
#endif
		;
		/* merge: .(goto)(0, 42, 41) */
		reached[0][42] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 74: // STATE 32 - ModeleDetaille.pml:48 - [(((((dirR1==-(1))&&(posR1==1))&&(lieuR1==1))&&((posR2!=posR1)||(dirR2!=1))))] (41:0:1 - 1)
		IfNotBlocked
		reached[0][32] = 1;
		if (!(((((((P0 *)this)->dirR1== -(1))&&(((P0 *)this)->posR1==1))&&(((int)((P0 *)this)->lieuR1)==1))&&((((P0 *)this)->posR2!=((P0 *)this)->posR1)||(((P0 *)this)->dirR2!=1)))))
			continue;
		/* merge: dirR1 = 1(0, 33, 41) */
		reached[0][33] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->dirR1;
		((P0 *)this)->dirR1 = 1;
#ifdef VAR_RANGES
		logval("Rame1:dirR1", ((P0 *)this)->dirR1);
#endif
		;
		/* merge: .(goto)(0, 42, 41) */
		reached[0][42] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 75: // STATE 35 - ModeleDetaille.pml:52 - [ReqR2!1] (0:0:0 - 1)
		IfNotBlocked
		reached[0][35] = 1;
		if (q_full(now.ReqR2))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.ReqR2);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.ReqR2, 0, 1, 0, 0, 1);
		if (q_zero(now.ReqR2)) { boq = now.ReqR2; };
		_m = 2; goto P999; /* 0 */
	case 76: // STATE 36 - ModeleDetaille.pml:52 - [R2ToR1?posR2,dirR2,lieuR2] (0:0:3 - 1)
		reached[0][36] = 1;
		if (q_zero(now.R2ToR1))
		{	if (boq != now.R2ToR1) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.R2ToR1) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->posR2;
		(trpt+1)->bup.ovals[1] = ((P0 *)this)->dirR2;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)this)->lieuR2);
		;
		((P0 *)this)->posR2 = qrecv(now.R2ToR1, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("Rame1:posR2", ((P0 *)this)->posR2);
#endif
		;
		((P0 *)this)->dirR2 = qrecv(now.R2ToR1, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("Rame1:dirR2", ((P0 *)this)->dirR2);
#endif
		;
		((P0 *)this)->lieuR2 = qrecv(now.R2ToR1, XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("Rame1:lieuR2", ((int)((P0 *)this)->lieuR2));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.R2ToR1);
		sprintf(simtmp, "%d", ((P0 *)this)->posR2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)this)->dirR2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->lieuR2)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.R2ToR1))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 77: // STATE 38 - ModeleDetaille.pml:55 - [ReqR1?1] (0:0:0 - 1)
		reached[0][38] = 1;
		if (q_zero(now.ReqR1))
		{	if (boq != now.ReqR1) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.ReqR1) == 0) continue;

		XX=1;
		if (1 != qrecv(now.ReqR1, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.ReqR1-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.ReqR1, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.ReqR1);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.ReqR1))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 78: // STATE 39 - ModeleDetaille.pml:55 - [R1ToR2!posR1,dirR1,lieuR1] (0:0:0 - 1)
		IfNotBlocked
		reached[0][39] = 1;
		if (q_full(now.R1ToR2))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.R1ToR2);
		sprintf(simtmp, "%d", ((P0 *)this)->posR1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)this)->dirR1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->lieuR1)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.R1ToR2, 0, ((P0 *)this)->posR1, ((P0 *)this)->dirR1, ((int)((P0 *)this)->lieuR1), 3);
		if (q_zero(now.R1ToR2)) { boq = now.R1ToR2; };
		_m = 2; goto P999; /* 0 */
	case 79: // STATE 44 - ModeleDetaille.pml:58 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][44] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

