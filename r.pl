start:-
	tryread,
	diagnoza(Disease),
	write('Uwazamy ze masz: '),
	write(Disease),
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
	write("Podaj 1 definicje problemu: "),nl,
	read(Pytanie0),nl,
	
	retractall(define(X)),
	assert( ( define(Warunek0) :- write(Pytanie0)) ),
	append('C:/Users/PC/Documents/Prolog/PrologProjekt/definitions.pl'),
	listing(define),
	told,	
	
	
	
	
	write("Podaj 2 warunek zaistnialego problemu: "),nl,
	read(Warunek1),nl,	
	assert( ( Objaw :- verify(Warunek0),verify(Warunek1) ) ),  
	append('C:/Users/PC/Documents/Prolog/PrologProjekt/d.pl'),
	listing(Objaw),
	told,	
	retractall(diagnoza(X)),
	assert( ( diagnoza(Objaw) :- Objaw, !) ),
	append('C:/Users/PC/Documents/Prolog/PrologProjekt/diag.pl'),	
	listing(diagnoza),
	told,
	menu.
		
		
process(2) :-
	start.

process(3) :- !.

%add_rule(Predicate) :-
%    Fact =.. [Predicate],
%    assertz(Fact).

%trysave :-
%	assert( ( boldupy :- verify(headache)) ),
%	assert( ( hypothesis(boldupy) :- boldupy, !) ),
%	append('C:/Users/PC/Documents/Prolog/PrologProjekt/d.pl'),
%	listing(boldupy),
%	listing(hypothesis),
	/* tutaj trzeba ostro poprawi� dodawanie, listing dodaje wszystko, a jak doda� pojedynczo
	to jeszcze nie odkry�em
	( boldupy :- verify(headache)),
	( diagnoza(boldupy) :- boldupy, !), */
%	told.

tryread :-
	write("Prosze odpowiadac \"y.\" (tak), \"n.\" (nie)."),nl,
	retractall(diagnoza(X)),
	['C:/Users/PC/Documents/Prolog/PrologProjekt/d'],
	['C:/Users/PC/Documents/Prolog/PrologProjekt/diag'],
	['C:/Users/PC/Documents/Prolog/PrologProjekt/definitions'],
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