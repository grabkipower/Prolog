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
diagnoza(awaria_display_driver) :-
	awaria_display_driver, !.
diagnoza(uszkodzona_matryca) :-
	uszkodzona_matryca, !.
diagnoza(uszkodzona_myszka) :-
	uszkodzona_myszka, !.
diagnoza(nie_podlaczona_myszka) :-
	nie_podlaczona_myszka, !.
diagnoza(uszkodzona_klawiatura) :-
	uszkodzona_klawiatura, !.
diagnoza(nie_podlaczona_klawiatura) :-
	nie_podlaczona_klawiatura, !.
diagnoza(uszkodzona_mikrofon) :-
	uszkodzona_mikrofon, !.
diagnoza(nie_podlaczona_mikrofon) :-
	nie_podlaczona_mikrofon, !.
diagnoza(uszkodzona_glosniki) :-
	uszkodzona_glosniki, !.
diagnoza(nie_podlaczona_glosniki) :-
	nie_podlaczona_glosniki, !.
diagnoza(mocne_przegrzanie_komputera) :-
	mocne_przegrzanie_komputera, !.
diagnoza(przegrzanie_komputera) :-
	przegrzanie_komputera, !.
diagnoza(awaria_napedu_optycznego) :-
	awaria_napedu_optycznego, !.
diagnoza(awaria_twardziela) :-
	awaria_twardziela, !.
diagnoza(nielegalna_winda) :-
	nielegalna_winda, !.
diagnoza(blad_krytyczny) :-
	blad_krytyczny, !.
diagnoza(bateria_bios_padla) :-
	bateria_bios_padla, !.
diagnoza(drukarka_nie_podlaczana_PC) :-
	drukarka_nie_podlaczana_PC, !.
diagnoza(drukarka_nie_podlaczana_POWER) :-
	drukarka_nie_podlaczana_POWER, !.
diagnoza(drukarka_nie_zainstalowana) :-
	drukarka_nie_zainstalowana, !.