% Algoritmo de Bissecao
% para encontrar raizes
% da funcao f(x) = e^x - 2 * cos(x)
% no intervalo [0, 2]

function bissecao
    clear
    clc
    format long

    % Assumindo que o intervalo possui raizes
    a = 3.2;
    b = 4;

    xm = (a+b)/2;
    fxm = f(xm);

    prec = 0.00005;  % precisao do fator de erro
    i = 0;  % numero de iteracoes

    while(abs(fxm) > prec)
        ++i;
        xm = (a+b)/2;  % aproximacao da raiz
        fa = f(a);
        fxm = f(xm);
        % pause;

        if (fa * fxm < 0)
            b = xm;
        else
            a = xm;
        endif

    endwhile

    iteracoes = i   % numero de iteracoes
    raiz = xm       % raiz
    precisao = abs(f(xm))  % precisao

endfunction

function f = f(x)
    % c(x) = 10 − 20(e^−0.2x − e^−0.75x)
    % f = 10 - 20 * (exp(-0.2*x) - exp(-0.75*x))-5;
    f = x^3 - 7*x^2 + 14*x -6;
endfunction
