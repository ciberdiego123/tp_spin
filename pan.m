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

		 /* CLAIM p6 */
	case 3: // STATE 1 - _spin_nvr.tmp:56 - [(!((dirR1==500)))] (0:0:0 - 1)
		
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
		if (!( !((now.dirR1==500))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 3 - _spin_nvr.tmp:57 - [(!(((posR2>=1)&&(posR2<=NS))))] (0:0:0 - 1)
		
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
		reached[4][3] = 1;
		if (!( !(((now.posR2>=1)&&(now.posR2<=now.NS)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 5 - _spin_nvr.tmp:58 - [(!(((posR1>=1)&&(posR1<=NS))))] (0:0:0 - 1)
		
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
		reached[4][5] = 1;
		if (!( !(((now.posR1>=1)&&(now.posR1<=now.NS)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 7 - _spin_nvr.tmp:59 - [(!(((dirR2==1)||(dirR2==-(1)))))] (0:0:0 - 1)
		
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
		reached[4][7] = 1;
		if (!( !(((now.dirR2==1)||(now.dirR2== -(1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 9 - _spin_nvr.tmp:60 - [(!(((dirR1==1)||(dirR1==-(1)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported9 = 0;
			if (verbose && !reported9)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported9 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported9 = 0;
			if (verbose && !reported9)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported9 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][9] = 1;
		if (!( !(((now.dirR1==1)||(now.dirR1== -(1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 16 - _spin_nvr.tmp:65 - [(!((dirR1==500)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported16 = 0;
			if (verbose && !reported16)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported16 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported16 = 0;
			if (verbose && !reported16)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported16 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][16] = 1;
		if (!( !((now.dirR1==500))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 21 - _spin_nvr.tmp:69 - [(!(((posR2>=1)&&(posR2<=NS))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported21 = 0;
			if (verbose && !reported21)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported21 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported21 = 0;
			if (verbose && !reported21)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported21 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][21] = 1;
		if (!( !(((now.posR2>=1)&&(now.posR2<=now.NS)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 26 - _spin_nvr.tmp:73 - [(!(((posR1>=1)&&(posR1<=NS))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported26 = 0;
			if (verbose && !reported26)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported26 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported26 = 0;
			if (verbose && !reported26)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported26 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][26] = 1;
		if (!( !(((now.posR1>=1)&&(now.posR1<=now.NS)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 31 - _spin_nvr.tmp:77 - [(!(((dirR2==1)||(dirR2==-(1)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported31 = 0;
			if (verbose && !reported31)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported31 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported31 = 0;
			if (verbose && !reported31)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported31 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][31] = 1;
		if (!( !(((now.dirR2==1)||(now.dirR2== -(1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 36 - _spin_nvr.tmp:81 - [(!(((dirR1==1)||(dirR1==-(1)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported36 = 0;
			if (verbose && !reported36)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported36 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported36 = 0;
			if (verbose && !reported36)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported36 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][36] = 1;
		if (!( !(((now.dirR1==1)||(now.dirR1== -(1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 41 - _spin_nvr.tmp:83 - [-end-] (0:0:0 - 1)
		
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
		reached[4][41] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM p5 */
	case 14: // STATE 1 - _spin_nvr.tmp:45 - [((!(!(((posR1<(NS-1))&&(dirR1==1))))&&!((posR1==(posR1+1)))))] (0:0:0 - 1)
		
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
		if (!(( !( !(((now.posR1<(now.NS-1))&&(now.dirR1==1))))&& !((now.posR1==(now.posR1+1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 8 - _spin_nvr.tmp:50 - [(!((posR1==(posR1+1))))] (0:0:0 - 1)
		
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
		reached[3][8] = 1;
		if (!( !((now.posR1==(now.posR1+1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 13 - _spin_nvr.tmp:52 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM p3 */
	case 17: // STATE 1 - _spin_nvr.tmp:12 - [(((!(!(((posR2!=NS)&&(dirR2==1))))&&!(((posR2==NS)&&(dirR2==-(1)))))&&(!(!(((posR1!=1)&&(dirR1==-(1)))))||(!(!(((posR1!=NS)&&(dirR1==1))))||(!(!(((posR2!=1)&&(dirR2==-(1)))))||!(!(((posR2!=NS)&&(dirR2==1)))))))))] (0:0:0 - 1)
		
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
		reached[2][1] = 1;
		if (!((( !( !(((now.posR2!=now.NS)&&(now.dirR2==1))))&& !(((now.posR2==now.NS)&&(now.dirR2== -(1)))))&&( !( !(((now.posR1!=1)&&(now.dirR1== -(1)))))||( !( !(((now.posR1!=now.NS)&&(now.dirR1==1))))||( !( !(((now.posR2!=1)&&(now.dirR2== -(1)))))|| !( !(((now.posR2!=now.NS)&&(now.dirR2==1))))))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 3 - _spin_nvr.tmp:13 - [((((!(!(((posR1!=1)&&(dirR1==-(1)))))&&!(((posR1==1)&&(dirR1==1))))&&!((dirR1==-(1))))||(((!(!(((posR1!=NS)&&(dirR1==1))))&&!(((posR1==NS)&&(dirR1==-(1)))))&&!((dirR1==1)))||(((!(!(((posR2!=1)&&(dirR2==-(1)))))&&!(((posR2==1)&&(dirR2==1))))&&!((dirR2==-(1))))||((!(!(((posR2!=NS)&&(dirR2==1))))&&!(((posR2==NS)&&(dirR2==-(1)))))&&!((dirR2==1)))))))] (14:0:0 - 1)
		
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
		reached[2][3] = 1;
		if (!(((( !( !(((now.posR1!=1)&&(now.dirR1== -(1)))))&& !(((now.posR1==1)&&(now.dirR1==1))))&& !((now.dirR1== -(1))))||((( !( !(((now.posR1!=now.NS)&&(now.dirR1==1))))&& !(((now.posR1==now.NS)&&(now.dirR1== -(1)))))&& !((now.dirR1==1)))||((( !( !(((now.posR2!=1)&&(now.dirR2== -(1)))))&& !(((now.posR2==1)&&(now.dirR2==1))))&& !((now.dirR2== -(1))))||(( !( !(((now.posR2!=now.NS)&&(now.dirR2==1))))&& !(((now.posR2==now.NS)&&(now.dirR2== -(1)))))&& !((now.dirR2==1))))))))
			continue;
		/* merge: assert(!((((!(!(((posR1!=1)&&(dirR1==-(1)))))&&!(((posR1==1)&&(dirR1==1))))&&!((dirR1==-(1))))||(((!(!(((posR1!=NS)&&(dirR1==1))))&&!(((posR1==NS)&&(dirR1==-(1)))))&&!((dirR1==1)))||(((!(!(((posR2!=1)&&(dirR2==-(1)))))&&!(((posR2==1)&&(dirR2==1))))&&!((dirR2==-(1))))||((!(!(((posR2!=NS)&&(dirR2==1))))&&!(((posR2==NS)&&(dirR2==-(1)))))&&!((dirR2==1))))))))(0, 4, 14) */
		reached[2][4] = 1;
		spin_assert( !(((( !( !(((now.posR1!=1)&&(now.dirR1== -(1)))))&& !(((now.posR1==1)&&(now.dirR1==1))))&& !((now.dirR1== -(1))))||((( !( !(((now.posR1!=now.NS)&&(now.dirR1==1))))&& !(((now.posR1==now.NS)&&(now.dirR1== -(1)))))&& !((now.dirR1==1)))||((( !( !(((now.posR2!=1)&&(now.dirR2== -(1)))))&& !(((now.posR2==1)&&(now.dirR2==1))))&& !((now.dirR2== -(1))))||(( !( !(((now.posR2!=now.NS)&&(now.dirR2==1))))&& !(((now.posR2==now.NS)&&(now.dirR2== -(1)))))&& !((now.dirR2==1))))))), " !(((( !( !(((posR1!=1)&&(dirR1== -(1)))))&& !(((posR1==1)&&(dirR1==1))))&& !((dirR1== -(1))))||((( !( !(((posR1!=NS)&&(dirR1==1))))&& !(((posR1==NS)&&(dirR1== -(1)))))&& !((dirR1==1)))||((( !( !(((posR2!=1)&&(dirR2== -(1)))))&& !(((posR2==1)&&(dirR2==1))))&& !((dirR2== -(1))))||(( !( !(((posR2!=NS)&&(dirR2==1))))&& !(((posR2==NS)&&(dirR2== -(1)))))&& !((dirR2==1)))))))", II, tt, t);
		/* merge: .(goto)(0, 15, 14) */
		reached[2][15] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 19: // STATE 6 - _spin_nvr.tmp:14 - [(((!(!(((posR2!=1)&&(dirR2==-(1)))))&&!(((posR2==1)&&(dirR2==1))))&&(!(!(((posR1!=1)&&(dirR1==-(1)))))||(!(!(((posR1!=NS)&&(dirR1==1))))||(!(!(((posR2!=1)&&(dirR2==-(1)))))||!(!(((posR2!=NS)&&(dirR2==1)))))))))] (0:0:0 - 1)
		
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
		reached[2][6] = 1;
		if (!((( !( !(((now.posR2!=1)&&(now.dirR2== -(1)))))&& !(((now.posR2==1)&&(now.dirR2==1))))&&( !( !(((now.posR1!=1)&&(now.dirR1== -(1)))))||( !( !(((now.posR1!=now.NS)&&(now.dirR1==1))))||( !( !(((now.posR2!=1)&&(now.dirR2== -(1)))))|| !( !(((now.posR2!=now.NS)&&(now.dirR2==1))))))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 8 - _spin_nvr.tmp:15 - [((!(!(((posR1!=NS)&&(dirR1==1))))&&!(((posR1==NS)&&(dirR1==-(1))))))] (0:0:0 - 1)
		
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
		reached[2][8] = 1;
		if (!(( !( !(((now.posR1!=now.NS)&&(now.dirR1==1))))&& !(((now.posR1==now.NS)&&(now.dirR1== -(1)))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 10 - _spin_nvr.tmp:16 - [((!(!(((posR1!=1)&&(dirR1==-(1)))))&&!(((posR1==1)&&(dirR1==1)))))] (0:0:0 - 1)
		
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
		reached[2][10] = 1;
		if (!(( !( !(((now.posR1!=1)&&(now.dirR1== -(1)))))&& !(((now.posR1==1)&&(now.dirR1==1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 17 - _spin_nvr.tmp:21 - [(!(((posR2==NS)&&(dirR2==-(1)))))] (0:0:0 - 1)
		
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
		reached[2][17] = 1;
		if (!( !(((now.posR2==now.NS)&&(now.dirR2== -(1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 19 - _spin_nvr.tmp:22 - [((!(((posR2==NS)&&(dirR2==-(1))))&&!((dirR2==1))))] (22:0:0 - 1)
		
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
		reached[2][19] = 1;
		if (!(( !(((now.posR2==now.NS)&&(now.dirR2== -(1))))&& !((now.dirR2==1)))))
			continue;
		/* merge: assert(!((!(((posR2==NS)&&(dirR2==-(1))))&&!((dirR2==1)))))(0, 20, 22) */
		reached[2][20] = 1;
		spin_assert( !(( !(((now.posR2==now.NS)&&(now.dirR2== -(1))))&& !((now.dirR2==1)))), " !(( !(((posR2==NS)&&(dirR2== -(1))))&& !((dirR2==1))))", II, tt, t);
		/* merge: .(goto)(0, 23, 22) */
		reached[2][23] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 24: // STATE 25 - _spin_nvr.tmp:26 - [(!(((posR2==1)&&(dirR2==1))))] (0:0:0 - 1)
		
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
		reached[2][25] = 1;
		if (!( !(((now.posR2==1)&&(now.dirR2==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 27 - _spin_nvr.tmp:27 - [((!(((posR2==1)&&(dirR2==1)))&&!((dirR2==-(1)))))] (30:0:0 - 1)
		
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
		reached[2][27] = 1;
		if (!(( !(((now.posR2==1)&&(now.dirR2==1)))&& !((now.dirR2== -(1))))))
			continue;
		/* merge: assert(!((!(((posR2==1)&&(dirR2==1)))&&!((dirR2==-(1))))))(0, 28, 30) */
		reached[2][28] = 1;
		spin_assert( !(( !(((now.posR2==1)&&(now.dirR2==1)))&& !((now.dirR2== -(1))))), " !(( !(((posR2==1)&&(dirR2==1)))&& !((dirR2== -(1)))))", II, tt, t);
		/* merge: .(goto)(0, 31, 30) */
		reached[2][31] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 26: // STATE 33 - _spin_nvr.tmp:31 - [(!(((posR1==NS)&&(dirR1==-(1)))))] (0:0:0 - 1)
		
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
		reached[2][33] = 1;
		if (!( !(((now.posR1==now.NS)&&(now.dirR1== -(1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 35 - _spin_nvr.tmp:32 - [((!(((posR1==NS)&&(dirR1==-(1))))&&!((dirR1==1))))] (38:0:0 - 1)
		
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
		reached[2][35] = 1;
		if (!(( !(((now.posR1==now.NS)&&(now.dirR1== -(1))))&& !((now.dirR1==1)))))
			continue;
		/* merge: assert(!((!(((posR1==NS)&&(dirR1==-(1))))&&!((dirR1==1)))))(0, 36, 38) */
		reached[2][36] = 1;
		spin_assert( !(( !(((now.posR1==now.NS)&&(now.dirR1== -(1))))&& !((now.dirR1==1)))), " !(( !(((posR1==NS)&&(dirR1== -(1))))&& !((dirR1==1))))", II, tt, t);
		/* merge: .(goto)(0, 39, 38) */
		reached[2][39] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 28: // STATE 41 - _spin_nvr.tmp:36 - [(!(((posR1==1)&&(dirR1==1))))] (0:0:0 - 1)
		
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
		reached[2][41] = 1;
		if (!( !(((now.posR1==1)&&(now.dirR1==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 43 - _spin_nvr.tmp:37 - [((!(((posR1==1)&&(dirR1==1)))&&!((dirR1==-(1)))))] (46:0:0 - 1)
		
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
		reached[2][43] = 1;
		if (!(( !(((now.posR1==1)&&(now.dirR1==1)))&& !((now.dirR1== -(1))))))
			continue;
		/* merge: assert(!((!(((posR1==1)&&(dirR1==1)))&&!((dirR1==-(1))))))(0, 44, 46) */
		reached[2][44] = 1;
		spin_assert( !(( !(((now.posR1==1)&&(now.dirR1==1)))&& !((now.dirR1== -(1))))), " !(( !(((posR1==1)&&(dirR1==1)))&& !((dirR1== -(1)))))", II, tt, t);
		/* merge: .(goto)(0, 47, 46) */
		reached[2][47] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 30: // STATE 50 - _spin_nvr.tmp:41 - [-end-] (0:0:0 - 1)
		
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
		reached[2][50] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM p0 */
	case 31: // STATE 1 - _spin_nvr.tmp:3 - [(!(((posR1!=posR2)||(dirR1!=dirR2))))] (6:0:0 - 1)
		
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
		reached[1][1] = 1;
		if (!( !(((now.posR1!=now.posR2)||(now.dirR1!=now.dirR2)))))
			continue;
		/* merge: assert(!(!(((posR1!=posR2)||(dirR1!=dirR2)))))(0, 2, 6) */
		reached[1][2] = 1;
		spin_assert( !( !(((now.posR1!=now.posR2)||(now.dirR1!=now.dirR2)))), " !( !(((posR1!=posR2)||(dirR1!=dirR2))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[1][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 32: // STATE 10 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1)
		
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
		reached[1][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 33: // STATE 1 - ModeleCentralise.pml:19 - [((((dirR1==1)&&((posR2!=(posR1+1))||(dirR1!=dirR2)))&&(posR1<NS)))] (4:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((now.dirR1==1)&&((now.posR2!=(now.posR1+1))||(now.dirR1!=now.dirR2)))&&(now.posR1<now.NS))))
			continue;
		/* merge: posR1 = (posR1+1)(0, 2, 4) */
		reached[0][2] = 1;
		(trpt+1)->bup.oval = now.posR1;
		now.posR1 = (now.posR1+1);
#ifdef VAR_RANGES
		logval("posR1", now.posR1);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 34: // STATE 5 - ModeleCentralise.pml:21 - [((((dirR1==-(1))&&((posR2!=(posR1-1))||(dirR1!=dirR2)))&&(posR1>1)))] (8:0:1 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		if (!((((now.dirR1== -(1))&&((now.posR2!=(now.posR1-1))||(now.dirR1!=now.dirR2)))&&(now.posR1>1))))
			continue;
		/* merge: posR1 = (posR1-1)(0, 6, 8) */
		reached[0][6] = 1;
		(trpt+1)->bup.oval = now.posR1;
		now.posR1 = (now.posR1-1);
#ifdef VAR_RANGES
		logval("posR1", now.posR1);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 35: // STATE 9 - ModeleCentralise.pml:25 - [((((dirR1==1)&&(posR1==NS))&&((posR2!=posR1)||(dirR2!=-(1)))))] (29:0:1 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		if (!((((now.dirR1==1)&&(now.posR1==now.NS))&&((now.posR2!=now.posR1)||(now.dirR2!= -(1))))))
			continue;
		/* merge: dirR1 = -(1)(0, 10, 29) */
		reached[0][10] = 1;
		(trpt+1)->bup.oval = now.dirR1;
		now.dirR1 =  -(1);
#ifdef VAR_RANGES
		logval("dirR1", now.dirR1);
#endif
		;
		/* merge: .(goto)(0, 30, 29) */
		reached[0][30] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 36: // STATE 12 - ModeleCentralise.pml:27 - [((((dirR1==-(1))&&(posR1==1))&&((posR2!=posR1)||(dirR2!=1))))] (29:0:1 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		if (!((((now.dirR1== -(1))&&(now.posR1==1))&&((now.posR2!=now.posR1)||(now.dirR2!=1)))))
			continue;
		/* merge: dirR1 = 1(0, 13, 29) */
		reached[0][13] = 1;
		(trpt+1)->bup.oval = now.dirR1;
		now.dirR1 = 1;
#ifdef VAR_RANGES
		logval("dirR1", now.dirR1);
#endif
		;
		/* merge: .(goto)(0, 30, 29) */
		reached[0][30] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 37: // STATE 15 - ModeleCentralise.pml:33 - [((((dirR2==1)&&((posR1!=(posR2+1))||(dirR1!=dirR2)))&&(posR2<NS)))] (18:0:1 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		if (!((((now.dirR2==1)&&((now.posR1!=(now.posR2+1))||(now.dirR1!=now.dirR2)))&&(now.posR2<now.NS))))
			continue;
		/* merge: posR2 = (posR2+1)(0, 16, 18) */
		reached[0][16] = 1;
		(trpt+1)->bup.oval = now.posR2;
		now.posR2 = (now.posR2+1);
#ifdef VAR_RANGES
		logval("posR2", now.posR2);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 38: // STATE 19 - ModeleCentralise.pml:35 - [((((dirR2==-(1))&&((posR1!=(posR2-1))||(dirR1!=dirR2)))&&(posR2>1)))] (22:0:1 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		if (!((((now.dirR2== -(1))&&((now.posR1!=(now.posR2-1))||(now.dirR1!=now.dirR2)))&&(now.posR2>1))))
			continue;
		/* merge: posR2 = (posR2-1)(0, 20, 22) */
		reached[0][20] = 1;
		(trpt+1)->bup.oval = now.posR2;
		now.posR2 = (now.posR2-1);
#ifdef VAR_RANGES
		logval("posR2", now.posR2);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 39: // STATE 23 - ModeleCentralise.pml:39 - [((((dirR2==1)&&(posR2==NS))&&((posR2!=posR1)||(dirR1!=-(1)))))] (29:0:1 - 1)
		IfNotBlocked
		reached[0][23] = 1;
		if (!((((now.dirR2==1)&&(now.posR2==now.NS))&&((now.posR2!=now.posR1)||(now.dirR1!= -(1))))))
			continue;
		/* merge: dirR2 = -(1)(0, 24, 29) */
		reached[0][24] = 1;
		(trpt+1)->bup.oval = now.dirR2;
		now.dirR2 =  -(1);
#ifdef VAR_RANGES
		logval("dirR2", now.dirR2);
#endif
		;
		/* merge: .(goto)(0, 30, 29) */
		reached[0][30] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 40: // STATE 26 - ModeleCentralise.pml:41 - [((((dirR2==-(1))&&(posR2==1))&&((posR2!=posR1)||(dirR1!=1))))] (29:0:1 - 1)
		IfNotBlocked
		reached[0][26] = 1;
		if (!((((now.dirR2== -(1))&&(now.posR2==1))&&((now.posR2!=now.posR1)||(now.dirR1!=1)))))
			continue;
		/* merge: dirR2 = 1(0, 27, 29) */
		reached[0][27] = 1;
		(trpt+1)->bup.oval = now.dirR2;
		now.dirR2 = 1;
#ifdef VAR_RANGES
		logval("dirR2", now.dirR2);
#endif
		;
		/* merge: .(goto)(0, 30, 29) */
		reached[0][30] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 41: // STATE 32 - ModeleCentralise.pml:44 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][32] = 1;
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

