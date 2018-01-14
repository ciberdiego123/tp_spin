#ifdef PEG
struct T_SRC {
	char *fl; int ln;
} T_SRC[NTRANS];

void
tr_2_src(int m, char *file, int ln)
{	T_SRC[m].fl = file;
	T_SRC[m].ln = ln;
}

void
putpeg(int n, int m)
{	printf("%5d	trans %4d ", m, n);
	printf("%s:%d\n",
		T_SRC[n].fl, T_SRC[n].ln);
}
#endif

void
settable(void)
{	Trans *T;
	Trans *settr(int, int, int, int, int, char *, int, int, int);

	trans = (Trans ***) emalloc(12*sizeof(Trans **));

	/* proctype 10: p8 */

	trans[10] = (Trans **) emalloc(21*sizeof(Trans *));

	trans[10][8]	= settr(267,0,7,1,0,".(goto)", 0, 2, 0);
	T = trans[10][7] = settr(266,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(266,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(266,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(266,0,5,0,0,"DO", 0, 2, 0);
	trans[10][1]	= settr(260,0,12,3,0,"((!(!(((Rame2.lieuR2==1)&&(Rame2.portesR2==fermees))))&&!((Rame2.portesR2==ouvertes))))", 1, 2, 0);
	trans[10][2]	= settr(261,0,12,1,0,"goto accept_S5", 0, 2, 0);
	trans[10][3]	= settr(262,0,17,4,0,"((!(!(((Rame1.lieuR1==1)&&(Rame1.portesR1==fermees))))&&!((Rame1.portesR1==ouvertes))))", 1, 2, 0);
	trans[10][4]	= settr(263,0,17,1,0,"goto accept_S10", 0, 2, 0);
	trans[10][5]	= settr(264,0,7,1,0,"(1)", 0, 2, 0);
	trans[10][6]	= settr(265,0,7,1,0,"goto T0_init", 0, 2, 0);
	trans[10][9]	= settr(268,0,12,1,0,"break", 0, 2, 0);
	trans[10][13]	= settr(272,0,12,1,0,".(goto)", 0, 2, 0);
	T = trans[10][12] = settr(271,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(271,0,10,0,0,"DO", 0, 2, 0);
	trans[10][10]	= settr(269,0,12,5,0,"(!((Rame2.portesR2==ouvertes)))", 1, 2, 0);
	trans[10][11]	= settr(270,0,12,1,0,"goto accept_S5", 0, 2, 0);
	trans[10][14]	= settr(273,0,17,1,0,"break", 0, 2, 0);
	trans[10][18]	= settr(277,0,17,1,0,".(goto)", 0, 2, 0);
	T = trans[10][17] = settr(276,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(276,0,15,0,0,"DO", 0, 2, 0);
	trans[10][15]	= settr(274,0,17,6,0,"(!((Rame1.portesR1==ouvertes)))", 1, 2, 0);
	trans[10][16]	= settr(275,0,17,1,0,"goto accept_S10", 0, 2, 0);
	trans[10][19]	= settr(278,0,20,1,0,"break", 0, 2, 0);
	trans[10][20]	= settr(279,0,0,7,7,"-end-", 0, 3500, 0);

	/* proctype 9: p7 */

	trans[9] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[9][7]	= settr(256,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[9][6] = settr(255,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(255,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(255,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 9][3] = settr(252,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(252,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[9][1]	= settr(250,0,6,8,8,"((!((!((Rame1.lieuR1==0))||(Rame1.portesR1==fermees)))||!((!((Rame2.lieuR2==0))||(Rame2.portesR2==fermees)))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached9[2] = 1;
	trans[9][2]	= settr(0,0,0,0,0,"assert(!((!((!((Rame1.lieuR1==0))||(Rame1.portesR1==fermees)))||!((!((Rame2.lieuR2==0))||(Rame2.portesR2==fermees))))))",0,0,0);
	trans[9][4]	= settr(253,0,6,1,0,"(1)", 0, 2, 0);
	trans[9][5]	= settr(254,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[9][8]	= settr(257,0,9,1,0,"break", 0, 2, 0);
	trans[9][9]	= settr(258,0,10,1,0,"(1)", 0, 2, 0);
	trans[9][10]	= settr(259,0,0,9,9,"-end-", 0, 3500, 0);

	/* proctype 8: p6 */

	trans[8] = (Trans **) emalloc(35*sizeof(Trans *));

	trans[8][12]	= settr(227,0,11,1,0,".(goto)", 0, 2, 0);
	T = trans[8][11] = settr(226,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(226,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(226,0,3,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(226,0,5,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(226,0,7,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(226,0,9,0,0,"DO", 0, 2, 0);
	trans[8][1]	= settr(216,0,16,10,0,"(!(((Rame2.posR2>=1)&&(Rame2.posR2<=NS))))", 1, 2, 0);
	trans[8][2]	= settr(217,0,16,1,0,"goto accept_S7", 0, 2, 0);
	trans[8][3]	= settr(218,0,21,11,0,"(!(((Rame2.dirR2==1)||(Rame2.dirR2==-(1)))))", 1, 2, 0);
	trans[8][4]	= settr(219,0,21,1,0,"goto accept_S12", 0, 2, 0);
	trans[8][5]	= settr(220,0,26,12,0,"(!(((Rame1.posR1>=1)&&(Rame1.posR1<=NS))))", 1, 2, 0);
	trans[8][6]	= settr(221,0,26,1,0,"goto accept_S17", 0, 2, 0);
	trans[8][7]	= settr(222,0,31,13,0,"(!(((Rame1.dirR1==1)||(Rame1.dirR1==-(1)))))", 1, 2, 0);
	trans[8][8]	= settr(223,0,31,1,0,"goto accept_S22", 0, 2, 0);
	trans[8][9]	= settr(224,0,11,1,0,"(1)", 0, 2, 0);
	trans[8][10]	= settr(225,0,11,1,0,"goto T0_init", 0, 2, 0);
	trans[8][13]	= settr(228,0,16,1,0,"break", 0, 2, 0);
	trans[8][17]	= settr(232,0,16,1,0,".(goto)", 0, 2, 0);
	T = trans[8][16] = settr(231,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(231,0,14,0,0,"DO", 0, 2, 0);
	trans[8][14]	= settr(229,0,16,14,0,"(!(((Rame2.posR2>=1)&&(Rame2.posR2<=NS))))", 1, 2, 0);
	trans[8][15]	= settr(230,0,16,1,0,"goto accept_S7", 0, 2, 0);
	trans[8][18]	= settr(233,0,21,1,0,"break", 0, 2, 0);
	trans[8][22]	= settr(237,0,21,1,0,".(goto)", 0, 2, 0);
	T = trans[8][21] = settr(236,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(236,0,19,0,0,"DO", 0, 2, 0);
	trans[8][19]	= settr(234,0,21,15,0,"(!(((Rame2.dirR2==1)||(Rame2.dirR2==-(1)))))", 1, 2, 0);
	trans[8][20]	= settr(235,0,21,1,0,"goto accept_S12", 0, 2, 0);
	trans[8][23]	= settr(238,0,26,1,0,"break", 0, 2, 0);
	trans[8][27]	= settr(242,0,26,1,0,".(goto)", 0, 2, 0);
	T = trans[8][26] = settr(241,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(241,0,24,0,0,"DO", 0, 2, 0);
	trans[8][24]	= settr(239,0,26,16,0,"(!(((Rame1.posR1>=1)&&(Rame1.posR1<=NS))))", 1, 2, 0);
	trans[8][25]	= settr(240,0,26,1,0,"goto accept_S17", 0, 2, 0);
	trans[8][28]	= settr(243,0,31,1,0,"break", 0, 2, 0);
	trans[8][32]	= settr(247,0,31,1,0,".(goto)", 0, 2, 0);
	T = trans[8][31] = settr(246,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(246,0,29,0,0,"DO", 0, 2, 0);
	trans[8][29]	= settr(244,0,31,17,0,"(!(((Rame1.dirR1==1)||(Rame1.dirR1==-(1)))))", 1, 2, 0);
	trans[8][30]	= settr(245,0,31,1,0,"goto accept_S22", 0, 2, 0);
	trans[8][33]	= settr(248,0,34,1,0,"break", 0, 2, 0);
	trans[8][34]	= settr(249,0,0,18,18,"-end-", 0, 3500, 0);

	/* proctype 7: p5 */

	trans[7] = (Trans **) emalloc(21*sizeof(Trans *));

	trans[7][8]	= settr(203,0,7,1,0,".(goto)", 0, 2, 0);
	T = trans[7][7] = settr(202,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(202,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(202,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(202,0,5,0,0,"DO", 0, 2, 0);
	trans[7][1]	= settr(196,0,12,19,0,"((!(!(((Rame2.posR2<(NS-1))&&(Rame2.dirR2==1))))&&!((Rame2.posR2==(NS-1)))))", 1, 2, 0);
	trans[7][2]	= settr(197,0,12,1,0,"goto accept_S5", 0, 2, 0);
	trans[7][3]	= settr(198,0,17,20,0,"((!(!(((Rame1.posR1<(NS-1))&&(Rame1.dirR1==1))))&&!((Rame1.posR1==(NS-1)))))", 1, 2, 0);
	trans[7][4]	= settr(199,0,17,1,0,"goto accept_S10", 0, 2, 0);
	trans[7][5]	= settr(200,0,7,1,0,"(1)", 0, 2, 0);
	trans[7][6]	= settr(201,0,7,1,0,"goto T0_init", 0, 2, 0);
	trans[7][9]	= settr(204,0,12,1,0,"break", 0, 2, 0);
	trans[7][13]	= settr(208,0,12,1,0,".(goto)", 0, 2, 0);
	T = trans[7][12] = settr(207,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(207,0,10,0,0,"DO", 0, 2, 0);
	trans[7][10]	= settr(205,0,12,21,0,"(!((Rame2.posR2==(NS-1))))", 1, 2, 0);
	trans[7][11]	= settr(206,0,12,1,0,"goto accept_S5", 0, 2, 0);
	trans[7][14]	= settr(209,0,17,1,0,"break", 0, 2, 0);
	trans[7][18]	= settr(213,0,17,1,0,".(goto)", 0, 2, 0);
	T = trans[7][17] = settr(212,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(212,0,15,0,0,"DO", 0, 2, 0);
	trans[7][15]	= settr(210,0,17,22,0,"(!((Rame1.posR1==(NS-1))))", 1, 2, 0);
	trans[7][16]	= settr(211,0,17,1,0,"goto accept_S10", 0, 2, 0);
	trans[7][19]	= settr(214,0,20,1,0,"break", 0, 2, 0);
	trans[7][20]	= settr(215,0,0,23,23,"-end-", 0, 3500, 0);

	/* proctype 6: p4 */

	trans[6] = (Trans **) emalloc(35*sizeof(Trans *));

	trans[6][12]	= settr(173,0,11,1,0,".(goto)", 0, 2, 0);
	T = trans[6][11] = settr(172,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(172,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(172,0,3,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(172,0,5,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(172,0,7,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(172,0,9,0,0,"DO", 0, 2, 0);
	trans[6][1]	= settr(162,0,16,24,0,"(((!(!(((Rame2.posR2<NS)&&(Rame2.dirR2==1))))&&!((Rame2.posR2==NS)))&&(!(!(((Rame1.posR1<NS)&&(Rame1.dirR1==1))))||(!(!(((Rame1.posR1>1)&&(Rame1.dirR1==-(1)))))||(!(!(((Rame2.posR2<NS)&&(Rame2.dirR2==1))))||!(!(((Rame2.posR2>1)&&(Rame2.dirR2==-(1))))))))))", 1, 2, 0);
	trans[6][2]	= settr(163,0,16,1,0,"goto accept_S7", 0, 2, 0);
	trans[6][3]	= settr(164,0,21,25,0,"(((!(!(((Rame2.posR2>1)&&(Rame2.dirR2==-(1)))))&&!((Rame2.posR2==1)))&&(!(!(((Rame1.posR1<NS)&&(Rame1.dirR1==1))))||(!(!(((Rame1.posR1>1)&&(Rame1.dirR1==-(1)))))||(!(!(((Rame2.posR2<NS)&&(Rame2.dirR2==1))))||!(!(((Rame2.posR2>1)&&(Rame2.dirR2==-(1))))))))))", 1, 2, 0);
	trans[6][4]	= settr(165,0,21,1,0,"goto accept_S12", 0, 2, 0);
	trans[6][5]	= settr(166,0,26,26,0,"((!(!(((Rame1.posR1<NS)&&(Rame1.dirR1==1))))&&!((Rame1.posR1==NS))))", 1, 2, 0);
	trans[6][6]	= settr(167,0,26,1,0,"goto accept_S17", 0, 2, 0);
	trans[6][7]	= settr(168,0,31,27,0,"((!(!(((Rame1.posR1>1)&&(Rame1.dirR1==-(1)))))&&!((Rame1.posR1==1))))", 1, 2, 0);
	trans[6][8]	= settr(169,0,31,1,0,"goto accept_S22", 0, 2, 0);
	trans[6][9]	= settr(170,0,11,1,0,"(1)", 0, 2, 0);
	trans[6][10]	= settr(171,0,11,1,0,"goto T0_init", 0, 2, 0);
	trans[6][13]	= settr(174,0,16,1,0,"break", 0, 2, 0);
	trans[6][17]	= settr(178,0,16,1,0,".(goto)", 0, 2, 0);
	T = trans[6][16] = settr(177,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(177,0,14,0,0,"DO", 0, 2, 0);
	trans[6][14]	= settr(175,0,16,28,0,"(!((Rame2.posR2==NS)))", 1, 2, 0);
	trans[6][15]	= settr(176,0,16,1,0,"goto accept_S7", 0, 2, 0);
	trans[6][18]	= settr(179,0,21,1,0,"break", 0, 2, 0);
	trans[6][22]	= settr(183,0,21,1,0,".(goto)", 0, 2, 0);
	T = trans[6][21] = settr(182,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(182,0,19,0,0,"DO", 0, 2, 0);
	trans[6][19]	= settr(180,0,21,29,0,"(!((Rame2.posR2==1)))", 1, 2, 0);
	trans[6][20]	= settr(181,0,21,1,0,"goto accept_S12", 0, 2, 0);
	trans[6][23]	= settr(184,0,26,1,0,"break", 0, 2, 0);
	trans[6][27]	= settr(188,0,26,1,0,".(goto)", 0, 2, 0);
	T = trans[6][26] = settr(187,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(187,0,24,0,0,"DO", 0, 2, 0);
	trans[6][24]	= settr(185,0,26,30,0,"(!((Rame1.posR1==NS)))", 1, 2, 0);
	trans[6][25]	= settr(186,0,26,1,0,"goto accept_S17", 0, 2, 0);
	trans[6][28]	= settr(189,0,31,1,0,"break", 0, 2, 0);
	trans[6][32]	= settr(193,0,31,1,0,".(goto)", 0, 2, 0);
	T = trans[6][31] = settr(192,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(192,0,29,0,0,"DO", 0, 2, 0);
	trans[6][29]	= settr(190,0,31,31,0,"(!((Rame1.posR1==1)))", 1, 2, 0);
	trans[6][30]	= settr(191,0,31,1,0,"goto accept_S22", 0, 2, 0);
	trans[6][33]	= settr(194,0,34,1,0,"break", 0, 2, 0);
	trans[6][34]	= settr(195,0,0,32,32,"-end-", 0, 3500, 0);

	/* proctype 5: p3 */

	trans[5] = (Trans **) emalloc(51*sizeof(Trans *));

	trans[5][15]	= settr(126,0,14,1,0,".(goto)", 0, 2, 0);
	T = trans[5][14] = settr(125,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(125,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(125,0,5,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(125,0,6,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(125,0,8,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(125,0,10,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(125,0,12,0,0,"DO", 0, 2, 0);
	trans[5][1]	= settr(112,0,22,33,0,"(((!(!(((Rame2.posR2!=NS)&&(Rame2.dirR2==1))))&&!(((Rame2.posR2==NS)&&(Rame2.dirR2==-(1)))))&&(!(!(((Rame1.posR1!=1)&&(Rame1.dirR1==-(1)))))||(!(!(((Rame1.posR1!=NS)&&(Rame1.dirR1==1))))||(!(!(((Rame2.posR2!=1)&&(Rame2.dirR2==-(1)))))||!(!(((Rame2.posR2!=NS)&&(Rame2.dirR2==1)))))))))", 1, 2, 0);
	trans[5][2]	= settr(113,0,22,1,0,"goto accept_S7", 0, 2, 0);
	T = trans[ 5][5] = settr(116,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(116,2,3,0,0,"ATOMIC", 1, 2, 0);
	trans[5][3]	= settr(114,0,14,34,34,"((((!(!(((Rame1.posR1!=1)&&(Rame1.dirR1==-(1)))))&&!(((Rame1.posR1==1)&&(Rame1.dirR1==1))))&&!((Rame1.dirR1==-(1))))||(((!(!(((Rame1.posR1!=NS)&&(Rame1.dirR1==1))))&&!(((Rame1.posR1==NS)&&(Rame1.dirR1==-(1)))))&&!((Rame1.dirR1==1)))||(((!(!(((Rame2.posR2!=1)&&(Rame2.dirR2==-(1)))))&&!(((Rame2.posR2==1)&&(Rame2.dirR2==1))))&&!((Rame2.dirR2==-(1))))||((!(!(((Rame2.posR2!=NS)&&(Rame2.dirR2==1))))&&!(((Rame2.posR2==NS)&&(Rame2.dirR2==-(1)))))&&!((Rame2.dirR2==1)))))))", 1, 2, 0); /* m: 4 -> 14,0 */
	reached5[4] = 1;
	trans[5][4]	= settr(0,0,0,0,0,"assert(!((((!(!(((Rame1.posR1!=1)&&(Rame1.dirR1==-(1)))))&&!(((Rame1.posR1==1)&&(Rame1.dirR1==1))))&&!((Rame1.dirR1==-(1))))||(((!(!(((Rame1.posR1!=NS)&&(Rame1.dirR1==1))))&&!(((Rame1.posR1==NS)&&(Rame1.dirR1==-(1)))))&&!((Rame1.dirR1==1)))||(((!(!(((Rame2.posR2!=1)&&(Rame2.dirR2==-(1)))))&&!(((Rame2.posR2==1)&&(Rame2.dirR2==1))))&&!((Rame2.dirR2==-(1))))||((!(!(((Rame2.posR2!=NS)&&(Rame2.dirR2==1))))&&!(((Rame2.posR2==NS)&&(Rame2.dirR2==-(1)))))&&!((Rame2.dirR2==1))))))))",0,0,0);
	trans[5][6]	= settr(117,0,30,35,0,"(((!(!(((Rame2.posR2!=1)&&(Rame2.dirR2==-(1)))))&&!(((Rame2.posR2==1)&&(Rame2.dirR2==1))))&&(!(!(((Rame1.posR1!=1)&&(Rame1.dirR1==-(1)))))||(!(!(((Rame1.posR1!=NS)&&(Rame1.dirR1==1))))||(!(!(((Rame2.posR2!=1)&&(Rame2.dirR2==-(1)))))||!(!(((Rame2.posR2!=NS)&&(Rame2.dirR2==1)))))))))", 1, 2, 0);
	trans[5][7]	= settr(118,0,30,1,0,"goto accept_S12", 0, 2, 0);
	trans[5][8]	= settr(119,0,38,36,0,"((!(!(((Rame1.posR1!=NS)&&(Rame1.dirR1==1))))&&!(((Rame1.posR1==NS)&&(Rame1.dirR1==-(1))))))", 1, 2, 0);
	trans[5][9]	= settr(120,0,38,1,0,"goto accept_S17", 0, 2, 0);
	trans[5][10]	= settr(121,0,46,37,0,"((!(!(((Rame1.posR1!=1)&&(Rame1.dirR1==-(1)))))&&!(((Rame1.posR1==1)&&(Rame1.dirR1==1)))))", 1, 2, 0);
	trans[5][11]	= settr(122,0,46,1,0,"goto accept_S22", 0, 2, 0);
	trans[5][12]	= settr(123,0,14,1,0,"(1)", 0, 2, 0);
	trans[5][13]	= settr(124,0,14,1,0,"goto T0_init", 0, 2, 0);
	trans[5][16]	= settr(127,0,22,1,0,"break", 0, 2, 0);
	trans[5][23]	= settr(134,0,22,1,0,".(goto)", 0, 2, 0);
	T = trans[5][22] = settr(133,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(133,0,17,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(133,0,21,0,0,"DO", 0, 2, 0);
	trans[5][17]	= settr(128,0,22,38,0,"(!(((Rame2.posR2==NS)&&(Rame2.dirR2==-(1)))))", 1, 2, 0);
	trans[5][18]	= settr(129,0,22,1,0,"goto accept_S7", 0, 2, 0);
	T = trans[ 5][21] = settr(132,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(132,2,19,0,0,"ATOMIC", 1, 2, 0);
	trans[5][19]	= settr(130,0,22,39,39,"((!(((Rame2.posR2==NS)&&(Rame2.dirR2==-(1))))&&!((Rame2.dirR2==1))))", 1, 2, 0); /* m: 20 -> 22,0 */
	reached5[20] = 1;
	trans[5][20]	= settr(0,0,0,0,0,"assert(!((!(((Rame2.posR2==NS)&&(Rame2.dirR2==-(1))))&&!((Rame2.dirR2==1)))))",0,0,0);
	trans[5][24]	= settr(135,0,30,1,0,"break", 0, 2, 0);
	trans[5][31]	= settr(142,0,30,1,0,".(goto)", 0, 2, 0);
	T = trans[5][30] = settr(141,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(141,0,25,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(141,0,29,0,0,"DO", 0, 2, 0);
	trans[5][25]	= settr(136,0,30,40,0,"(!(((Rame2.posR2==1)&&(Rame2.dirR2==1))))", 1, 2, 0);
	trans[5][26]	= settr(137,0,30,1,0,"goto accept_S12", 0, 2, 0);
	T = trans[ 5][29] = settr(140,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(140,2,27,0,0,"ATOMIC", 1, 2, 0);
	trans[5][27]	= settr(138,0,30,41,41,"((!(((Rame2.posR2==1)&&(Rame2.dirR2==1)))&&!((Rame2.dirR2==-(1)))))", 1, 2, 0); /* m: 28 -> 30,0 */
	reached5[28] = 1;
	trans[5][28]	= settr(0,0,0,0,0,"assert(!((!(((Rame2.posR2==1)&&(Rame2.dirR2==1)))&&!((Rame2.dirR2==-(1))))))",0,0,0);
	trans[5][32]	= settr(143,0,38,1,0,"break", 0, 2, 0);
	trans[5][39]	= settr(150,0,38,1,0,".(goto)", 0, 2, 0);
	T = trans[5][38] = settr(149,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(149,0,33,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(149,0,37,0,0,"DO", 0, 2, 0);
	trans[5][33]	= settr(144,0,38,42,0,"(!(((Rame1.posR1==NS)&&(Rame1.dirR1==-(1)))))", 1, 2, 0);
	trans[5][34]	= settr(145,0,38,1,0,"goto accept_S17", 0, 2, 0);
	T = trans[ 5][37] = settr(148,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(148,2,35,0,0,"ATOMIC", 1, 2, 0);
	trans[5][35]	= settr(146,0,38,43,43,"((!(((Rame1.posR1==NS)&&(Rame1.dirR1==-(1))))&&!((Rame1.dirR1==1))))", 1, 2, 0); /* m: 36 -> 38,0 */
	reached5[36] = 1;
	trans[5][36]	= settr(0,0,0,0,0,"assert(!((!(((Rame1.posR1==NS)&&(Rame1.dirR1==-(1))))&&!((Rame1.dirR1==1)))))",0,0,0);
	trans[5][40]	= settr(151,0,46,1,0,"break", 0, 2, 0);
	trans[5][47]	= settr(158,0,46,1,0,".(goto)", 0, 2, 0);
	T = trans[5][46] = settr(157,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(157,0,41,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(157,0,45,0,0,"DO", 0, 2, 0);
	trans[5][41]	= settr(152,0,46,44,0,"(!(((Rame1.posR1==1)&&(Rame1.dirR1==1))))", 1, 2, 0);
	trans[5][42]	= settr(153,0,46,1,0,"goto accept_S22", 0, 2, 0);
	T = trans[ 5][45] = settr(156,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(156,2,43,0,0,"ATOMIC", 1, 2, 0);
	trans[5][43]	= settr(154,0,46,45,45,"((!(((Rame1.posR1==1)&&(Rame1.dirR1==1)))&&!((Rame1.dirR1==-(1)))))", 1, 2, 0); /* m: 44 -> 46,0 */
	reached5[44] = 1;
	trans[5][44]	= settr(0,0,0,0,0,"assert(!((!(((Rame1.posR1==1)&&(Rame1.dirR1==1)))&&!((Rame1.dirR1==-(1))))))",0,0,0);
	trans[5][48]	= settr(159,0,49,1,0,"break", 0, 2, 0);
	trans[5][49]	= settr(160,0,50,1,0,"(1)", 0, 2, 0);
	trans[5][50]	= settr(161,0,0,46,46,"-end-", 0, 3500, 0);

	/* proctype 4: p0 */

	trans[4] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[4][7]	= settr(108,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[4][6] = settr(107,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(107,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(107,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 4][3] = settr(104,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(104,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[4][1]	= settr(102,0,6,47,47,"(!(((Rame1.posR1!=Rame2.posR2)||(Rame1.dirR1!=Rame2.dirR2))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached4[2] = 1;
	trans[4][2]	= settr(0,0,0,0,0,"assert(!(!(((Rame1.posR1!=Rame2.posR2)||(Rame1.dirR1!=Rame2.dirR2)))))",0,0,0);
	trans[4][4]	= settr(105,0,6,1,0,"(1)", 0, 2, 0);
	trans[4][5]	= settr(106,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[4][8]	= settr(109,0,9,1,0,"break", 0, 2, 0);
	trans[4][9]	= settr(110,0,10,1,0,"(1)", 0, 2, 0);
	trans[4][10]	= settr(111,0,0,48,48,"-end-", 0, 3500, 0);

	/* proctype 3: pp */

	trans[3] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[3][7]	= settr(98,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[3][6] = settr(97,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(97,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(97,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 3][3] = settr(94,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(94,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[3][1]	= settr(92,0,6,49,49,"(!((Rame1.posR1>=1)))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached3[2] = 1;
	trans[3][2]	= settr(0,0,0,0,0,"assert(!(!((Rame1.posR1>=1))))",0,0,0);
	trans[3][4]	= settr(95,0,6,1,0,"(1)", 0, 2, 0);
	trans[3][5]	= settr(96,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[3][8]	= settr(99,0,9,1,0,"break", 0, 2, 0);
	trans[3][9]	= settr(100,0,10,1,0,"(1)", 0, 2, 0);
	trans[3][10]	= settr(101,0,0,50,50,"-end-", 0, 3500, 0);

	/* proctype 2: :init: */

	trans[2] = (Trans **) emalloc(5*sizeof(Trans *));

	T = trans[ 2][3] = settr(90,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(90,2,1,0,0,"ATOMIC", 0, 2, 0);
	trans[2][1]	= settr(88,2,2,51,51,"(run Rame1())", 0, 2, 0);
	trans[2][2]	= settr(89,0,4,52,52,"(run Rame2())", 0, 2, 0);
	trans[2][4]	= settr(91,0,0,53,53,"-end-", 0, 3500, 0);

	/* proctype 1: Rame2 */

	trans[1] = (Trans **) emalloc(45*sizeof(Trans *));

	trans[1][42]	= settr(85,0,41,1,0,".(goto)", 0, 2, 0);
	T = trans[1][41] = settr(84,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(84,0,5,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(84,0,11,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(84,0,16,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(84,0,21,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(84,0,25,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(84,0,28,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(84,0,31,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(84,0,34,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(84,0,37,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(84,0,40,0,0,"DO", 0, 2, 0);
	T = trans[ 1][5] = settr(48,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(48,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[1][1]	= settr(44,4,6,54,54,"((((((dirR2==1)&&(lieuR2==1))&&(portesR2==refermees))&&(((posR1!=posR2)||(lieuR1!=0))||(dirR1!=dirR2)))&&(posR2<=NS)))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached1[2] = 1;
	trans[1][2]	= settr(0,0,0,0,0,"portesR2 = fermees",0,0,0);
	trans[1][3]	= settr(0,0,0,0,0,"posR2 = posR2",0,0,0);
	trans[1][4]	= settr(0,0,0,0,0,"lieuR2 = 0",0,0,0);
	trans[1][6]	= settr(49,0,41,1,0,"(1)", 0, 2, 0);
	T = trans[ 1][11] = settr(54,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(54,2,7,0,0,"ATOMIC", 0, 2, 0);
	trans[1][7]	= settr(50,4,12,55,55,"((((((dirR2==-(1))&&(lieuR1==1))&&(portesR2==refermees))&&(((posR2!=(posR1-1))||(lieuR1!=0))||(dirR1!=dirR2)))&&(posR2>1)))", 0, 2, 0); /* m: 8 -> 12,0 */
	reached1[8] = 1;
	trans[1][8]	= settr(0,0,0,0,0,"portesR2 = fermees",0,0,0);
	trans[1][9]	= settr(0,0,0,0,0,"posR2 = (posR2-1)",0,0,0);
	trans[1][10]	= settr(0,0,0,0,0,"lieuR2 = 0",0,0,0);
	trans[1][12]	= settr(55,0,41,1,0,"(1)", 0, 2, 0);
	T = trans[ 1][16] = settr(59,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(59,2,13,0,0,"ATOMIC", 1, 2, 0);
	trans[1][13]	= settr(56,4,17,56,56,"(((((dirR2==1)&&(lieuR2==0))&&(((posR1!=(posR2+1))||(lieuR1!=1))||(dirR1!=dirR2)))&&(posR2<NS)))", 1, 2, 0); /* m: 14 -> 17,0 */
	reached1[14] = 1;
	trans[1][14]	= settr(0,0,0,0,0,"posR2 = (posR2+1)",0,0,0);
	trans[1][15]	= settr(0,0,0,0,0,"lieuR2 = 1",0,0,0);
	trans[1][17]	= settr(60,0,41,1,0,"(1)", 0, 2, 0);
	T = trans[ 1][21] = settr(64,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(64,2,18,0,0,"ATOMIC", 0, 2, 0);
	trans[1][18]	= settr(61,4,22,57,57,"(((((dirR2==-(1))&&(lieuR2==0))&&(((posR1!=posR2)||(lieuR1!=1))||(dirR1!=dirR2)))&&(posR2>=1)))", 0, 2, 0); /* m: 19 -> 22,0 */
	reached1[19] = 1;
	trans[1][19]	= settr(0,0,0,0,0,"posR2 = posR2",0,0,0);
	trans[1][20]	= settr(0,0,0,0,0,"lieuR2 = 1",0,0,0);
	trans[1][22]	= settr(65,0,41,1,0,"(1)", 0, 2, 0);
	T = trans[ 1][25] = settr(68,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(68,2,23,0,0,"ATOMIC", 0, 2, 0);
	trans[1][23]	= settr(66,0,41,58,58,"(((portesR2==fermees)&&(lieuR2==1)))", 0, 2, 0); /* m: 24 -> 41,0 */
	reached1[24] = 1;
	trans[1][24]	= settr(0,0,0,0,0,"portesR2 = ouvertes",0,0,0);
	T = trans[ 1][28] = settr(71,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(71,2,26,0,0,"ATOMIC", 0, 2, 0);
	trans[1][26]	= settr(69,0,41,59,59,"((portesR2==ouvertes))", 0, 2, 0); /* m: 27 -> 41,0 */
	reached1[27] = 1;
	trans[1][27]	= settr(0,0,0,0,0,"portesR2 = refermees",0,0,0);
	T = trans[ 1][31] = settr(74,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(74,2,29,0,0,"ATOMIC", 1, 2, 0);
	trans[1][29]	= settr(72,0,41,60,60,"((((dirR2==1)&&(posR2==NS))&&((posR2!=posR1)||(dirR1!=-(1)))))", 1, 2, 0); /* m: 30 -> 41,0 */
	reached1[30] = 1;
	trans[1][30]	= settr(0,0,0,0,0,"dirR2 = -(1)",0,0,0);
	T = trans[ 1][34] = settr(77,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(77,2,32,0,0,"ATOMIC", 0, 2, 0);
	trans[1][32]	= settr(75,0,41,61,61,"((((dirR2==-(1))&&(posR2==1))&&((posR2!=posR1)||(dirR1!=1))))", 0, 2, 0); /* m: 33 -> 41,0 */
	reached1[33] = 1;
	trans[1][33]	= settr(0,0,0,0,0,"dirR2 = 1",0,0,0);
	T = trans[ 1][37] = settr(80,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(80,2,35,0,0,"ATOMIC", 1, 3, 505);
	trans[1][35]	= settr(78,2,36,62,62,"ReqR1!1", 1, 3, 505);
	trans[1][36]	= settr(79,0,41,63,63,"R1ToR2?posR1,dirR1,lieuR1", 1, 3, 505);
	T = trans[ 1][40] = settr(83,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(83,2,38,0,0,"ATOMIC", 1, 504, 6);
	trans[1][38]	= settr(81,2,39,64,64,"ReqR2?1", 1, 504, 6);
	trans[1][39]	= settr(82,0,41,65,65,"R2ToR1!posR2,dirR2,lieuR2", 1, 504, 6);
	trans[1][43]	= settr(86,0,44,1,0,"break", 0, 2, 0);
	trans[1][44]	= settr(87,0,0,66,66,"-end-", 0, 3500, 0);

	/* proctype 0: Rame1 */

	trans[0] = (Trans **) emalloc(45*sizeof(Trans *));

	trans[0][42]	= settr(41,0,41,1,0,".(goto)", 0, 2, 0);
	T = trans[0][41] = settr(40,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(40,0,5,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(40,0,11,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(40,0,16,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(40,0,21,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(40,0,25,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(40,0,28,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(40,0,31,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(40,0,34,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(40,0,37,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(40,0,40,0,0,"DO", 0, 2, 0);
	T = trans[ 0][5] = settr(4,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(4,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[0][1]	= settr(0,4,6,67,67,"((((((dirR1==1)&&(lieuR1==1))&&(portesR1==refermees))&&(((posR2!=posR1)||(lieuR2!=0))||(dirR1!=dirR2)))&&(posR1<=NS)))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached0[2] = 1;
	trans[0][2]	= settr(0,0,0,0,0,"portesR1 = fermees",0,0,0);
	trans[0][3]	= settr(0,0,0,0,0,"posR1 = posR1",0,0,0);
	trans[0][4]	= settr(0,0,0,0,0,"lieuR1 = 0",0,0,0);
	trans[0][6]	= settr(5,0,41,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][11] = settr(10,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(10,2,7,0,0,"ATOMIC", 0, 2, 0);
	trans[0][7]	= settr(6,4,12,68,68,"((((((dirR1==-(1))&&(lieuR1==1))&&(portesR1==refermees))&&(((posR2!=(posR1-1))||(lieuR2!=0))||(dirR1!=dirR2)))&&(posR1>1)))", 0, 2, 0); /* m: 8 -> 12,0 */
	reached0[8] = 1;
	trans[0][8]	= settr(0,0,0,0,0,"portesR1 = fermees",0,0,0);
	trans[0][9]	= settr(0,0,0,0,0,"posR1 = (posR1-1)",0,0,0);
	trans[0][10]	= settr(0,0,0,0,0,"lieuR1 = 0",0,0,0);
	trans[0][12]	= settr(11,0,41,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][16] = settr(15,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(15,2,13,0,0,"ATOMIC", 1, 2, 0);
	trans[0][13]	= settr(12,4,17,69,69,"(((((dirR1==1)&&(lieuR1==0))&&(((posR2!=(posR1+1))||(lieuR2!=1))||(dirR1!=dirR2)))&&(posR1<NS)))", 1, 2, 0); /* m: 14 -> 17,0 */
	reached0[14] = 1;
	trans[0][14]	= settr(0,0,0,0,0,"posR1 = (posR1+1)",0,0,0);
	trans[0][15]	= settr(0,0,0,0,0,"lieuR1 = 1",0,0,0);
	trans[0][17]	= settr(16,0,41,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][21] = settr(20,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(20,2,18,0,0,"ATOMIC", 0, 2, 0);
	trans[0][18]	= settr(17,4,22,70,70,"(((((dirR1==-(1))&&(lieuR1==0))&&(((posR2!=posR1)||(lieuR2!=1))||(dirR1!=dirR2)))&&(posR1>=1)))", 0, 2, 0); /* m: 19 -> 22,0 */
	reached0[19] = 1;
	trans[0][19]	= settr(0,0,0,0,0,"posR1 = posR1",0,0,0);
	trans[0][20]	= settr(0,0,0,0,0,"lieuR1 = 1",0,0,0);
	trans[0][22]	= settr(21,0,41,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][25] = settr(24,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(24,2,23,0,0,"ATOMIC", 0, 2, 0);
	trans[0][23]	= settr(22,0,41,71,71,"(((portesR1==fermees)&&(lieuR1==1)))", 0, 2, 0); /* m: 24 -> 41,0 */
	reached0[24] = 1;
	trans[0][24]	= settr(0,0,0,0,0,"portesR1 = ouvertes",0,0,0);
	T = trans[ 0][28] = settr(27,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(27,2,26,0,0,"ATOMIC", 0, 2, 0);
	trans[0][26]	= settr(25,0,41,72,72,"((portesR1==ouvertes))", 0, 2, 0); /* m: 27 -> 41,0 */
	reached0[27] = 1;
	trans[0][27]	= settr(0,0,0,0,0,"portesR1 = refermees",0,0,0);
	T = trans[ 0][31] = settr(30,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(30,2,29,0,0,"ATOMIC", 1, 2, 0);
	trans[0][29]	= settr(28,0,41,73,73,"(((((dirR1==1)&&(posR1==NS))&&(lieuR1==1))&&((posR2!=posR1)||(dirR2!=-(1)))))", 1, 2, 0); /* m: 30 -> 41,0 */
	reached0[30] = 1;
	trans[0][30]	= settr(0,0,0,0,0,"dirR1 = -(1)",0,0,0);
	T = trans[ 0][34] = settr(33,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(33,2,32,0,0,"ATOMIC", 0, 2, 0);
	trans[0][32]	= settr(31,0,41,74,74,"(((((dirR1==-(1))&&(posR1==1))&&(lieuR1==1))&&((posR2!=posR1)||(dirR2!=1))))", 0, 2, 0); /* m: 33 -> 41,0 */
	reached0[33] = 1;
	trans[0][33]	= settr(0,0,0,0,0,"dirR1 = 1",0,0,0);
	T = trans[ 0][37] = settr(36,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(36,2,35,0,0,"ATOMIC", 1, 4, 506);
	trans[0][35]	= settr(34,2,36,75,75,"ReqR2!1", 1, 4, 506);
	trans[0][36]	= settr(35,0,41,76,76,"R2ToR1?posR2,dirR2,lieuR2", 1, 4, 506);
	T = trans[ 0][40] = settr(39,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(39,2,38,0,0,"ATOMIC", 1, 503, 5);
	trans[0][38]	= settr(37,2,39,77,77,"ReqR1?1", 1, 503, 5);
	trans[0][39]	= settr(38,0,41,78,78,"R1ToR2!posR1,dirR1,lieuR1", 1, 503, 5);
	trans[0][43]	= settr(42,0,44,1,0,"break", 0, 2, 0);
	trans[0][44]	= settr(43,0,0,79,79,"-end-", 0, 3500, 0);
	/* np_ demon: */
	trans[_NP_] = (Trans **) emalloc(2*sizeof(Trans *));
	T = trans[_NP_][0] = settr(9997,0,1,_T5,0,"(np_)", 1,2,0);
	    T->nxt	  = settr(9998,0,0,_T2,0,"(1)",   0,2,0);
	T = trans[_NP_][1] = settr(9999,0,1,_T5,0,"(np_)", 1,2,0);
}

Trans *
settr(	int t_id, int a, int b, int c, int d,
	char *t, int g, int tpe0, int tpe1)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	tmp->atom  = a&(6|32);	/* only (2|8|32) have meaning */
	if (!g) tmp->atom |= 8;	/* no global references */
	tmp->st    = b;
	tmp->tpe[0] = tpe0;
	tmp->tpe[1] = tpe1;
	tmp->tp    = t;
	tmp->t_id  = t_id;
	tmp->forw  = c;
	tmp->back  = d;
	return tmp;
}

Trans *
cpytr(Trans *a)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	int i;
	tmp->atom  = a->atom;
	tmp->st    = a->st;
#ifdef HAS_UNLESS
	tmp->e_trans = a->e_trans;
	for (i = 0; i < HAS_UNLESS; i++)
		tmp->escp[i] = a->escp[i];
#endif
	tmp->tpe[0] = a->tpe[0];
	tmp->tpe[1] = a->tpe[1];
	for (i = 0; i < 6; i++)
	{	tmp->qu[i] = a->qu[i];
		tmp->ty[i] = a->ty[i];
	}
	tmp->tp    = (char *) emalloc(strlen(a->tp)+1);
	strcpy(tmp->tp, a->tp);
	tmp->t_id  = a->t_id;
	tmp->forw  = a->forw;
	tmp->back  = a->back;
	return tmp;
}

#ifndef NOREDUCE
int
srinc_set(int n)
{	if (n <= 2) return LOCAL;
	if (n <= 2+  DELTA) return Q_FULL_F; /* 's' or nfull  */
	if (n <= 2+2*DELTA) return Q_EMPT_F; /* 'r' or nempty */
	if (n <= 2+3*DELTA) return Q_EMPT_T; /* empty */
	if (n <= 2+4*DELTA) return Q_FULL_T; /* full  */
	if (n ==   5*DELTA) return GLOBAL;
	if (n ==   6*DELTA) return TIMEOUT_F;
	if (n ==   7*DELTA) return ALPHA_F;
	Uerror("cannot happen srinc_class");
	return BAD;
}
int
srunc(int n, int m)
{	switch(m) {
	case Q_FULL_F: return n-2;
	case Q_EMPT_F: return n-2-DELTA;
	case Q_EMPT_T: return n-2-2*DELTA;
	case Q_FULL_T: return n-2-3*DELTA;
	case ALPHA_F:
	case TIMEOUT_F: return 257; /* non-zero, and > MAXQ */
	}
	Uerror("cannot happen srunc");
	return 0;
}
#endif
int cnt;
#ifdef HAS_UNLESS
int
isthere(Trans *a, int b)
{	Trans *t;
	for (t = a; t; t = t->nxt)
		if (t->t_id == b)
			return 1;
	return 0;
}
#endif
#ifndef NOREDUCE
int
mark_safety(Trans *t) /* for conditional safety */
{	int g = 0, i, j, k;

	if (!t) return 0;
	if (t->qu[0])
		return (t->qu[1])?2:1;	/* marked */

	for (i = 0; i < 2; i++)
	{	j = srinc_set(t->tpe[i]);
		if (j >= GLOBAL && j != ALPHA_F)
			return -1;
		if (j != LOCAL)
		{	k = srunc(t->tpe[i], j);
			if (g == 0
			||  t->qu[0] != k
			||  t->ty[0] != j)
			{	t->qu[g] = k;
				t->ty[g] = j;
				g++;
	}	}	}
	return g;
}
#endif
void
retrans(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
	/* process n, with m states, is=initial state */
{	Trans *T0, *T1, *T2, *T3;
	Trans *T4, *T5; /* t_reverse or has_unless */
	int i;
#if defined(HAS_UNLESS) || !defined(NOREDUCE)
	int k;
#endif
#ifndef NOREDUCE
	int g, h, j, aa;
#endif
#ifdef HAS_UNLESS
	int p;
#endif
	if (state_tables >= 4)
	{	printf("STEP 1 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	do {
		for (i = 1, cnt = 0; i < m; i++)
		{	T2 = trans[n][i];
			T1 = T2?T2->nxt:(Trans *)0;
/* prescan: */		for (T0 = T1; T0; T0 = T0->nxt)
/* choice in choice */	{	if (T0->st && trans[n][T0->st]
				&&  trans[n][T0->st]->nxt)
					break;
			}
#if 0
		if (T0)
		printf("\tstate %d / %d: choice in choice\n",
		i, T0->st);
#endif
			if (T0)
			for (T0 = T1; T0; T0 = T0->nxt)
			{	T3 = trans[n][T0->st];
				if (!T3->nxt)
				{	T2->nxt = cpytr(T0);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
					continue;
				}
				do {	T3 = T3->nxt;
					T2->nxt = cpytr(T3);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
				} while (T3->nxt);
				cnt++;
			}
		}
	} while (cnt);
	if (state_tables >= 3)
	{	printf("STEP 2 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	for (i = 1; i < m; i++)
	{	if (trans[n][i] && trans[n][i]->nxt) /* optimize */
		{	T1 = trans[n][i]->nxt;
#if 0
			printf("\t\tpull %d (%d) to %d\n",
			T1->st, T1->forw, i);
#endif
			srcln[i] = srcln[T1->st];	/* Oyvind Teig, 5.2.0 */

			if (!trans[n][T1->st]) continue;
			T0 = cpytr(trans[n][T1->st]);
			trans[n][i] = T0;
			reach[T1->st] = 1;
			imed(T0, T1->st, n, i);
			for (T1 = T1->nxt; T1; T1 = T1->nxt)
			{
#if 0
			printf("\t\tpull %d (%d) to %d\n",
				T1->st, T1->forw, i);
#endif
		/*		srcln[i] = srcln[T1->st];  gh: not useful */
				if (!trans[n][T1->st]) continue;
				T0->nxt = cpytr(trans[n][T1->st]);
				T0 = T0->nxt;
				reach[T1->st] = 1;
				imed(T0, T1->st, n, i);
	}	}	}
	if (state_tables >= 2)
	{	printf("STEP 3 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
#ifdef HAS_UNLESS
	for (i = 1; i < m; i++)
	{	if (!trans[n][i]) continue;
		/* check for each state i if an
		 * escape to some state p is defined
		 * if so, copy and mark p's transitions
		 * and prepend them to the transition-
		 * list of state i
		 */
	 if (!like_java) /* the default */
	 {	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->e_trans = p;
				T2->nxt = trans[n][i];
				trans[n][i] = T2;
		}	}
	 } else /* outermost unless checked first */
	 {	T4 = T3 = (Trans *) 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->nxt = (Trans *) 0;
				T2->e_trans = p;
				if (T3)	T3->nxt = T2;
				else	T4 = T2;
				T3 = T2;
		}	}
		if (T4)
		{	T3->nxt = trans[n][i];
			trans[n][i] = T4;
		}
	 }
	}
#endif
#ifndef NOREDUCE
	for (i = 1; i < m; i++)
	{	if (a_cycles)
		{ /* moves through these states are visible */
	#if PROG_LAB>0 && defined(HAS_NP)
			if (progstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (progstate[n][T1->st])
					goto degrade;
	#endif
			if (accpstate[n][i] || visstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (accpstate[n][T1->st])
					goto degrade;
		}
		T1 = trans[n][i];
		if (!T1) continue;
		g = mark_safety(T1);	/* V3.3.1 */
		if (g < 0) goto degrade; /* global */
		/* check if mixing of guards preserves reduction */
		if (T1->nxt)
		{	k = 0;
			for (T0 = T1; T0; T0 = T0->nxt)
			{	if (!(T0->atom&8))
					goto degrade;
				for (aa = 0; aa < 2; aa++)
				{	j = srinc_set(T0->tpe[aa]);
					if (j >= GLOBAL && j != ALPHA_F)
						goto degrade;
					if (T0->tpe[aa]
					&&  T0->tpe[aa]
					!=  T1->tpe[0])
						k = 1;
			}	}
			/* g = 0;	V3.3.1 */
			if (k)	/* non-uniform selection */
			for (T0 = T1; T0; T0 = T0->nxt)
			for (aa = 0; aa < 2; aa++)
			{	j = srinc_set(T0->tpe[aa]);
				if (j != LOCAL)
				{	k = srunc(T0->tpe[aa], j);
					for (h = 0; h < 6; h++)
						if (T1->qu[h] == k
						&&  T1->ty[h] == j)
							break;
					if (h >= 6)
					{	T1->qu[g%6] = k;
						T1->ty[g%6] = j;
						g++;
			}	}	}
			if (g > 6)
			{	T1->qu[0] = 0;	/* turn it off */
				printf("pan: warning, line %d, ",
					srcln[i]);
			 	printf("too many stmnt types (%d)",
					g);
			  	printf(" in selection\n");
			  goto degrade;
			}
		}
		/* mark all options global if >=1 is global */
		for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			if (!(T1->atom&8)) break;
		if (T1)
degrade:	for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			T1->atom &= ~8;	/* mark as unsafe */
		/* can only mix 'r's or 's's if on same chan */
		/* and not mixed with other local operations */
		T1 = trans[n][i];
		if (!T1 || T1->qu[0]) continue;
		j = T1->tpe[0];
		if (T1->nxt && T1->atom&8)
		{ if (j == 5*DELTA)
		  {	printf("warning: line %d ", srcln[i]);
			printf("mixed condition ");
			printf("(defeats reduction)\n");
			goto degrade;
		  }
		  for (T0 = T1; T0; T0 = T0->nxt)
		  for (aa = 0; aa < 2; aa++)
		  if  (T0->tpe[aa] && T0->tpe[aa] != j)
		  {	printf("warning: line %d ", srcln[i]);
			printf("[%d-%d] mixed %stion ",
				T0->tpe[aa], j, 
				(j==5*DELTA)?"condi":"selec");
			printf("(defeats reduction)\n");
			printf("	'%s' <-> '%s'\n",
				T1->tp, T0->tp);
			goto degrade;
		} }
	}
#endif
	for (i = 1; i < m; i++)
	{	T2 = trans[n][i];
		if (!T2
		||  T2->nxt
		||  strncmp(T2->tp, ".(goto)", 7)
		||  !stopstate[n][i])
			continue;
		stopstate[n][T2->st] = 1;
	}
	if (state_tables && !verbose)
	{	if (dodot)
		{	char buf[256], *q = buf, *p = procname[n];
			while (*p != '\0')
			{	if (*p != ':')
				{	*q++ = *p;
				}
				p++;
			}
			*q = '\0';
			printf("digraph ");
			switch (Btypes[n]) {
			case I_PROC:  printf("init {\n"); break;
			case N_CLAIM: printf("claim_%s {\n", buf); break;
			case E_TRACE: printf("notrace {\n"); break;
			case N_TRACE: printf("trace {\n"); break;
			default:      printf("p_%s {\n", buf); break;
			}
			printf("size=\"8,10\";\n");
			printf("  GT [shape=box,style=dotted,label=\"%s\"];\n", buf);
			printf("  GT -> S%d;\n", is);
		} else
		{	switch (Btypes[n]) {
			case I_PROC:  printf("init\n"); break;
			case N_CLAIM: printf("claim %s\n", procname[n]); break;
			case E_TRACE: printf("notrace assertion\n"); break;
			case N_TRACE: printf("trace assertion\n"); break;
			default:      printf("proctype %s\n", procname[n]); break;
		}	}
		for (i = 1; i < m; i++)
		{	reach[i] = 1;
		}
		tagtable(n, m, is, srcln, reach);
		if (dodot) printf("}\n");
	} else
	for (i = 1; i < m; i++)
	{	int nrelse;
		if (Btypes[n] != N_CLAIM)
		{	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			{	if (T0->st == i
				&& strcmp(T0->tp, "(1)") == 0)
				{	printf("error: proctype '%s' ",
						procname[n]);
		  			printf("line %d, state %d: has un",
						srcln[i], i);
					printf("conditional self-loop\n");
					pan_exit(1);
		}	}	}
		nrelse = 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		{	if (strcmp(T0->tp, "else") == 0)
				nrelse++;
		}
		if (nrelse > 1)
		{	printf("error: proctype '%s' state",
				procname[n]);
		  	printf(" %d, inherits %d", i, nrelse);
		  	printf(" 'else' stmnts\n");
			pan_exit(1);
	}	}
#if !defined(LOOPSTATE) && !defined(BFS_PAR)
	if (state_tables)
#endif
	do_dfs(n, m, is, srcln, reach, lpstate);

	if (!t_reverse)
	{	return;
	}
	/* process n, with m states, is=initial state -- reverse list */
	if (!state_tables && Btypes[n] != N_CLAIM)
	{	for (i = 1; i < m; i++)
		{	Trans *Tx = (Trans *) 0; /* list of escapes */
			Trans *Ty = (Trans *) 0; /* its tail element */
			T1 = (Trans *) 0; /* reversed list */
			T2 = (Trans *) 0; /* its tail */
			T3 = (Trans *) 0; /* remembers possible 'else' */

			/* find unless-escapes, they should go first */
			T4 = T5 = T0 = trans[n][i];
	#ifdef HAS_UNLESS
			while (T4 && T4->e_trans) /* escapes are first in orig list */
			{	T5 = T4;	  /* remember predecessor */
				T4 = T4->nxt;
			}
	#endif
			/* T4 points to first non-escape, T5 to its parent, T0 to original list */
			if (T4 != T0)		 /* there was at least one escape */
			{	T3 = T5->nxt;		 /* start of non-escapes */
				T5->nxt = (Trans *) 0;	 /* separate */
				Tx = T0;		 /* start of the escapes */
				Ty = T5;		 /* its tail */
				T0 = T3;		 /* the rest, to be reversed */
			}
			/* T0 points to first non-escape, Tx to the list of escapes, Ty to its tail */

			/* first tail-add non-escape transitions, reversed */
			T3 = (Trans *) 0;
			for (T5 = T0; T5; T5 = T4)
			{	T4 = T5->nxt;
	#ifdef HAS_UNLESS
				if (T5->e_trans)
				{	printf("error: cannot happen!\n");
					continue;
				}
	#endif
				if (strcmp(T5->tp, "else") == 0)
				{	T3 = T5;
					T5->nxt = (Trans *) 0;
				} else
				{	T5->nxt = T1;
					if (!T1) { T2 = T5; }
					T1 = T5;
			}	}
			/* T3 points to a possible else, which is removed from the list */
			/* T1 points to the reversed list so far (without escapes) */
			/* T2 points to the tail element -- where the else should go */
			if (T2 && T3)
			{	T2->nxt = T3;	/* add else */
			} else
			{	if (T3) /* there was an else, but there's no tail */
				{	if (!T1)	/* and no reversed list */
					{	T1 = T3; /* odd, but possible */
					} else		/* even stranger */
					{	T1->nxt = T3;
			}	}	}

			/* add in the escapes, to that they appear at the front */
			if (Tx && Ty) { Ty->nxt = T1; T1 = Tx; }

			trans[n][i] = T1;
			/* reversed, with escapes first and else last */
	}	}
	if (state_tables && verbose)
	{	printf("FINAL proctype %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
	}
}
void
imed(Trans *T, int v, int n, int j)	/* set intermediate state */
{	progstate[n][T->st] |= progstate[n][v];
	accpstate[n][T->st] |= accpstate[n][v];
	stopstate[n][T->st] |= stopstate[n][v];
	mapstate[n][j] = T->st;
}
void
tagtable(int n, int m, int is, short srcln[], uchar reach[])
{	Trans *z;

	if (is >= m || !trans[n][is]
	||  is <= 0 || reach[is] == 0)
		return;
	reach[is] = 0;
	if (state_tables)
	for (z = trans[n][is]; z; z = z->nxt)
	{	if (dodot)
			dot_crack(n, is, z);
		else
			crack(n, is, z, srcln);
	}

	for (z = trans[n][is]; z; z = z->nxt)
	{
#ifdef HAS_UNLESS
		int i, j;
#endif
		tagtable(n, m, z->st, srcln, reach);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			tagtable(n, m, j, srcln, reach);
		}
#endif
	}
}

extern Trans *t_id_lkup[];

void
dfs_table(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	Trans *z;

	if (is >= m || is <= 0 || !trans[n][is])
		return;
	if ((reach[is] & (4|8|16)) != 0)
	{	if ((reach[is] & (8|16)) == 16)	/* on stack, not yet recorded */
		{	lpstate[is] = 1;
			reach[is] |= 8; /* recorded */
			if (state_tables && verbose)
			{	printf("state %d line %d is a loopstate\n", is, srcln[is]);
		}	}
		return;
	}
	reach[is] |= (4|16);	/* visited | onstack */
	for (z = trans[n][is]; z; z = z->nxt)
	{	t_id_lkup[z->t_id] = z;
#ifdef HAS_UNLESS
		int i, j;
#endif
		dfs_table(n, m, z->st, srcln, reach, lpstate);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			dfs_table(n, m, j, srcln, reach, lpstate);
		}
#endif
	}
	reach[is] &= ~16; /* no longer on stack */
}
void
do_dfs(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	int i;
	dfs_table(n, m, is, srcln, reach, lpstate);
	for (i = 0; i < m; i++)
		reach[i] &= ~(4|8|16);
}
void
crack(int n, int j, Trans *z, short srcln[])
{	int i;

	if (!z) return;
	printf("	state %3d -(tr %3d)-> state %3d  ",
		j, z->forw, z->st);
	printf("[id %3d tp %3d", z->t_id, z->tpe[0]);
	if (z->tpe[1]) printf(",%d", z->tpe[1]);
#ifdef HAS_UNLESS
	if (z->e_trans)
		printf(" org %3d", z->e_trans);
	else if (state_tables >= 2)
	for (i = 0; i < HAS_UNLESS; i++)
	{	if (!z->escp[i]) break;
		printf(" esc %d", z->escp[i]);
	}
#endif
	printf("]");
	printf(" [%s%s%s%s%s] %s:%d => ",
		z->atom&6?"A":z->atom&32?"D":"-",
		accpstate[n][j]?"a" :"-",
		stopstate[n][j]?"e" : "-",
		progstate[n][j]?"p" : "-",
		z->atom & 8 ?"L":"G",
		PanSource, srcln[j]);
	for (i = 0; z->tp[i]; i++)
		if (z->tp[i] == '\n')
			printf("\\n");
		else
			putchar(z->tp[i]);
	if (verbose && z->qu[0])
	{	printf("\t[");
		for (i = 0; i < 6; i++)
			if (z->qu[i])
				printf("(%d,%d)",
				z->qu[i], z->ty[i]);
		printf("]");
	}
	printf("\n");
	fflush(stdout);
}
/* spin -a m.pml; cc -o pan pan.c; ./pan -D | dot -Tps > foo.ps; ps2pdf foo.ps */
void
dot_crack(int n, int j, Trans *z)
{	int i;

	if (!z) return;
	printf("	S%d -> S%d  [color=black", j, z->st);

	if (z->atom&6) printf(",style=dashed");
	else if (z->atom&32) printf(",style=dotted");
	else if (z->atom&8) printf(",style=solid");
	else printf(",style=bold");

	printf(",label=\"");
	for (i = 0; z->tp[i]; i++)
	{	if (z->tp[i] == '\\'
		&&  z->tp[i+1] == 'n')
		{	i++; printf(" ");
		} else
		{	putchar(z->tp[i]);
	}	}
	printf("\"];\n");
	if (accpstate[n][j]) printf("  S%d [color=red,style=bold];\n", j);
	else if (progstate[n][j]) printf("  S%d [color=green,style=bold];\n", j);
	if (stopstate[n][j]) printf("  S%d [color=blue,style=bold,shape=box];\n", j);
}

#ifdef VAR_RANGES
#define BYTESIZE	32	/* 2^8 : 2^3 = 256:8 = 32 */

typedef struct Vr_Ptr {
	char	*nm;
	uchar	vals[BYTESIZE];
	struct Vr_Ptr *nxt;
} Vr_Ptr;
Vr_Ptr *ranges = (Vr_Ptr *) 0;

void
logval(char *s, int v)
{	Vr_Ptr *tmp;

	if (v<0 || v > 255) return;
	for (tmp = ranges; tmp; tmp = tmp->nxt)
		if (!strcmp(tmp->nm, s))
			goto found;
	tmp = (Vr_Ptr *) emalloc(sizeof(Vr_Ptr));
	tmp->nxt = ranges;
	ranges = tmp;
	tmp->nm = s;
found:
	tmp->vals[(v)/8] |= 1<<((v)%8);
}

void
dumpval(uchar X[], int range)
{	int w, x, i, j = -1;

	for (w = i = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
from:		if ((X[w] & (1<<x)))
		{	printf("%d", i);
			j = i;
			goto upto;
	}	}
	return;
	for (w = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
upto:		if (!(X[w] & (1<<x)))
		{	if (i-1 == j)
				printf(", ");
			else
				printf("-%d, ", i-1);
			goto from;
	}	}
	if (j >= 0 && j != 255)
		printf("-255");
}

void
dumpranges(void)
{	Vr_Ptr *tmp;
	printf("\nValues assigned within ");
	printf("interval [0..255]:\n");
	for (tmp = ranges; tmp; tmp = tmp->nxt)
	{	printf("\t%s\t: ", tmp->nm);
		dumpval(tmp->vals, BYTESIZE);
		printf("\n");
	}
}
#endif
