% Algoritmo da Falsa Posicao
% para encontrar raizes
% da funcao f(x) = e^x - 2 * cos(x)
% no intervalo [0, 2]

function newton
    clear
    clc
    format long

    % a = 0;
    % b = 2;

    % x = [a:0.1:b];
    % y = f(x);

    % plot(x,y)
    % grid
    % hold on

    x0 = 1;  % estimativa inicial

    i = 0;  % numero de iteracoes

    prec = 10^-6;

    fx = f(x0);
    dfx = df(x0);

    while (abs(fx) > prec)
        ++i;

        % r = dfx * (x-x0) + fx;  % reta tangente em x0
        % plot(x,r, 'r')
        % hold on
        % pause

        xi = x0 - fx/dfx;
        x0 = xi;
        fx = f(x0);
        dfx = df(x0);
    endwhile

    iteracoes = i
    raiz = xi
    precisao = abs(fx)
endfunction


function f = f(x)
    % c(x) = 10 − 20(e^−0.2x − e^−0.75x)
    % f = 10 - 20 * (exp(-0.2*x) - exp(-0.75*x))-5;
    f = exp(x) - 4*x^2;
endfunction

function df = df(x)
    % df = -20 * (0.75 * e ^ (-0.75 * x) - 0.2 * e ^(-0.2 * x));
    df = exp(x) - 8*x;
endfunction
