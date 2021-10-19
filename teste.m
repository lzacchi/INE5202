clc
clear


vetor_termos = [4 4 0 0 2];  % b
principal    = [2 2 2 2 2];  % r
supra        = [1 1 1 1 0];  % d
infra        = [0 1 1 1 1];  % t



k = length(vetor_termos);

for i = 2:k
    mult = infra(i)/principal(i-1);
    principal(i) = principal(i) - mult * supra(i-1);
    vetor_termos(i) = vetor_termos(i) - mult * vetor_termos(i-1);
    infra(i) = 0;
endfor

x(k) = vetor_termos(k)/principal(k);

for i = k-1:-1:1  % decrementando de x(n-1) até x(1)
    x(i) = (vetor_termos(i) - supra(i) * x(i + 1))/principal(i);
endfor

x
