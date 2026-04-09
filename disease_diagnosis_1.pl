:- initialization(main, main).

main :- go.

go :-
    write('Answer the following questions with yes. or no.'), nl,
    hypothesis(Disease),
    write('Possible Disease: '), write(Disease), nl.

hypothesis(flu) :- flu, !.
hypothesis(cold) :- cold, !.
hypothesis(covid) :- covid, !.
hypothesis('Unknown Disease').

flu :-
    fever,
    headache,
    body_ache.

cold :-
    sneezing,
    runny_nose,
    sore_throat.

covid :-
    fever,
    cough,
    loss_of_taste.

ask(Question) :-
    write('Do you have '), write(Question), write('? '),
    read(Response),
    Response == yes.

fever :- ask(fever).
headache :- ask(headache).
body_ache :- ask(body_ache).
sneezing :- ask(sneezing).
runny_nose :- ask(runny_nose).
sore_throat :- ask(sore_throat).
cough :- ask(cough).
loss_of_taste :- ask(loss_of_taste).
