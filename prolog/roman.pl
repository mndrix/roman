:- module(roman, [dcg//1, roman/2]).

:- use_module(library(clpfd)).

%% roman(?Arabic:integer,?Roman:codes).
%
%  True if Arabic has a Roman representation.
roman(Arabic,Roman) :-
    phrase(dcg(Arabic),Roman).

%% dcg(?Arabic:integer)//
%
%  Parse and generate Roman numerals.
dcg(Arabic) -->
    { Arabic in 1..3999 },
    roman(Arabic),
    !.

roman(Total) -->
    { Rest #>= 0 },
    { Total #= Value + Rest },
    digit(Value),
    roman(Rest).
roman(0) --> "".

digit(1000) --> "M".
digit(900) --> "CM".
digit(500) --> "D".
digit(400) --> "CD".
digit(100) --> "C".
digit(90) --> "XC".
digit(50) --> "L".
digit(40) --> "XL".
digit(10) --> "X".
digit(9) --> "IX".
digit(5) --> "V".
digit(4) --> "IV".
digit(1) --> "I".
