start :-
	read_database,
    menu.


read_database :- 
	['C:/Users/Mike/workspace/prolog1/d'].

menu:-
write("***************************************"),nl,
write(" *"),nl,
write("* 1. Dodaj pytanie do bazy pytań *"),nl,
write("* 2. Delete a Player from datatabase *"),nl,
write("* 3. Startuj pytania *"),nl,
write("* 4. Wyjdz z programu *"),nl,
write("***************************************"),nl,
write("Please enter your choice:1,2,3 or 4 :"),nl,
read(Choice),nl,
process(Choice),
Choice = 4,!.

process(1) :-
	write("fajnie"),nl,nl.
	
process(3) :-
  reset_answers,
  find_problem(Problem),
  describe(Problem), nl.
	
process(4) :- !.
	
trysave :-
	obraz(brak_obrazu),
	append('C:/Users/Mike/workspace/prolog1/ddd.pl'),listing(obraz),told.


find_problem(Problem) :-
  problem(Problem), !.


% Store user answers to be able to track his progress
:- dynamic(progress/2).
:- dynamic(answer/2).

% Clear stored user progress
% reset_answers must always return true; because retract can return either true
% or false, we fail the first and succeed with the second.
reset_answers :-
  retract(progress(_, _)),
  fail.
reset_answers:-!.



% Rules for the knowledge base
problem(brak_problemu) :-
  kategoria(internet),
  jest_internet(yes),!.

problem(brak_problemu) :-
  kategoria(komputer),
  czy_uruchamiasie(yes),
  obraz(dobry_obraz),!.
  
  
  
  

problem(brak_kabla_PC_pow) :-
  kategoria(komputer),
  czy_uruchamiasie(no),
  kabel_zasilania(no),!.

problem(brak_karty_sieciowej) :-
  kategoria(internet),
  jest_internet(no),
  gniazdo_ethernet(no),!.



problem(karta_graficzna) :-
  kategoria(komputer),
  czy_uruchamiasie(yes),
  obraz(brak_obrazu),
  wlaczony_monitor(yes),!.

problem(awaria_zasilacza) :-
  kategoria(komputer),
  czy_uruchamiasie(no),
  kabel_zasilania(yes),
  naciskasz_guzik(yes),!.

problem(nie_naciskasz_PC_pow) :-
  kategoria(komputer),
  czy_uruchamiasie(no),
  kabel_zasilania(yes),
  naciskasz_guzik(no),!.

problem(awaria_karty_sieciowej) :-
  kategoria(internet),
  jest_internet(no),
  gniazdo_ethernet(yes),
  kabel_ethernet(yes),!.

problem(brak_kabla_ethernet) :-
  kategoria(internet),
  jest_internet(no),
  gniazdo_ethernet(yes),
  kabel_ethernet(no),!.

problem(brak_kabla_Monitor_pow):-
  kategoria(komputer),
  czy_uruchamiasie(yes),
  obraz(brak_obrazu),
  wlaczony_monitor(no),
  kabel_zasilania(no),!.

problem(awaria_monitora) :-
  kategoria(komputer),
  czy_uruchamiasie(yes),
  obraz(brak_obrazu),
  wlaczony_monitor(no),
  kabel_zasilania(yes),
  naciskasz_guzik(yes),!.

problem(wlacz_monitor) :-
  kategoria(komputer),
  czy_uruchamiasie(yes),
  obraz(brak_obrazu),
  wlaczony_monitor(no),
  kabel_zasilania(yes),
  naciskasz_guzik(no),!.


  
  
problem(brak_problemu) :-
  kategoria(podzespoly),
  kategoriasprzetu(myszka),
  czydziala(yes),!.

problem(brak_problemu) :-
  kategoria(podzespoly),
  kategoriasprzetu(klawiatura),
  czydziala(yes),!.
  
problem(brak_problemu) :-
  kategoria(podzespoly),
  kategoriasprzetu(glosniki),
  czydziala(yes),!.

problem(brak_problemu) :-
  kategoria(podzespoly),
  kategoriasprzetu(mikrofon),
  czydziala(yes),!.


problem(wymien_myszke) :-
  kategoria(podzespoly),
  kategoriasprzetu(myszka),
  czydziala(no),
  probapodlaczania(yes),!.

problem(podlacz_myszke) :-
  kategoria(podzespoly),
  kategoriasprzetu(myszka),
  czydziala(no),
  probapodlaczania(no),!.

problem(wymien_klawiature) :-
  kategoria(podzespoly),
  kategoriasprzetu(klawiatura),
  czydziala(no),
  probapodlaczania(yes),!.

problem(podlacz_klawiature) :-
  kategoria(podzespoly),
  kategoriasprzetu(klawiatura),
  czydziala(no),
  probapodlaczania(no),!.


problem(wymien_mikrofon) :-
  kategoria(podzespoly),
  kategoriasprzetu(mikrofon),
  czydziala(no),
  probapodlaczania(yes),!.

