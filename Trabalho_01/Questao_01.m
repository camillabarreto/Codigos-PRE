%% QUESTAO 1.b
clear all;
close all;
clc;
%--------------------------------| DECLARAÇOES
NExp = 100000;
n_01 = 10;
n_02 = 50;
p_01 = 0.1;
p_02 = 0.25;
vet01 = 1:NExp;
vet02 = 1:NExp;
vetTeorico01 = 0:n_01;
vetTeorico02 = 0:n_02;
%--------------------------------| SIMULAÇAO 01
for i = 1:NExp
   vet01(i) = rand_binom(n_01, 0.1);
   vet02(i) = rand_binom(n_02, 0.25);
end
%--------------------------------| TEORICO 01
for k = vetTeorico01
    vetTeorico01(k+1) =  pmf_binom(n_01,k,p_01);  
end
%--------------------------------| TEORICO 02
for k = vetTeorico02
    vetTeorico02(k+1) =  pmf_binom(n_02,k,p_02);  
end
%--------------------------------| PLOT (SIMULAÇAO 01)
histograma_01 = hist(vet01,0:n_01);
pmf_01_simul = histograma_01 / NExp;
figure(1); 
bar(0:n_01, pmf_01_simul,'b');
hold on;
xlim([-2 max(vet01)+2]);
%--------------------------------| PLOT (SIMULAÇAO 02)
histograma_02 = hist(vet02,0:n_02);
pmf_02_simul = histograma_02 / NExp;
figure(2);
bar(0:n_02, pmf_02_simul,'r');
hold on;
xlim([-2 max(vet02)+2]);
%--------------------------------| PLOT (TEORICO 01)
figure(1)
stem(0:n_01,vetTeorico01);
xlim([-2 max(n_01)+2]);
%--------------------------------| PLOT (TEORICO 02)
figure(2)
stem(0:n_02,vetTeorico02);
xlim([-2 max(n_02)+2]);
%--------------------------------| VARIANCIA E MEDIA (SIMULAÇAO 01)
var_01 = var(vet01)
med_01 = mean(vet01)
%--------------------------------| VARIANCIA E MEDIA (SIMULAÇAO 02)
var_02 = var(vet02)
med_02 = mean(vet02)
