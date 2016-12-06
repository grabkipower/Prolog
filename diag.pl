:- dynamic diagnoza/1.

diagnoza(brak_kabla_PC_power) :-
	brak_kabla_PC_power, !.
diagnoza(brak_karty_sieciowej) :-
	brak_karty_sieciowej, !.	
diagnoza(awaria_karta_graficzna) :-
	awaria_karta_graficzna, !.	
diagnoza(awaria_zasilacza) :-
	awaria_zasilacza, !.	
diagnoza(nie_wlaczasz_komputera) :-
	nie_wlaczasz_komputera, !.	
diagnoza(awaria_karty_sieciowej) :-
	awaria_karty_sieciowej, !.	
diagnoza(brak_kabla_internet) :-
	brak_kabla_internet, !.
diagnoza(brak_kabla_Monitor_pow) :-
	brak_kabla_Monitor_pow, !.
diagnoza(awaria_monitora) :-
	awaria_monitora, !.
diagnoza(wylaczony_monitor) :-
	awaria_monitora, !.


