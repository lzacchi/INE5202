clc
clear
format long

x = [2; 0.5];  % estimativa inicial
erro = 10^-7;
k = 0;
dif = 1  % qualquer valor > erro

while(dif > erro)
    k = k + 1;
    J(1, 1) = exp(x(1));
    J(1, 2) = 1;
    J(2, 1) = 2 * x(1);
    J(2, 2) = 2 * x(2);

    J

    F(1) = exp(x(1)) + x(2)  - 1;
    F(2) = x(1)^2 + x(2)^2 - 4;

    F

    d=J\-F'  % resolve o sistema linear: Gauss com Pivotamento Parcial.
    x = x + d
    dif = sum(abs(d))
    pause

endwhile
k
x
dif
