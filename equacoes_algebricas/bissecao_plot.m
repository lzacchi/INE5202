% Algoritmo de Bissecao
% para encontrar raizes
% da funcao f(x) = e^x - 2 * cos(x)
% no intervalo [0, 2]

function bissecao_plot
    clear
    clc
    format long

    % Assumindo que o intervalo possui raizes
    a = 0;
    b = 2;

    fa = f(a);
    fb = f(b);

    x=[0:0.1:2];  % vetor de pontos [0, 0.1, 0.2, ..., 1.0]
    y = f(x);

    plot(x,y)  % plotar grafico da curva
    grid
    hold on

    xm = (a+b)/2;
    fxm = f(xm);

    prec = 10^-10;  % precisao do fator de erro
    i = 0;  % numero de iteracoes

    while(abs(fxm) > prec)
        ++i;
        xm = (a+b)/2;  % aproximacao da raiz
        fxm = f(xm);
        plot(xm, fxm, 'r*')  % plotar grafico das aproximacoes
        hold on
        pause

        if (fa * fxm < 0)
            b = xm;
            fb = fxm;
        else
            a = xm;
            fa = fxm;
        endif

    endwhile

    iteracoes = i
    raiz = xm
    precisao = abs(fxm)

endfunction

function f = f(x)
    f = exp(x) -2 * cos(x);
endfunction
