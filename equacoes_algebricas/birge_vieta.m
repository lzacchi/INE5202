% Algoritmo de Birge-Vieta
% para determinação de raízes
% de polinômios

function birge_vieta
    clear
    clc
    format long


    % P3(x) = x3 + 3x - 5
    % coef = [1, 0, 3, -5];
    % P3(x)= 6x3 - 5x2 - 3x + 2
    coef = [6, -5, -3, 2];
    n = length(coef);
    x0 = 2;  % estimativa inicial
    i = 0;
    prec = 10^-7;

    b(1) = coef(1);
    c(1) = coef(1);

    b(n) = 1;  % valor > prec para inicializar o algoritmo

    while (abs(b(n)) > prec)
        ++i;
        for count=2:n-1
            b(count) = b(count-1)*x0 + coef(count);
            c(count) = c(count-1)*x0 + b(count);
        endfor

        b(n) = b(n-1)*x0 + coef(n);
        b(n);
        x0 = x0-b(n)/c(n-1);

    endwhile

    iteracoes = i
    raiz = x0
    sequencia_b = b
    sequencia_C = c
    precisao = b(n)

endfunction
