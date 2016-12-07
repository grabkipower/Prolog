start:-
  	tryread,
  	diagnoza(Disease),
 	write('Uwazamy ze masz: '),
 	printdefinition(Disease),
 	nl,
 	undo,
	menu.
  
menu:-
	%tryread,
  	write("***************************************"),nl,
  	write(" *"),nl,
	write("* 1. Dodaj problem do bazy problemow *"),nl,
  	write("* 2. Startuj system ekspercki *"),nl,
  	write("* 3. Wyjdz z programu *"),nl,
  	write("***************************************"),nl,
	write("Prosze dokonaj wyboru: 1,2 or 3:"),nl,
  	read(Choice),nl,
  
process(Choice),
	Choice = 3,!.
  
process(1) :-
	write("Podaj przyczyne zaistnialego problemu: "),nl,
	read(Objaw),nl,
	
	write("Podaj 1 warunek zaistnialego problemu: "),nl,
	read(Warunek0),nl,
	info,
	write("Podaj 2 warunek zaistnialego problemu: "),nl,
	read(TmpWarunek1),nl,
	(TmpWarunek1 == 'end' ->
	 koniecwarunkowinfo
	;
	Warunek1 = TmpWarunek1,
	savedefinition(Warunek1),
	info,
	write("Podaj 3 warunek zaistnialego problemu: "),nl,
	read(TmpWarunek2),
		(TmpWarunek2 == 'end'->
		koniecwarunkowinfo;
		Warunek2 = TmpWarunek2,
		savedefinition(Warunek2),
		info,
		write("Podaj 4 warunek zaistnialego problemu: "),nl,
		read(TmpWarunek3),
			(TmpWarunek3 == 'end'->
			koniecwarunkowinfo;
			Warunek3 = TmpWarunek3,
			savedefinition(Warunek3),
			info,
			write("Podaj 5 warunek zaistnialego problemu: "),nl,
			read(TmpWarunek4),
				(TmpWarunek4 == 'end'->
				koniecwarunkowinfo;
				Warunek4 = TmpWarunek4,
				savedefinition(Warunek4),
				info,
				write("Podaj 6 warunek zaistnialego problemu: "),nl,
				read(TmpWarunek5),
					(TmpWarunek5 == 'end'->
					koniecwarunkowinfo;
					Warunek5 = TmpWarunek5,
					savedefinition(Warunek5),
					info,
					write("Podaj 7 warunek zaistnialego problemu: "),nl,
					read(TmpWarunek6),
						(TmpWarunek6 == 'end'->
						koniecwarunkowinfo;
						Warunek6 = TmpWarunek6,
						savedefinition(Warunek6),
						info,
						write("Podaj 8 warunek zaistnialego problemu: "),nl,
						read(TmpWarunek7),
							(TmpWarunek7 == 'end'->
							koniecwarunkowinfo;
							Warunek7 = TmpWarunek7,
							savedefinition(Warunek7),
							info,
							write("Podaj 9 warunek zaistnialego problemu: "),nl,
							read(TmpWarunek8),
								(TmpWarunek8 == 'end'->
								koniecwarunkowinfo;
								Warunek8 = TmpWarunek8,
								savedefinition(Warunek8),
								info,
								write("Podaj 10 warunek zaistnialego problemu: "),nl,
								read(TmpWarunek9),
									(TmpWarunek9 == 'end'->
									koniecwarunkowinfo;
									Warunek9 = TmpWarunek9,
									savedefinition(Warunek9),
									info,
									write("Podaj 11 warunek zaistnialego problemu: "),nl,
									read(TmpWarunek10),
										(TmpWarunek10 == 'end'->
										koniecwarunkowinfo;
										Warunek10 = TmpWarunek10,
										savedefinition(Warunek10),
										koniecwarunkowinfo,
										write("Podano maksymalna ilosc warunkow dla danego problemu."),nl
										)
									)
								)
							)
						)
					)
				)
			)
		)
	),
	assert( ( Objaw :- verify(Warunek0),verify(Warunek1),verify(Warunek2),verify(Warunek3),verify(Warunek4),verify(Warunek5),verify(Warunek6),verify(Warunek7),verify(Warunek8),verify(Warunek9),verify(Warunek10))),  
	append('C:/Users/PC/Documents/Prolog/PrologProjekt/d.pl'),
	listing(Objaw),
	told,	
	write("Podaj 2 warunek zaistnialego problemu: "),nl,
	retractall(diagnoza(X)),
	assert( ( diagnoza(Objaw) :- Objaw, !) ),
	append('C:/Users/PC/Documents/Prolog/PrologProjekt/diag.pl'),	
	listing(diagnoza),
	told,
	menu.	
 
 
savedefinition(X) :-
	define(X).
	
savedefinition(X) :-
	\+define(X),	
	write("Podaj definicje problemu: "),nl,
	read(Pyt),nl,
	retractall(define(Z)),
	assert( ( define(X) :- write(Pyt)) ),
	append('C:/Users/PC/Documents/Prolog/PrologProjekt/definitions.pl'),
	listing(define),
	told. 
 
 
process(2) :-
  	start.
  

process(3) :- !.

tryread :-
  	write("Prosze odpowiadac \"y.\" (tak), \"n.\" (nie)."),nl,
  	retractall(diagnoza(X)),
 	['C:/Users/PC/Documents/Prolog/PrologProjekt/d'],
 	['C:/Users/PC/Documents/Prolog/PrologProjekt/diag'],
 	['C:/Users/PC/Documents/Prolog/PrologProjekt/definitions'],
  	assertz( ( diagnoza(unknown)) ).
  	
printdefinition(X) :-
	define(X),!.
	
printdefinition(X) :-
	\+define(X),
	write(X),!.
	
 
 /* how to ask questions */
 ask(Question) :-
     write('Czy : '),
     printdefinition(Question),
     write('? '),
     read(Response),
     nl,
     ( (Response == yes ; Response == y)
       ->
        assert(yes(Question)) ;
        assert(no(Question)), fail).
 
 :- dynamic yes/1,no/1.
 
 /* Weryfikacja */
 verify(S) :- (yes(S) -> true ;
                (no(S)  -> fail ;
                ask(S))).
 
 /* undo all yes/no assertions */
 undo :- retract(yes(_)),fail.
 undo :- retract(no(_)),fail.
 undo.
 
 info :- write('Wpisz end aby zakonczyc podawanie warunkow'),nl.
koniecwarunkowinfo :- write('Zakonono podawanie warunkow'),nl.