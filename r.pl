start:- 	
	tryread,
	diagnoza(Disease),
    write('Uwazam, ze: '),
    define(Disease),
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
	
	write("Podaj 1 warunek zaistnialego problemu: "),nl,
	read(Warunek0),nl,
	write("Podaj 1 definicje problemu: "),nl,
	read(Pytanie0),nl,
	
	retractall(define(X)),
	assert( ( define(Warunek0) :- write(Pytanie0)) ),
	append('C:/Users/Mike/Documents/Prolog/definitions.pl'),
	listing(define),
	told,	
	
	
	
	
	write("Podaj 2 warunek zaistnialego problemu: "),nl,
	read(Warunek1),nl,	
	assert( ( Objaw :- verify(Warunek0),verify(Warunek1) ) ),  
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
	['C:/Users/Mike/Documents/Prolog/diag'],
	['C:/Users/Mike/Documents/Prolog/definitions'],
	assertz( ( diagnoza(unknown)) ).
	
	

/* how to ask questions */
ask(Question) :-
    write('Czy zaistnial taki problem: '),
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