
	inizio :-
		nl,		
		stampa_formattato("CIAO! BENVENUTO IN:",green),nl,nl,nl,
		sleep(0.3),
		stampa_formattato("~~~~~~~~~~~~~~~~~~~~~~~~~~|_MUSIC YOU LIKE_|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~",red),nl,nl,nl,
		sleep(0.6),
stampa_formattato("_____________________________________________________________________________________________________________________________________________________________________________________________", black),nl,
stampa_formattato("_____________________________________________________________________________________________________________________________________________________________________________________________", black),nl,
		descrizione.


		esigenza(Utente,italiana) :- verifica(Utente,"Preferisci artisti italiani [si|no] ?", italiana).
    	esigenza(Utente,straniera) :- verifica(Utente,"Preferisci artisti stranieri [si|no] ?", straniera).
    	esigenza(Utente,moderna) :- verifica(Utente,"Ti piacciono di più le canzoni moderne [si|no] ?", moderna).
    	esigenza(Utente,gruppo) :- verifica(Utente,"Preferisci un gruppo [si|no] ?", gruppo).
    	esigenza(Utente,singolo) :- verifica(Utente," Preferisci un artista solista[si|no] ?", singolo).
    	esigenza(Utente,rock) :- verifica(Utente,"Ti piace il rock [si|no] ?", rock).
    	esigenza(Utente,dance) :- verifica(Utente,"Preferisci la dance [si|no] ?", dance).
    	esigenza(Utente,pop) :- verifica(Utente,"Ti piacciono le canzoni pop [si|no] ?", pop).
    	esigenza(Utente,triste) :- verifica(Utente,"Vuoi una canzone malinconica [si|no] ?", triste).
    	esigenza(Utente,novanta) :- verifica(Utente,"Ti piacciono di più le canzoni vecchie(80-90) [si|no] ?", novanta).
    	esigenza(Utente,carica) :- verifica(Utente,"Vuoi qualcosa che ti dia la carica [si|no] ?", carica).
    	esigenza(Utente,lenta) :- verifica(Utente, "Preferisci una canzone lenta [si|no] ?", lenta).
    	esigenza(Utente,felice) :- verifica(Utente, "preferisci una canzone con un testo felice [si|no] ?", felice).
    	esigenza(Utente,puglia) :- verifica(Utente, "Sei pugliese [si|no] ?", puglia).
    	esigenza(Utente,duemila) :- verifica(Utente, "Preferisci una canzone pubblicata dopo il 2000 [si|no] ?", duemila).
    	esigenza(Utente,recente) :- verifica(Utente, "Ti piace qualcosa uscito di recente [si|no] ?", recente).
    	esigenza(Utente,discoteca) :- verifica(Utente, "Ti piacciono le canzoni da discoteca [si|no] ?", discoteca).
    	
	
	anno("1996").
	anno("1980").
	anno("1991").
	anno("2017").
	anno("2011").
	anno("2008").
	anno("2000").
	anno("2012").
	anno("2010").
	anno("2009").
	anno("1999").
	anno("2015").

	assegnato_a("1996",albachiara_album).
	assegnato_a("1980",back_in_black_album).
	assegnato_a("1991",dangerous).
	assegnato_a("2017",diviso).
	assegnato_a("2008",quattro_marzo). 
	assegnato_a("2000",crush). 
	assegnato_a("2011",le_dimensioni_del_mio_caos). 
	assegnato_a("2012",all_the_little_lights). 
	assegnato_a("2009",back_to_bedlam). 
	assegnato_a("1999",chansons_for_the_heart). 
	assegnato_a("2015",five). 
	assegnato_a("2010",the_end). 
	
	brano(back_in_black,acdc). 
	brano(albachiara,vasco_rossi).
	brano(black_or_white,michael_jackson).
	brano(piazza_grande,lucio_dalla).
	brano(perfect,ed_sheeran).
	brano(it_s_my_life,bon_jovi).
	brano(vieni_a_ballare_in_puglia,caparezza).
	brano(let_her_go,passenger).
	brano(you_are_beautiful,james_blunt).
	brano(i_gotta_feeling,black_eyed_peas).
	brano(l_amour_toujours,gigi_dagostino).
	brano(sugar,maroon_five).

	album(acdc,back_in_black_album).
	album(vasco_rossi,albachiara_album).
	album(michael_jackson,dangerous).
	album(ed_sheeran, diviso).
	album(lucio_dalla,quattro_marzo).
	album(bon_jovi, crush).
	album(caparezza, le_dimensioni_del_mio_caos).
	album(passenger, all_the_little_lights).
	album(james_blunt,back_to_bedlam).
	album(gigi_dagostino,chansons_for_the_heart).
	album(maroon_five,five).
	album(black_eyed_peas,the_end).
		
		artista(Utente,bon_jovi) :-
			esigenza(Utente,straniera),
	       	esigenza(Utente,gruppo),
			esigenza(Utente,rock),
			esigenza(Utente,novanta),
			esigenza(Utente,carica),
        	esigenza(Utente,felice),!.
    	artista(Utente,acdc) :-
        	esigenza(Utente,straniera),
	    	esigenza(Utente,gruppo),
			esigenza(Utente,rock),
			esigenza(Utente,novanta),
			esigenza(Utente,carica),!.
		artista(Utente,maroon_five) :-
			esigenza(Utente,straniera),
			esigenza(Utente,gruppo),
			esigenza(Utente,pop),
			esigenza(Utente,felice),
			esigenza(Utente,duemila),
			esigenza(Utente,moderna),
			esigenza(Utente,recente),!.
		artista(Utente,black_eyed_peas) :-
			esigenza(Utente,straniera),
			esigenza(Utente,gruppo),
			esigenza(Utente,dance),
			esigenza(Utente,pop),
			esigenza(Utente,carica),
			esigenza(Utente,felice),
			esigenza(Utente,duemila),
			esigenza(Utente,moderna),
			esigenza(Utente,discoteca),!.
		artista(Utente,michael_jackson) :-
        	esigenza(Utente,straniera),
			esigenza(Utente,singolo),
			esigenza(Utente,pop),
			esigenza(Utente,novanta),!.
    	artista(Utente,ed_sheeran) :-
        	esigenza(Utente,straniera),
			esigenza(Utente,singolo),
			esigenza(Utente,felice),
			esigenza(Utente,duemila),
			esigenza(Utente,moderna),
			esigenza(Utente,recente),!.
		artista(Utente,passenger) :-
			esigenza(Utente,straniera),
			esigenza(Utente,singolo),
			esigenza(Utente,pop),
			esigenza(Utente,triste),
			esigenza(Utente,moderna),
        	esigenza(Utente,duemila),!.
    	artista(Utente,james_blunt) :-
        	esigenza(Utente,straniera),
        	esigenza(Utente,singolo),
        	esigenza(Utente,lenta),
			esigenza(Utente,felice),
			esigenza(Utente,moderna),
			esigenza(Utente,duemila),!.
    	artista(Utente,vasco_rossi) :-
        	esigenza(Utente,italiana),
        	esigenza(Utente,singolo),
			esigenza(Utente,rock),
			esigenza(Utente,novanta),
			esigenza(Utente,felice),!.
		artista(Utente,lucio_dalla) :-
        	esigenza(Utente,italiana),
        	esigenza(Utente,singolo),
        	esigenza(Utente,triste),
        	esigenza(Utente,novanta),
			esigenza(Utente,lenta),!.
		artista(Utente,caparezza) :-
			esigenza(Utente,italiana),
			esigenza(Utente,pop),
        	esigenza(Utente,moderna),
        	esigenza(Utente,singolo),
        	esigenza(Utente,carica),
			esigenza(Utente,felice),
			esigenza(Utente,puglia),
        	esigenza(Utente,duemila),!.
    	artista(Utente,gigi_dagostino) :-
			esigenza(Utente,italiana),
			esigenza(Utente,singolo),
			esigenza(Utente,dance),
         	esigenza(Utente,novanta),
			esigenza(Utente,carica),
			esigenza(Utente,felice),
			esigenza(Utente,discoteca),!.
		


		artista(_,"Nessun Artista").


	ask(Utente,Question,Esigenza) :-
		stampa_formattato(Utente,blue),stampa_formattato(', ',blue),stampa_formattato(Question,blue),
		read(N),
		sleep(0.7),
		nl,