problem(podlacz_mikrofon) :-
  kategoria(podzespoly),
  kategoriasprzetu(mikrofon),
  czydziala(no),
  probapodlaczania(no),!.

problem(wymien_glosniki) :-
  kategoria(podzespoly),
  kategoriasprzetu(glosniki),
  czydziala(no),
  probapodlaczania(yes),!.

problem(podlacz_glosniki) :-
  kategoria(podzespoly),
  kategoriasprzetu(glosniki),
  czydziala(no),
  probapodlaczania(no),!.


% Questions for the knowledge base
question(kategoria) :-
  write('Czego dotyczy Twoj problem ?'), nl.

question(kategoriasprzetu) :-
  write('Czego dotyczy Twoj problem ?'), nl.

  question(probapodlaczania) :-
  write('Czy probowales podlaczac ?'), nl.

question(czydziala) :-
  write('Czy sprzet dziala ?'), nl.

question(jest_internet) :-
  write('Czy masz polaczenie z internetem ?'), nl.

question(kabel_ethernet) :-
  write('Czy masz podlaczony kabel Ethernet ?'), nl.

question(gniazdo_ethernet) :-
  write('Czy posiadasz gniazdo na kabel Ethernet ?'), nl.

question(czy_uruchamiasie) :-
  write('Czy komputer sie uruchamia ?'), nl.

question(kabel_zasilania) :-
  write('Czy kabel zasilania jest podlaczony do urzadzenia'),nl,
  write('i gniazda elektrycznego ?'), nl.

question(naciskasz_guzik) :-
  write('Czy naciskasz odpowiedni guzik wlaczenia ?'), nl.

question(obraz) :-
  write('Czy wyswietla sie cos na ekranie ?'), nl.

question(wlaczony_monitor) :-
  write('Czy masz wlaczony monitor ?'), nl.


% Answers for the knowledge base
answer(no) :-
  write('Nie').

answer(yes) :-
  write('Tak').







answer(komputer) :-
  write('Dzialania\\ uruchomiania komputera').

answer(myszka) :-
  write('Myszki').

answer(klawiatura) :-
  write('Klawiatury').

answer(glosniki) :-
  write('Glosnikow').

answer(mikrofon) :-
  write('Mikrofonu').

answer(podzespoly) :-
  write('Podzespolow zewnetrznych').

answer(programy) :-
  write('Oprogramowania').

answer(internet) :-
  write('Uzytkowania internetu').

answer(brak_obrazu) :-
  write('Nic sie nie wyswietla').

answer(slaby_obraz) :-
  write('Wyswietla sie obraz niepelny lub w slabej jakosci').

answer(dobry_obraz) :-
  write('Wszystko wyswietla sie poprawnie').
  




% Problem descriptions for the knowledge base
describe(brak_karty_sieciowej) :-
  write('Brak karty sieciowej'), nl,
  write('Prawdopodobnie nie posiadasz podlaczonej karty sieciowej.'),nl,
  write('Nalezy ja kupic i zamontowac, badz oddac komputer do serwisu.').

describe(awaria_karty_sieciowej) :-
  write('Awaria karty sieciowej'), nl,
  write('Wystapil blad karty sieciowej, lub jest ona uszkodzona.'), nl,
  write('Udaj sie do serwisu komputerowego.').

describe(brak_problemu) :-
  write('Brak problemu'), nl,
  write('Wszystko w porzadku.').

describe(awaria_zasilacza) :-
  write('Awaria zasilacza'), nl,
  write('Wystapila awaria zasilacza. Jest to urzadzenie elektryczne.'), nl,
  write('Koniecznie udaj sie do serwisu komputerowego.').

describe(brak_kabla_PC_pow) :-
  write('Brak kabla zasilania.'), nl,
  write('Upewnij sie ze kabel zasilania jest podlaczony do komputera'),nl,
  write('i zrodla pradu.').

describe(brak_kabla_Monitor_pow) :-
  write('Brak kabla zasilania.'), nl,
  write('Upewnij sie ze kabel zasilania jest podlaczony do monitora'),nl,
  write('i zrodla pradu.').

describe(brak_kabla_ethernet) :-
  write('Brak kabla internetowego.'), nl,
  write('Upewnij sie ze kabel typu Ethernet jest podlaczony'),nl,
  write('do komputera i routera.').

describe(nie_naciskasz_PC_pow) :-
  write('Brak slow....'), nl,
  write('Upewnij sie ze naciskasz guzik uruchamiania komputera.').

describe(karta_graficzna) :-
  write('Awaria karty graficznej'), nl,
  write('Wystapila awaria karty graficznej. Udaj sie z nia do serwisu.').

describe(wlacz_monitor) :-
  write('Wylaczony monitor'), nl,
  write('Monitor nie jest wlaczany. Uruchom go guzikiem.').

describe(awaria_monitora) :-
  write('Awaria monitora'), nl,
  write('Monitor prawdopodobnie ulegl uszkodzenia. Udaj sie do serwisu.').
  
describe(podlacz_myszke) :-
  write('Awaria myszki'), nl,
  write('Prawdopodobnie myszka nie jest podlaczona. Sprawdz podlaczenie myszki.').
  
