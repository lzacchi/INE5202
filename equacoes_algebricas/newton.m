% Algoritmo da Falsa Posicao
% para encontrar raizes
% da funcao f(x) = e^x - 2 * cos(x)
% no intervalo [0, 2]

function newton
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

    i = 0;  % numero de iteracoes

    prec = 10^-10;

    fx = f(x0);
    dfx = df(x0);

    while (abs(fx) > prec)
        ++i;

        r = dfx * (x-x0) + fx;  % reta tangente em x0
        plot(x,r, 'r')
        hold on
        pause

        xi = x0 - fx/dfx;
        x0 = xi;
        fx = f(x0);
        dfx = df(x0);
    end

    iteracoes = i
    raiz = xi
    precisao = abs(fx)
endfunction


function f = f(x)
    f = exp(x) - 2 * cos(x);
endfunction

function df = df(x)
    df = exp(x) + 2 * sin(x);
endfunction
