start:- 	
	tryread,
	diagnoza(Disease),
    write('Uwazam, ze: '),
    write(Disease),
    nl,
    undo,
	menu.
	
menu:-
	tryread,
	write("***************************************"),nl,
	write(" *"),nl,
	write("* 1. Dodaj pytanie do bazy pytañ *"),nl,
	write("* 3. Startuj pytania *"),nl,
	write("* 4. Wyjdz z programu *"),nl,
	write("***************************************"),nl,
	write("Please enter your choice:1,2,3 or 4 :"),nl,
	read(Choice),nl,

process(Choice),
	Choice = 4,!.

process(1) :-
	write("Podaj przyczyne zaistnialego problemu: "),nl,
	read(Objaw),nl,
	savedefinition(Objaw),
	
	write("Podaj warunek zaistnialego problemu: "),nl,
	read(Warunek0),nl,	
	savedefinition(Warunek0),
	
	write("Podaj warunek zaistnialego problemu: "),nl,
	read(Warunek1),nl,	
	savedefinition(Warunek1),
	
	retractall(Objaw),
	assert( ( Objaw :- verify(Warunek0) ) ),  
		assert( ( Objaw :- verify(Warunek1) ) ),  
	append('C:/Users/Mike/Documents/Prolog/d.pl'),
	listing(Objaw),
	told,	
	retractall(diagnoza(X)),
	assert( ( diagnoza(Objaw) :- Objaw, !) ),
	append('C:/Users/Mike/Documents/Prolog/diag.pl'),	
	listing(diagnoza),
	told,
	menu.

	
process(3) :-
  start.

process(4) :- !.

savedefinition(Y) :-
	define(Y).
	
savedefinition(X) :-
	\+define(X),	
	write("Podaj definicje problemu: "),nl,
	read(Pyt),nl,
	retractall(define(Z)),
	assert( ( define(X) :- write(Pyt)) ),
	append('C:/Users/Mike/Documents/Prolog/definitions.pl'),
	listing(define),
	told.

add_rule(Predicate) :-
    Fact =.. [Predicate],	
    assertz(Fact).
	
trysave :-	
	assert( ( boldupy :- verify(headache)) ),
	assert( ( hypothesis(boldupy) :- boldupy, !) ),
	append('C:/Users/Mike/Documents/Prolog/d.pl'),
	listing(boldupy),
	listing(hypothesis),
	/* tutaj trzeba ostro poprawiæ dodawanie, listing dodaje wszystko, a jak dodaæ pojedynczo
	to jeszcze nie odkry³em	
	( boldupy :- verify(headache)),
	( diagnoza(boldupy) :- boldupy, !), */
	told.

tryread :-
	retractall(diagnoza(X)),
	['C:/Users/Mike/Documents/Prolog/d'],	
	['C:/Users/Mike/Documents/Prolog/definitions'],
	['C:/Users/Mike/Documents/Prolog/diag'],
	assertz( ( diagnoza(unknown)) ).
	
	

/* how to ask questions */
ask(Question) :-
    write('Czy zaistnial taki problem: '),nl,
    define(Question),
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