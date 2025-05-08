U = Range[0,18]

A = Select[U, EvenQ[#] && # < 10 &]; (*Pares menores que 10: 0,2,4,6,8*)
B = Select[U, # != 0 && Divisible[12, #] &]; (*Divisores de 12 != 0: 1,2,3,4,6,12*)
conjuntoC = Select[U, # < 6 &]; (*Numeros menores que 6: 0,1,2,3,4,5*)
conjuntoD = Select[U, Mod[# , 2] == 0 && # <= 6 &]; (*Pares y menores igual a 6: 0,2,4,6*)
conjuntoE = Select[U, # < 10 &]; (*Numeros menores que 10: 0,1,2,3,4,5,6,7,8,9*)
F = Select[U, # > 13 &]; (*Numero mayores que 13: 14,15,16,17,18*)
G = Select[U, EvenQ[#] && # > 10 &]; (*Pares y mayores que 10: 12,14,16,18*)


(* Ejercicio 2 *)
Print[Union[B, conjuntoC]]

(* Ejercicio 18 *)
Complement[U, B] (* Esto es B' *)
Print[Union[A, Complement[U, B]]]

(* Ejercicio 20 *)
Complement[U, A] (* Esto es A' *)
Print[Complement[Complement[U, A], G]]

