	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

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
		
	case 11: // STATE 34
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
		
	case 16: // STATE 20
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
		
	case 25: // STATE 34
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM p3 */
;
		;
		;
		
	case 27: // STATE 3
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
		
	case 32: // STATE 19
		goto R999;
;
		;
		;
		
	case 34: // STATE 27
		goto R999;
;
		;
		;
		
	case 36: // STATE 35
		goto R999;
;
		;
		;
		
	case 38: // STATE 43
		goto R999;

	case 39: // STATE 50
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM p0 */
;
		
	case 40: // STATE 1
		goto R999;

	case 41: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 42: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 43: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 44: // STATE 4
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Rame2 */

	case 45: // STATE 2
		;
		((P1 *)this)->posR2 = trpt->bup.oval;
		;
		goto R999;

	case 46: // STATE 6
		;
		((P1 *)this)->posR2 = trpt->bup.oval;
		;
		goto R999;

	case 47: // STATE 10
		;
		((P1 *)this)->dirR2 = trpt->bup.oval;
		;
		goto R999;

	case 48: // STATE 13
		;
		((P1 *)this)->dirR2 = trpt->bup.oval;
		;
		goto R999;

	case 49: // STATE 15
		;
		_m = unsend(now.ReqR1);
		;
		goto R999;

	case 50: // STATE 16
		;
		XX = 1;
		unrecv(now.R1ToR2, XX-1, 0, ((P1 *)this)->posR1, 1);
		unrecv(now.R1ToR2, XX-1, 1, ((P1 *)this)->dirR1, 0);
		((P1 *)this)->posR1 = trpt->bup.ovals[0];
		((P1 *)this)->dirR1 = trpt->bup.ovals[1];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 51: // STATE 18
		;
		XX = 1;
		unrecv(now.ReqR2, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 52: // STATE 19
		;
		_m = unsend(now.R2ToR1);
		;
		goto R999;

	case 53: // STATE 24
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Rame1 */

	case 54: // STATE 2
		;
		((P0 *)this)->posR1 = trpt->bup.oval;
		;
		goto R999;

	case 55: // STATE 6
		;
		((P0 *)this)->posR1 = trpt->bup.oval;
		;
		goto R999;

	case 56: // STATE 10
		;
		((P0 *)this)->dirR1 = trpt->bup.oval;
		;
		goto R999;

	case 57: // STATE 13
		;
		((P0 *)this)->dirR1 = trpt->bup.oval;
		;
		goto R999;

	case 58: // STATE 15
		;
		_m = unsend(now.ReqR2);
		;
		goto R999;

	case 59: // STATE 16
		;
		XX = 1;
		unrecv(now.R2ToR1, XX-1, 0, ((P0 *)this)->posR2, 1);
		unrecv(now.R2ToR1, XX-1, 1, ((P0 *)this)->dirR2, 0);
		((P0 *)this)->posR2 = trpt->bup.ovals[0];
		((P0 *)this)->dirR2 = trpt->bup.ovals[1];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 60: // STATE 18
		;
		XX = 1;
		unrecv(now.ReqR1, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 61: // STATE 19
		;
		_m = unsend(now.R1ToR2);
		;
		goto R999;

	case 62: // STATE 24
		;
		p_restor(II);
		;
		;
		goto R999;
	}

