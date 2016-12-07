%Diagnoza problemów

	   
brak_kabla_PC_power :-
	   verify(nie_uruchamia_sie),
	   verify(brak_kabla_zasilania).
	   
brak_karty_sieciowej :-
       verify(brak_internetu),
       verify(brak_gniazda_ethernet).
	   
awaria_karta_graficzna :-
       verify(uruchamia_sie),
       verify(brak_obrazu),
	   verify(wlaczony_monitor).
	   
awaria_zasilacza :-
       verify(nie_uruchamia_sie),
       verify(kabel_zasilania),
	   verify(wciskasz_guzik).
	   
nie_wlaczasz_komputera :-
       verify(nie_uruchamia_sie),
       verify(kabel_zasilania),
	   verify(nie_wciskasz_guzik).

awaria_karty_sieciowej :-
       verify(brak_internetu),
       verify(gniazdo_ethernet),
	   verify(kabel_ethernet).	   
	   
brak_kabla_internet :-
       verify(brak_internetu),
       verify(gniazdo_ethernet),
	   verify(brak_kabla_ethernet).	  
	   
brak_kabla_Monitor_pow :-
       verify(uruchamia_sie),
       verify(brak_obrazu),
	   verify(nie_wlaczony_monitor),
	   verify(kabel_zasilania).	   

awaria_monitora :-
       verify(uruchamia_sie),
       verify(brak_obrazu),
	   verify(nie_wlaczony_monitor),
	   verify(kabel_zasilania),
	   verify(wcisniety_guzik).	   

wylaczony_monitor :-
       verify(uruchamia_sie),
       verify(brak_obrazu),
	   verify(nie_wlaczony_monitor),
	   verify(kabel_zasilania),
	   verify(nie_wcisniety_guzik).	   

awaria_display_driver :-
       verify(uruchamia_sie),
       verify(slaby_obraz),
	   verify(nie_uszkodzona_matryca),
	   verify(pixeloza).	   
	   
uszkodzona_matryca :-
       verify(uruchamia_sie),
       verify(slaby_obraz),
	   verify(uszkodzona_matryca).
	   
uszkodzona_myszka :-
       verify(uruchamia_sie),
       verify(myszka_nie_dziala),
	   verify(myszka_podlaczona).

nie_podlaczona_myszka :-
       verify(uruchamia_sie),
       verify(myszka_nie_dziala),
	   verify(myszka_nie_podlaczona).
	   
uszkodzona_klawiatura :-
       verify(uruchamia_sie),
       verify(klawiatura_nie_dziala),
	   verify(klawiatura_podlaczona).

nie_podlaczona_klawiatura :-
       verify(uruchamia_sie),
       verify(klawiatura_nie_dziala),
	   verify(klawiatura_nie_podlaczona).
	   
uszkodzona_mikrofon :-
       verify(uruchamia_sie),
       verify(mikrofon_nie_dziala),
	   verify(mikrofon_podlaczona).

nie_podlaczona_mikrofon :-
       verify(uruchamia_sie),
       verify(mikrofon_nie_dziala),
	   verify(mikrofon_nie_podlaczona).
	   
uszkodzona_glosniki :-
       verify(uruchamia_sie),
       verify(glosniki_nie_dziala),
	   verify(glosniki_podlaczona).

nie_podlaczona_glosniki :-
       verify(uruchamia_sie),
       verify(glosniki_nie_dziala),
	   verify(glosniki_nie_podlaczona).

mocne_przegrzanie_komputera :-
       verify(uruchamia_sie),
       verify(praca_zwalnia),
       verify(bucha_zar),
       verify(glosna_praca),
	   verify(komputer_sam_wylacza_sie).
	   
przegrzanie_komputera :-
       verify(uruchamia_sie),
       verify(praca_zwalnia),
       verify(bucha_zar),
       verify(glosna_praca),
	   verify(zawiecha).
	   
awaria_napedu_optycznego :-
       verify(uruchamia_sie),
       verify(nie_dziala_CD).	   

awaria_twardziela :-
       verify(uruchamia_sie),
       verify(nie_ma_w_mojkomputer).	
	   
awaria_twardziela :-
       verify(uruchamia_sie),
       verify(nie_mozna_otworzyc).	

awaria_twardziela :-
       verify(uruchamia_sie),
       verify(system_lezy),
	   verify(brak_dysku_w_bios).
	   
nielegalna_winda :-
       verify(uruchamia_sie),
       verify(czarny_ekran),
	   verify(napis_od_billa).
	   
blad_krytyczny :-
       verify(uruchamia_sie),
       verify(blue_screen).
	   
bateria_bios_padla :-
       verify(uruchamia_sie),
       verify(godzina_zeruje_sie).
	   
drukarka_nie_podlaczana_PC :-
       verify(nie_drukuje),
       verify(klikaj_drukuj),
	   verify(nie_podlaczona_druk_pc).
	   
drukarka_nie_podlaczana_POWER :-
       verify(nie_drukuje),
       verify(klikaj_drukuj),
       verify(nie_podlaczona_druk_pow).
	   
drukarka_nie_zainstalowana :-
       verify(nie_drukuje),
       verify(nie_mozna_klikaj_drukuj).