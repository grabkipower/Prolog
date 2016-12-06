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
	   