describe(podlacz_klawiature) :-
  write('Awaria klawiatury'), nl,
  write('Prawdopodobnie klawiatura nie jest podlaczona. Sprawdz podlaczenie klawiatury.').
  
describe(wymien_myszke) :-
  write('Awaria myszki'), nl,
  write('Myszka jest zepsuta. Wymien myszke!').
  
describe(wymien_klawiature) :-
  write('Awaria klawiatury'), nl,
  write('Klawiatura jest uszkodzona. Wymien klawiature').

describe(wymien_glosniki) :-
  write('Awaria glosnikow'), nl,
  write('Glosniki sa uszkodzone. Wymien glosniki').

describe(podlacz_glosniki) :-
  write('Awaria glosnikow'), nl,
  write('Prawdopodobnie glosniki nie sa podlaczonej. Sprawdz podlaczenie Glosnikow.').

describe(wymien_mikrofon) :-
  write('Awaria mikrofonu'), nl,
  write('Mikrofon jest uszkodzony. Wymien mikrofon').

describe(podlacz_mikrofon) :-
  write('Awaria mikrofonu'), nl,
  write('Prawdopodobnie mikrofon Nie jest podlaczony. Sprawdz podlaczenie nikrofonu.').




% Assigns an answer to questions from the knowledge base
jest_internet(Answer) :-
  progress(jest_internet, Answer).
jest_internet(Answer) :-
  \+ progress(jest_internet, _),
  ask(jest_internet, Answer, [no, yes]).

kabel_ethernet(Answer) :-
  progress(kabel_ethernet, Answer).
kabel_ethernet(Answer) :-
  \+ progress(kabel_ethernet, _),
  ask(kabel_ethernet, Answer, [no,yes]).

gniazdo_ethernet(Answer) :-
  progress(gniazdo_ethernet, Answer).
gniazdo_ethernet(Answer) :-
  \+ progress(gniazdo_ethernet, _),
  ask(gniazdo_ethernet, Answer, [no,yes]).

czydziala(Answer) :-
  progress(czydziala, Answer).
czydziala(Answer) :-
  \+ progress(czydziala, _),
  ask(czydziala, Answer, [no,yes]).

probapodlaczania(Answer) :-
  progress(probapodlaczania, Answer).
probapodlaczania(Answer) :-
  \+ progress(probapodlaczania, _),
  ask(probapodlaczania, Answer, [no,yes]).

kategoria(Answer) :-
  progress(kategoria, Answer).
kategoria(Answer) :-
  \+ progress(kategoria, _),
  ask(kategoria, Answer, [komputer,podzespoly,programy,internet]).

kategoriasprzetu(Answer) :-
  progress(kategoriasprzetu, Answer).
kategoriasprzetu(Answer) :-
  \+ progress(kategoriasprzetu, _),
  ask(kategoriasprzetu, Answer, [myszka,klawiatura,glosniki,mikrofon]).


czy_uruchamiasie(Answer) :-
  progress(czy_uruchamiasie, Answer).
czy_uruchamiasie(Answer) :-
  \+ progress(czy_uruchamiasie, _),
  ask(czy_uruchamiasie, Answer, [no,yes]).

kabel_zasilania(Answer) :-
  progress(kabel_zasilania, Answer).
kabel_zasilania(Answer) :-
  \+ progress(kabel_zasilania, _),
  ask(kabel_zasilania, Answer, [no,yes]).

naciskasz_guzik(Answer) :-
  progress(naciskasz_guzik, Answer).
naciskasz_guzik(Answer) :-
  \+ progress(naciskasz_guzik, _),
  ask(naciskasz_guzik, Answer, [no,yes]).

obraz(Answer) :-
  progress(obraz, Answer).
obraz(Answer) :-
  \+ progress(obraz, _),
  ask(obraz, Answer, [brak_obrazu,slaby_obraz,dobry_obraz]).

wlaczony_monitor(Answer) :-
  progress(wlaczony_monitor, Answer).
wlaczony_monitor(Answer) :-
  \+ progress(wlaczony_monitor, _),
  ask(wlaczony_monitor, Answer, [no,yes]).



% Outputs a nicely formatted list of answers
% [First|Rest] is the Choices list, Index is the index of First in Choices
answers([], _).
answers([First|Rest], Index) :-
  write(Index), write(' '), answer(First), nl,
  NextIndex is Index + 1,
  answers(Rest, NextIndex).


% Parses an Index and returns a Response representing the "Indexth" element in
% Choices (the [First|Rest] list)
parse(0, [First|_], First).
parse(Index, [First|Rest], Response) :-
  Index > 0,
  NextIndex is Index - 1,
  parse(NextIndex, Rest, Response).


% Asks the Question to the user and saves the Answer
ask(Question, Answer, Choices) :-
  question(Question),
  answers(Choices, 0),
  read(Index),
  parse(Index, Choices, Response),
  asserta(progress(Question, Response)),
  Response = Answer.

