stampa_formattato('______________________________________________________________________________________________________________________________________________________________________________________________',black),nl,		
		((N == si)
		             -> assert(yes(Question)),assert(fact(Esigenza));
		                assert(no(Question)),fail).
	
	%predicati che vengono modificati volta per volta, cioè ogni volta che si asserisce una nuova cosa deve modificare il predicato nella base di conoscenza
	:- dynamic yes/1, no/1, fact/1.
	
	verifica(P,S,X) :-
	   (yes(S) -> true ;
			(no(S) -> fail ; ask(P,S,X))).
	
	
	%undo annulla una transazione e le eventuali transazioni nidificate in esso, toglie le scelte fatte dalla base di conoscenza
	undo :- retract(yes(_)),fail.
	undo :- retract(no(_)),fail.
	undo :- retract(fact(_)),fail.
	undo.
	
	%predicato universale per le stampe formattate
	stampa_formattato(P,C):-
		ansi_format([bold,fg(C)],P,[]).    %formatta il testo con attributi ansi
	
	stampa_formattato2(P,C):-
		write('\n'),write('     '),stampa_formattato('- ',C),stampa_formattato(P,C).
	
	
	stampa_esigenze(Artista):-
	 	stampa_formattato('\nHo scelto: ',black),stampa_formattato(Artista,blue),stampa_formattato(" perche' hai le seguenti esigenze: ",black),
	 	forall(fact(P),stampa_formattato2(P,blue)).   %fact(P) è il generatore e il seguito crea l'effetto
	
	stampa_album(Artista) :-
		findall(X,album(Artista,X),L),
		scorri_lista(L).
	
	stampa_brano(Artista) :-
		findall(X,brano(X,Artista),L),
		scorri_lista(L).

	
	ottieni_anno_supporto([],_).
	ottieni_anno_supporto([H|T],P):-
		findall(Anno,assegnato_a(Anno,H),L),
		append(L,P,Ris),
		ottieni_anno_supporto(T,Ris).
	
	
	ottieni_anno([H|T]):-
		findall(Anno,assegnato_a(Anno,H),L),
		ottieni_anno_supporto(T,L), 
		filtra(L). 
		
	
	filtra(L):-
		rimuovi_duplicati(L,Ris),
		scorri_lista(Ris).
	
	
	stampa_artista_riferimento(Artista) :-
		findall(X,album(Artista,X),L), %specializzazioni che se conseguite anno consentono di consigliare un brano di una certa Artista
		ottieni_anno(L).
		
	
	stampa_conoscenza_artisti:-
		findall(Artista,brano(_,Artista),L),  %L è la lista delle istanze Artista per cui la proprietà brano(_,Artista) è vera,se non esiste alcuna Artista rest lista vuot
		rimuovi_duplicati(L,L1),              
		scorri_lista(L1).
	
	
	scorri_lista([]).
	scorri_lista([H|T]):-
		call(stampa_formattato2(H,blue)), %richiede l'invocazione dell'interprete all'interno dell'interprete stesso, viene richiesta la valutazione di stampa formattato2
		scorri_lista(T).
	
	
	rimuovi_duplicati([],[]).
	rimuovi_duplicati([H | T], L) :- 
		member(H, T),			%Se H è elemento della lista T
		rimuovi_duplicati(T, L).
	
	rimuovi_duplicati([H|T],[H|T1]) :- not(member(H,T)),
									   rimuovi_duplicati(T,T1).
	
	 
	 
	check_artista(_,Artista,[H|T]) :-
			(
	           (member(Artista,[H|T]), not(Artista=="Nessuna Artista"))-> fail
			   ;true
			).
	
	
	
	pt(Utente):-
			artista(Utente,Artista), %il predicato Artista "ritornera'" sempre true, a quel punto per mezzo del predicato definito vedo se la Artista e' stata trovata 
			findall(X,artista(Utente,X),L), %L viene avvolorata con findall
			(
				(not(check_artista(Utente,Artista,L))) -> 	
									stampa_formattato(Utente,black), 	
									stampa_formattato(', sulla base della mia seguente lista di Artisti: ',black),
									stampa_conoscenza_artisti,
									stampa_formattato('\n\nTi consiglio vivamente:  ',black),		                
			                       				stampa_formattato(Artista,blue),
									stampa_formattato('.',black),
									stampa_formattato('\n\nPrecisamente album:',black),
									stampa_album(Artista),
									stampa_formattato('.',blue),
									stampa_formattato('\n\nBrano consigliato: ',black),
									stampa_brano(Artista),
									stampa_formattato('.',black),
									stampa_formattato('\n\nAnno di pubblicazione:',black),
									stampa_artista_riferimento(Artista),
									stampa_formattato('.',black)
								   ;stampa_formattato('Mi dispiace, non sono in grado di valutare il brano per te adatto!',black)
	
			),
			
			nl,nl,
			not(Artista=="Nessuna Artista") ->
					(
						stampa_formattato('______________________________________________________________________________________________________________________________________________________________________________________________',black),nl,
	
						stampa_formattato(Utente,blue),stampa_formattato(', ',blue),stampa_formattato('Ti interessa sapere la motivazione della mia scelta [si/no] ?  ',black),
						read(R),
						(
							(R==si) -> stampa_esigenze(Artista),undo,end
			                ;sleep(1)
						)
					);true,
			undo, %dato che non cuttiamo gli undo vengono eseguiti tra virgolette con conseguente retract dalla base di dati dei precedenti fatti asseriti
			end.
	
	
	end :-
			nl,nl,nl,nl,
			sleep(0.6),
stampa_formattato('______________________________________________________________________________________________________________________________________________________________________________________________',black),nl,
			stampa_formattato("***************|_ GRAZIE E BUON ASCOLTO _|****************",red),nl,nl.
	
		
	descrizione :-
		write('Lo scopo di Music You Like consiste nel semplificare la tua scelta! Rispondi alle nostre domande e scoprirai il brano piu'' adatto a te sulla base delle tue preferenze! Benvenuto in Music You Like! '),nl,
		write('Qual''e'' il tuo nome ? '),
		read(N),nl,
stampa_formattato('______________________________________________________________________________________________________________________________________________________________________________________________',black),nl,
		(N == @(null) -> nl,stampa_formattato('Grazie per avermi usato!, Arrivederci',black),nl,
						 end,fail
						 ;pt(N)
		).
