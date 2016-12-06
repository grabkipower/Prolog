:- dynamic define/1.

define(unknown) :-
	write("Nie za bardzo wiem jak pomoc. Sorry.").

define(brak_kabla_PC_power) :-
	write("Brak kabla zasilania komputera").
define(brak_karty_sieciowej) :-
	write("Brak karty sieciowej").
define(awaria_karta_graficzna) :-
	write("Awaria karty graficznej").
define(awaria_zasilacza) :-
	write("Awaria zasilacza").
define(nie_wlaczasz_komputera) :-
	write("Nie naciskasz guzika uruchomienia komputera").
define(awaria_karty_sieciowej) :-
	write("Awaria karty sieciowej").
define(brak_kabla_internet) :-
	write("Brak podlaczonego kabla internetowego").
define(brak_kabla_Monitor_pow) :-
	write("Brak podlaczonego kabla zasilajacego monitor").
define(awaria_monitora) :-
	write("Awaria monitora").
define(wylaczony_monitor) :-
	write("Monitor nie jest wlaczony").	
	
%----------------------------------------------

define(nie_uruchamia_sie) :-
	write("Komputer nie uruchamia sie").
define(brak_kabla_zasilania) :-
	write("Kabel zasilajacy nie jest obustronnie podlaczony").
define(brak_internetu) :-
	write("Brak polaczenia z internetem").
define(brak_gniazda_ethernet) :-
	write("Brak gniazda na kabel ethernet").
define(uruchamia_sie) :-
	write("Komputer uruchamia sie").
define(brak_obrazu) :-
	write("Nic sie nie wyswietla na ekranie").
define(wlaczony_monitor) :-
	write("Monitor jest wlaczony").
define(nie_wlaczony_monitor) :-
	write("Monitor nie jest wlaczony").
define(kabel_zasilania) :-
	write("Kabel zasilania jest podlaczony poprawnie").
define(wciskasz_guzik) :-
	write("Naciskasz guzik uruchamiania komputera").
define(nie_wciskasz_guzik) :-
	write("Nie naciskasz przycisku uruchamiania").
define(gniazdo_ethernet) :-
	write("Posiadasz gniazdo ethernet").
define(kabel_ethernet) :-
	write("Kabel ethernet jest podlaczony do komputera i routera").
define(brak_kabla_ethernet) :-
	write("Kabel ethernet nie jest podlaczony").
define(wcisniety_guzik) :-
	write("Nacisnales guzik wlaczenia monitora").
define(nie_wcisniety_guzik) :-
	write("Guzik wlaczenia monitora nie jest wcisniety").