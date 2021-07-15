% Algoritmo da Secante
% para encontrar raizes
% da funcao f(x) = e^x - 2 * cos(x)
% no intervalo [0, 2]

function secante
    clear
    clc
    format long

    a = 0;
    b = 2;

    x = [a:0.1:b];
    y = f(x);

    plot(x,y)
    grid
    hold on

    x0 = 0;  % estimativa inicial
    x1 = 1;

    i = 0;  % numero de iteracoes

    prec = 10^-10;

    f0 = f(x0);
    f1 = f(x1);

    while (abs(f1) > prec)
        ++i;

        r = f0 + ((f1 - f0)/(x1-x0)) * (x-x0);  % reta secante em x0
        plot(x,r, 'r')
        hold on

        xi = x1 - ((x1 - x0) * f1)/(f1 - f0);

        x0 = x1;
        f0 = f1;

        x1 = xi;
        f1 = f(x1);
    endwhile

    iteracoes = i
    raiz = xi
    precisao = abs(f1)
endfunction


function f = f(x)
    f = exp(x) - 2 * cos(x);
endfunction