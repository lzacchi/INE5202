% Algoritmo de Bissecao
% para encontrar raizes
% da funcao f(x) = e^x - 2 * cos(x)
% no intervalo [0, 2]

function bissecao
    clear
    clc
    format long

    % Assumindo que o intervalo possui raizes
    a = 0;
    b = 2;

    xm = (a+b)/2;
    fxm = f(xm);

    prec = 10^-10;  % precisao do fator de erro
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
    precisao = f(xm)  % precisao

endfunction

function y = f(x)
    y = exp(x) - 2 * cos(x);
endfunction
