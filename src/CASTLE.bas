0  LOMEM: 25000
10  HOME : VTAB 21
20  POKE 232,0: POKE 233,64
30  IF  PEEK(16384) < >20  THEN  PRINT "<CTRL-D>BLOAD TABLE,A$4000"
40  SCALE= 1: ROT= 0
100  HGR : HCOLOR= 3
110  HPLOT 0,150 TO 279,150: HCOLOR= 1: FOR T = 151 TO 159: HPLOT 0,T TO 279,T: NEXT : HCOLOR= 3
120  HPLOT 50,150 TO 50,90 TO 40,80 TO 40,65 TO 45,65: DRAW 1: DRAW 1: DRAW 1: HPLOT  TO 45,80 TO 35,90 TO 35,100
130  HPLOT  TO 150,100 TO 150,90 TO 140,80 TO 140,65 TO 145,65: DRAW 1: DRAW 1: DRAW 1: HPLOT  TO 145,80 TO 135,90 TO 135,150
140  HPLOT 85,150 TO 85,130 TO 90,125 TO 95,125 TO 100,130 TO 100,150: HPLOT 90,125 TO 90,150 TO 95,150 TO 95,125
145  DRAW 3 AT 55,150: DRAW 3: DRAW 3: DRAW 3 AT 105,150: ROT= 48: DRAW 3: ROT= 32: DRAW 3: ROT= 0: DRAW 3 AT 195,150: DRAW 3: DRAW 3
146  DRAW 3 AT 150,150: DRAW 3: DRAW 3 AT 130,150: DRAW 3 AT 160,150
150  PRINT "A GREAT CASTLE STANDS IN FRONT OF YOU   CHOOSE 1)GO IN": PRINT "       2)SEARCH THE GRASS"
160  GET R$: IF R$ < >"1"  AND R$ < >"2"  THEN  PRINT "STUPID": GOTO 150
170  IF R$ = "1"  THEN 200
180  PRINT "YOU WAITED TOO LONG!": FOR T = 1 TO 1000: NEXT 
195  PRINT "A BOWMAN SHOT YOU,YOU DIED!": GET R$: RUN 
200  HGR : HOME : VTAB 21
210  HCOLOR= 2: HPLOT 0,0 TO 100,50 TO 150,50 TO 250,0: HPLOT 0,150 TO 100,100 TO 150,100 TO 250,150: HPLOT 100,50 TO 100,100 TO 150,100 TO 150,50
220  HCOLOR= 5: HPLOT 111,100 TO 111,60 TO 121,55 TO 131,55 TO 141,60 TO 141,100
230  HCOLOR= 3
240  DRAW 4 AT 85,130
250  PRINT "DO YOU TAKE THE SWORD ? (Y/N)": GET R$: IF R$ = "Y"  THEN  PRINT "YES":SW = 1: HCOLOR= 0: DRAW 4 AT 85,130: HCOLOR= 3: GOTO 270
260  PRINT "NO!!"
270  FOR TD = 1 TO 1000: NEXT : PRINT "WHAT NEXT ? 1)GO THROUGH THE DOOR": PRINT "            2)SEARCH THE GROUND": GET R$
275  IF R$ < >"1"  AND R$ < >"2"  THEN  PRINT "STUPID": GOTO 270
280  IF R$ = "1"  THEN 300
285  PRINT "YOU FIND A TRAP DOOR": HCOLOR= 5: HPLOT 115,110 TO 145,110 TO 165,130 TO 95,130 TO 115,110
290  PRINT "DO YOU 1)TAKE THE TRAP DOOR": PRINT "       2)THE OTHER DOOR": GET R$: IF R$ < >"1"  AND R$ < >"2"  THEN  PRINT "STUPID": GOTO 290
295  IF R$ = "1"  THEN 400
300  HCOLOR= 3: HOME : VTAB 21: HGR 
310  HPLOT 0,0 TO 30,30 TO 130,30 TO 160,0: HPLOT 0,90 TO 30,60 TO 130,60 TO 160,90: HPLOT 30,30 TO 30,60 TO 130,60 TO 130,30
315  HPLOT 0,0 TO 160,0 TO 160,90 TO 0,90 TO 0,0
317  DRAW 6 AT 90,40: DRAW 5 AT 110,45
319  DRAW 7 AT 60,70: DRAW 7 AT 50,50
320  PRINT "YOU ENTER THE KING'S THRONE ROOM": FOR T = 1 TO 1000: NEXT : PRINT "HE JUMPS TO HIS FEET AND ASKS 'WHO ARE  YOU ?'"
323  FOR T = 1 TO 1000: NEXT 
325  PRINT "YOU ANSWER 1)A TRADER OR": PRINT "           2)AN ADVENTURER"
326  GET R$: IF R$ < >"1"  AND R$ < >"2"  THEN  PRINT "STUPID": GOTO 325
329  IF R$ = "2"  THEN 350
330  IF SW = 1  THEN  PRINT "YOU ARE  NO TRADER! YOU HAVE A SWORD!": FOR T = 1 TO 1000: NEXT : PRINT " YOU MUST DUEL WITH ME ": FOR T = 1 TO 1000: NEXT : GOTO 370
335  GOTO 355
350  PRINT "GOOD. I'LL GIVE YOU SOME ADVENTURE": PRINT "YOU MUST FIGHT ME!!": FOR T = 1 TO 2000: NEXT : IF SW = 0  THEN  PRINT "YOU HAVE NO SWORD! SO YOU MUST LOSE!": PRINT "YOU FEEL A SWORD SQELCH YOU IN THE BACK": GET R$: RUN 
353  GOTO 370
355  PRINT "HERE ARE SOME KEYS IN EXCHANGE FOR YOUR LUNCH PACK": FOR T = 1 TO 2000: NEXT :KE = 1: GOTO 395
370  FOR T = 1 TO 2000: NEXT : TEXT : HOME : PRINT "I WILL ROLL TWO DICE 100 TIMES.MY NUMBER IS NINE.EACH TIME OUR NUMBER COMES UP WE GET A POINT.WHAT IS YOUR NUMBER"
375  INPUT R: IF R >12  OR R <2  OR R = 9  THEN  PRINT "STUPID": GOTO 375
380  FOR T = 1 TO 100:V =  INT( RND(8) *6) + INT( RND(8) *6) +2:: IF V = 9  THEN KP = KP +1
381  IF V = R  THEN PO = PO +1
383  NEXT 
385  PRINT "TOTAL:KING"KP"   YOU";: FOR T = 1 TO 2000: NEXT : PRINT PO: IF KP >PO  THEN  PRINT "COLD METAL SLIDES THROUGH YOUR GUT": GET R$: RUN 
388  IF R$ = "1"  THEN  PRINT "YOU WIN SO YOU MAY DO SOME TRADING": GOTO 355
390  PRINT "YOU WIN !"
395  PRINT "HERE IS MY BACK DOOR": PRINT "YOU GO OUT A DOOR BEHIND HIS THRONE": FOR T = 1 TO 5000: NEXT : GOTO 500
400  HOME : HGR : VTAB 21: HCOLOR= 3: PRINT "YOU ARE IN THE DUNGEON"
405  GOSUB 410: GOTO 420
410  HPLOT 0,0 TO 30,30 TO 130,30 TO 160,0: HPLOT 0,90 TO 30,60 TO 130,60 TO 160,90: HPLOT 30,30 TO 30,60 TO 130,60 TO 130,30: HPLOT 0,0 TO 160,0 TO 160,90 TO 0,90 TO 0,0
415  RETURN 
420  HPLOT 10,80 TO 10,55 TO 15,40 TO 20,40 TO 25,55 TO 25,65: HPLOT 60,35 TO 70,35 TO 70,45 TO 60,45 TO 60,35: HPLOT 63,35 TO 63,45 TO 67,45 TO 67,35
430  HPLOT 95,15 TO 130,15 TO 125,20 TO 100,20 TO 95,15
435  FOR T = 30 TO 60: XDRAW 8 AT 115,T: FOR TD = 1 TO 70: NEXT : XDRAW 8 AT 115,T: NEXT : DRAW 8 AT 115,T
440  PRINT "DO YOU 1)CALL FOR THE GUARD": PRINT "       2)WAIT": GET R$: IF R$ < >"1"  AND R$ < >"2"  THEN  PRINT "STUPID": GOTO 440
445  IF R$ = "1"  THEN 470
450  PRINT "THE GUARD COMES IN": DRAW 9 AT 60,80: FOR T = 1 TO 1000: NEXT : PRINT "AND SAYS THAT YOU WILL BE HANGED AT     10:00 A.M": FOR T = 1 TO 1000: NEXT : PRINT "AND THEN GOES OUT": FOR T = 1 TO 1000: NEXT : HCOLOR= 0: DRAW 9 AT 60,80
455  HCOLOR= 3
457  PRINT 
460  FOR T = 1 TO 1000: NEXT : PRINT "DO YOU 1)WAIT": PRINT "       2)CALL THE GUARD": GET R$: IF R$ < >"1"  AND R$ < >"2"  THEN  PRINT "STUPID": GOTO 460
462  IF R$ = "2"  THEN 470
465  PRINT "THE GUARD TAKES YOU AWAY AND HANGS YOU FROM THE TOP OF THE CASTLE LIKE A DEAD   CHOOK": GET R$: RUN 
470  DRAW 9 AT 60,80: PRINT "WHAT DO YOU DO 1)SAY 'NOTHING'": PRINT "               2)THRUST YOU SWORD": GET R$: IF R$ < >"2"  AND R$ < >"1"  THEN  PRINT "STUPID":
475  IF R$ = "1"  OR (R$ = "2"  AND SW = 0)  THEN  PRINT "HE SAYS'DONT'BE CHEEKY,I'LL TEACH YOU": FOR T = 1 TO 3000: NEXT : GOTO 465
480  PRINT "YOU THRUST YOUR SWORD AND GUNGE HIM,THEN YOU SEARCH HIM AND FIND A BAG OF GEMS ,YOU TAKE THEM AND GO OUT THE DOOR": FOR T = 1 TO 6000: NEXT 
490 GE = 1
495  PRINT "YOU WALK ALONG A PASSAGE AND COME TO BIG GOLDEN DOORS.YOU PUSH THEM OPEN AND    WALK IN": FOR T = 1 TO 4000: NEXT : GOTO 300
500  HGR : HOME : VTAB 21: PRINT "YOU ARE IN THE COURTYARD"
510  HPLOT 0,100 TO 100,80 TO 179,80 TO 279,100 TO 279,10 TO 179,20 TO 100,20 TO 0,10 TO 0,100 TO 100,80 TO 100,20 TO 179,20 TO 179,80
513  FOR T = 1 TO 6: DRAW 13 AT  INT( RND(8) *200) +50,100: DRAW 13: NEXT 
514  DRAW 10 AT 100,100
520  HPLOT 120,80 TO 120,40 TO 130,30 TO 140,30 TO 150,40 TO 150,80: HPLOT 20,95 TO 20,30 TO 30,20 TO 40,20 TO 50,30 TO 50,90: HPLOT 220,90 TO 220,30 TO 230,20 TO 240,20 TO 250,30 TO 250,95
530  PRINT "THE SNAKE SAYS'1 DOOR LEADS TO DANGER,1 TO DEATH AND 1 IS EASY.FOR A SMALL PRICE I WILL TELL YOU THEM'": FOR T = 1 TO 4000: NEXT 
532  FOR T = 1 TO 2000: NEXT 
540  PRINT "DO YOU 1)KILL HIM": PRINT "       2)ASK HIM": GET R$: IF R$ < >"1"  AND R$ < >"2"  THEN  PRINT "STUPID": GOTO 540
550  IF R$ = "1"  THEN  PRINT "YOU THRUST YOUR SWORD BUT YOU MISS HIM. HE BITES YOU ON THE WRIST SO YOU CUT OFF YOUR ARM BUT IT WAS NO USE,THE VENOM   GOT YOU  ";: GET R$: RUN 
555  PRINT "DO YOU PAY HIM YOUR GEMS ?(Y/N)": GET R$: IF R$ < >"Y"  AND R$ < >"N"  THEN  PRINT "SPANNER": GOTO 555
570  IF R$ = "N"  OR GE = 0  THEN  PRINT "THE SNAKE TAKES A BIG MEATY CHUNK FORM  YOUR ARM AND SAYS'YUM YUM'": GET R$: RUN 
575  PRINT "ASK HIM 1)WHICH ONE IS EASY": PRINT "        2)WHICH ONE IS HARD": GET R$: IF R$ < >"1"  AND R$ < >"2"  THEN  PRINT "SMART": GOTO 575
576  IF R$ = "1"  THEN  PRINT "2"
578  IF R$ = "2"  THEN  PRINT "1"
580  PRINT "WHICH DOOR (1,2,3)": GET B$: IF B$ < >"1"  AND B$ = "2"  AND B$ = "3"  THEN  PRINT "DUMB DUMB": GOTO 580
585  IF B$ = "3"  AND R$ = "2"  THEN 600
590  IF R$ = "1"  AND B$ = "2"  THEN 700
595  PRINT "WRONG DOOR!!": FOR T = 1 TO 2000: NEXT : PRINT "YOU TRIP INTO A FIRE AND GET FRIED TO A CHIP": GET R$: RUN 
600  HGR : HCOLOR= 3: HOME : VTAB 21
610  GOSUB 410
615  HPLOT 20,58
620  HPLOT 10,80 TO 10,55 TO 15,40 TO 20,40 TO 25,55 TO 25,65
630  DRAW 14 AT 50,74
640  PRINT "YOU ENTER A DARK ROOM.....": FOR T = 1 TO 3000: NEXT : PRINT "SUDDENLY A HUGE SPIDER DROPS DOWN": DRAW 11 AT 100,80: FOR T = 1 TO 3000: NEXT 
650  PRINT "DO YOU 1)RUN AND GRAB THE BOX": PRINT "       2)RUN FOR THE DOOR": GET R$: IF R$ < >"1"  AND R$ < >"2"  THEN  PRINT "STUPID": GOTO 650
660  PRINT "THE SPIDER MOVES CLOSER...": XDRAW 11 AT 100,80: DRAW 11 AT 75,80
665  IF R$ = "2"  THEN 680
670  PRINT "YOU GRAB THE BOX": HCOLOR= 0: DRAW 14 AT 50,74: HCOLOR= 3: FOR T = 1 TO 2000: NEXT :BO = 1
680  PRINT "YOU ARE AT THE DOOR": FOR T = 1 TO 1000: NEXT : PRINT "IT IS LOCKED!!!"
685  PRINT "TRY 1)YOUR KEYS": PRINT "    2)TO BREAK DOWN THE DOOR": GET R$: IF R$ < >"1"  AND R$ < >"2"  THEN  PRINT "STUPID": GOTO 685
690  IF R$ = "2"  AND BO = 0  THEN  PRINT "YOU JUST MADE IT": FOR T = 1 TO 2000: NEXT : GOTO 700
695  IF KE = 1  AND R$ = "1"  THEN  PRINT "YOU TRY YOUR KEYS AND THEY WORK!": FOR T = 1 TO 2000: NEXT : GOTO 700
699  PRINT "TOO LATE": XDRAW 11 AT 75,80: DRAW 11 AT 60,80: PRINT "THE SPIDER TIES YOU UP AND HAS YOU FOR  SUPPER": GET R$: RUN 
700  POKE 770,BO: PRINT : PRINT "<CTRL-D>RUN CASTLE II"