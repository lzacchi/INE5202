% Algoritmo da Falsa Posicao
% para encontrar raizes
% da funcao f(x) = e^x - 2 * cos(x)
% no intervalo [0, 2]

function falsa_pos
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

    % plot(x,y)  % plotar grafico da curva
    % grid
    % hold on

    xm = a - ( (fa * (b-a)) / (fb-fa) );
    fxm = f(xm);

    prec = 10^-10;  % precisao do fator de erro
    i = 0;  % numero de iteracoes

    while(abs(fxm) > prec)
        ++i;
        xm = a - ( (fa * (b-a)) / (fb-fa) );  % aproximacao da raiz
        fxm = f(xm);

        reta = fa + ((fb-fa)/(b-a) * (x-a));

        % plot(x, reta, 'r')  % plotar grafico da reta
        % hold on

        % pause

        if (fa * fxm < 0)
            % Reducao da magnitude da funcao
            % fator de proporcao do ponto fixo
            % em relacao ao outro ponto
            % Força a mudança dos intervalos
            pa = fb/(fb + fxm);
            fa = fa * pa;

            b = xm;
            fb = fxm;
        else
            % Reducao da magnitude da funcao
            % fator de proporcao do ponto fixo
            % em relacao ao outro ponto
            % Força a mudança dos intervalos
            pb = fa/(fa + fxm);
            fb = fb * pb;

            a = xm;
            fa = fxm;
        endif

    endwhile

    iteracoes = i   % numero de iteracoes
    raiz = xm       % raiz
    precisao = abs(fxm)  % precisao

endfunction

function f = f(x)
    f = exp(x) -2 * cos(x);
endfunction
