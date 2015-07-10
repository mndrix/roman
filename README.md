# Synopsis

```prolog
:- use_module(library(roman), [roman/2]).

?-  roman(17,R).
R = "XVII".

?- roman(A,`XVII`).
A = 17.
```

# Description

Work with Roman numerals.

# Installation

Using SWI-Prolog 7.1 or later:

    ?- pack_install(roman).

This module uses [semantic versioning](http://semver.org/).

Source code available and pull requests accepted at
http://github.com/mndrix/roman
