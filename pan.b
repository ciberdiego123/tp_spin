	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM p8 */
;
		;
		;
		;
		;
		;
		;
		;
		
	case 7: // STATE 20
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM p7 */
;
		
	case 8: // STATE 1
		goto R999;

	case 9: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM p6 */
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 18: // STATE 34
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM p5 */
;
		;
		;
		;
		;
		;
		;
		;
		
	case 23: // STATE 20
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM p4 */
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 32: // STATE 34
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM p3 */
;
		;
		;
		
	case 34: // STATE 3
		goto R999;
;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 39: // STATE 19
		goto R999;
;
		;
		;
		
	case 41: // STATE 27
		goto R999;
;
		;
		;
		
	case 43: // STATE 35
		goto R999;
;
		;
		;
		
	case 45: // STATE 43
		goto R999;

	case 46: // STATE 50
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM p0 */
;
		
	case 47: // STATE 1
		goto R999;

	case 48: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM pp */
;
		
	case 49: // STATE 1
		goto R999;

	case 50: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 51: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 52: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 53: // STATE 4
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Rame2 */

	case 54: // STATE 4
		;
		((P1 *)this)->lieuR2 = trpt->bup.ovals[2];
		((P1 *)this)->posR2 = trpt->bup.ovals[1];
		((P1 *)this)->portesR2 = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 55: // STATE 10
		;
		((P1 *)this)->lieuR2 = trpt->bup.ovals[2];
		((P1 *)this)->posR2 = trpt->bup.ovals[1];
		((P1 *)this)->portesR2 = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 56: // STATE 15
		;
		((P1 *)this)->lieuR2 = trpt->bup.ovals[1];
		((P1 *)this)->posR2 = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 57: // STATE 20
		;
		((P1 *)this)->lieuR2 = trpt->bup.ovals[1];
		((P1 *)this)->posR2 = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 58: // STATE 24
		;
		((P1 *)this)->portesR2 = trpt->bup.oval;
		;
		goto R999;

	case 59: // STATE 27
		;
		((P1 *)this)->portesR2 = trpt->bup.oval;
		;
		goto R999;

	case 60: // STATE 30
		;
		((P1 *)this)->dirR2 = trpt->bup.oval;
		;
		goto R999;

	case 61: // STATE 33
		;
		((P1 *)this)->dirR2 = trpt->bup.oval;
		;
		goto R999;

	case 62: // STATE 35
		;
		_m = unsend(now.ReqR1);
		;
		goto R999;

	case 63: // STATE 36
		;
		XX = 1;
		unrecv(now.R1ToR2, XX-1, 0, ((P1 *)this)->posR1, 1);
		unrecv(now.R1ToR2, XX-1, 1, ((P1 *)this)->dirR1, 0);
		unrecv(now.R1ToR2, XX-1, 2, ((int)((P1 *)this)->lieuR1), 0);
		((P1 *)this)->posR1 = trpt->bup.ovals[0];
		((P1 *)this)->dirR1 = trpt->bup.ovals[1];
		((P1 *)this)->lieuR1 = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 64: // STATE 38
		;
		XX = 1;
		unrecv(now.ReqR2, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 65: // STATE 39
		;
		_m = unsend(now.R2ToR1);
		;
		goto R999;

	case 66: // STATE 44
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Rame1 */

	case 67: // STATE 4
		;
		((P0 *)this)->lieuR1 = trpt->bup.ovals[2];
		((P0 *)this)->posR1 = trpt->bup.ovals[1];
		((P0 *)this)->portesR1 = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 68: // STATE 10
		;
		((P0 *)this)->lieuR1 = trpt->bup.ovals[2];
		((P0 *)this)->posR1 = trpt->bup.ovals[1];
		((P0 *)this)->portesR1 = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 69: // STATE 15
		;
		((P0 *)this)->lieuR1 = trpt->bup.ovals[1];
		((P0 *)this)->posR1 = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 70: // STATE 20
		;
		((P0 *)this)->lieuR1 = trpt->bup.ovals[1];
		((P0 *)this)->posR1 = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 71: // STATE 24
		;
		((P0 *)this)->portesR1 = trpt->bup.oval;
		;
		goto R999;

	case 72: // STATE 27
		;
		((P0 *)this)->portesR1 = trpt->bup.oval;
		;
		goto R999;

	case 73: // STATE 30
		;
		((P0 *)this)->dirR1 = trpt->bup.oval;
		;
		goto R999;

	case 74: // STATE 33
		;
		((P0 *)this)->dirR1 = trpt->bup.oval;
		;
		goto R999;

	case 75: // STATE 35
		;
		_m = unsend(now.ReqR2);
		;
		goto R999;

	case 76: // STATE 36
		;
		XX = 1;
		unrecv(now.R2ToR1, XX-1, 0, ((P0 *)this)->posR2, 1);
		unrecv(now.R2ToR1, XX-1, 1, ((P0 *)this)->dirR2, 0);
		unrecv(now.R2ToR1, XX-1, 2, ((int)((P0 *)this)->lieuR2), 0);
		((P0 *)this)->posR2 = trpt->bup.ovals[0];
		((P0 *)this)->dirR2 = trpt->bup.ovals[1];
		((P0 *)this)->lieuR2 = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 77: // STATE 38
		;
		XX = 1;
		unrecv(now.ReqR1, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 78: // STATE 39
		;
		_m = unsend(now.R1ToR2);
		;
		goto R999;

	case 79: // STATE 44
		;
		p_restor(II);
		;
		;
		goto R999;
	}

