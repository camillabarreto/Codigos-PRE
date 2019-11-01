%% -------------------------------| QUESTAO 3.a i
close all;
clear all;
clc;
%--------------------------------| VALOR ESPERADO
n = 20;
p = 0.9;
EX = n * p

%% -------------------------------| QUESTAO 3.a ii
close all;
clear all;
clc;
%--------------------------------| PROBABILIDADE
n = 20;
k = 0:15;
p = 0.9;
pr = 0;
for i = k
   x = pmf_binom(n,i,p);
   pr = pr + x;
end
resultado = 1 - pr

%% -------------------------------| QUESTAO 3.b i
close all;
clear all;
clc;
%--------------------------------| VALOR ESPERADO
k = 16; % quantos sucessos são requeridos
p = 0.9; % probabilidade
EX = k/p 
%% -------------------------------| QUESTAO 3.b ii
close all;
clear all;
clc;
%--------------------------------| PROBABILIDADE
n = 16:20;
p = 0.9;
k = 16;
x = 0;
pr = 0;
for i = n
   x = pmf_pascal(i,k,p);
   pr = pr + x;
end
pr
