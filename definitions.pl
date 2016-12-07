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
define(awaria_display_driver) :-
	write("Uszkodzony lub stary sterownik graficzny").		
define(uszkodzona_matryca) :-
	write("Uszkodzona matryca monitora").	
define(uszkodzona_myszka) :-
	write("Uszkodzona myszka").	
define(nie_podlaczona_myszka) :-
	write("Myszka nie zoastala podlaczona").	
define(uszkodzona_klawiatura) :-
	write("Uszkodzona klawiatura").	
define(nie_podlaczona_klawiatura) :-
	write("Klawiatura nie zostala podlaczona").	
define(uszkodzona_mikrofon) :-
	write("Uszkodzony mikrofon").	
define(nie_podlaczona_mikrofon) :-
	write("Mikrofon nie zostal podlaczony").	
define(uszkodzona_glosniki) :-
	write("Uszkodzone glosniki").	
define(nie_podlaczona_glosniki) :-
	write("Glosniki nie zostaly podlaczone").		
define(przegrzanie_komputera) :-
	write("Komputer jest slabo chlodzony").	
define(mocne_przegrzanie_komputera) :-
	write("Komputer skrajnie sie przegrzewa").	
define(awaria_napedu_optycznego) :-
	write("Naped optyczny ulegl awarii").	
define(awaria_twardziela) :-
	write("Dysk twardy ulegl awarii lub nie jest podlaczony").	
define(nielegalna_winda) :-
	write("Zainstalowany system operacyjny jest nielegalny").	
define(blad_krytyczny) :-
	write("Wystapil blad krytyczny systemu. Harmagedon").	
define(bateria_bios_padla) :-
	write("Bateria w BIOS sie wyczerpala").	
define(drukarka_nie_podlaczana_PC) :-
	write("Drukarka nie jest podlaczona do komputera").	
define(drukarka_nie_podlaczana_POWER) :-
	write("Drukarka nie jest podlaczona do pradu").	
define(drukarka_nie_zainstalowana) :-
	write("Nie zainstalowano sterownikow drukarki").	
%----------------------------------------------
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
define(slaby_obraz) :-
	write("Wyswietlany obraz jest slabej jakosci").
define(nie_uszkodzona_matryca) :-
	write("Nie widac \'martwych pikseli\' ani pionowych pasow w innych kolorach").
define(pixeloza) :-
	write("Pojedyncze piksele lub grupy piskeli zmieniaja nieregularnie kolory").
define(uszkodzona_matryca) :-
	write("Widac \'martwe piksele\' lub pionowe pasy w innych kolorach").
define(myszka_nie_dziala) :-
	write("Myszka nie porusza sie lub nie dzialaja klawisze").
define(myszka_podlaczona) :-
	write("Myszka podlaczona do komputera").
define(myszka_nie_podlaczona) :-
	write("Myszka nie jest podlaczona do komputera").
define(klawiatura_nie_dziala) :-
	write("Klawiatura nie odpowiada lub nie dzialaja klawisze").
define(klawiatura_podlaczona) :-
	write("Klawiatura podlaczona do komputera").
define(klawiatura_nie_podlaczona) :-
	write("Klawiatura nie jest podlaczona do komputera").
define(mikrofon_nie_dziala) :-
	write("Mikrofon nie dziala").
define(mikrofon_podlaczona) :-
	write("Mikrofon jest podlaczony do komputera").
define(mikrofon_nie_podlaczona) :-
	write("Mikrofon nie jest podlaczony do komputera").
define(glosniki_nie_dziala) :-
	write("Glosniki nie nie dzialaja lub dzwiek jest beznadziejej jakosci").
define(glosniki_podlaczona) :-
	write("Glosniki sa podlaczone do komputera").
define(glosniki_nie_podlaczona) :-
	write("Glosniki nie sa podlaczone do komputera").
define(praca_zwalnia):-
	write("Praca komputera zwalnia lub przycina sie").
define(bucha_zar):-
	write("Z komputera wyladuje duza ilosc goraczego powietrza").
define(glosna_praca):-
	write("Komputer bardzo glosno pracuje").
define(komputer_sam_wylacza_sie):-
	write("Komputer sam sie wylacza").
define(zawiecha):-
	write("Komputer nieodwracalnie sie zawiesza").
define(nie_dziala_CD):-
	write("Komputer nie wysuwa czytnika, lub plyty nie otwieraja sie").
define(nie_ma_w_mojkomputer):-
	write("Twardego dysku nie widac w \'Moj Komputer \'").
define(nie_mozna_otworzyc):-
	write("Nie mozna otworzyc zawartosci twardego dysku").
define(system_lezy):-
	write("Komputer uruchamia sie, ale system operacyjny juz nie").
define(brak_dysku_w_bios):-
	write("Bios nie wyswietla informacji o twardym dysku").
define(czarny_ekran):-
	write("Tapeta zmienila sie na czarna").
define(napis_od_billa):-
	write("W dolnym prawym roku napis widnieje : Ta kopia systemu jest nielegalna").
define(blue_screen):-
	write("Pojawia sie niebieski ekran z niezrozumialymi napisami").
define(godzina_zeruje_sie):-
	write("Po kazdym uruchomieniu komputera godzina i data zeruje sie.").
define(nie_drukuje):-
	write("Nie dziala drukowanie.").
define(klikaj_drukuj):-
	write("Klikasz \'Drukuj\' i wybierasz drukarke.").
define(nie_podlaczona_druk_pc):-
	write("Drukarka nie jest podlaczona do komputera.").
define(nie_podlaczona_druk_pow):-
	write("Drukarka nie podlaczona do pradu.").
define(nie_mozna_klikaj_drukuj):-
	write("Nie mozna wybrac drukarki do drukowania.").