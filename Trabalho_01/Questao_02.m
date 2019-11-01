%% QUESTAO 2.b
close all;
clear all;
clc;
%--------------------------------| DECLARAÇOES
NExp = 100000;
k = 490;
k_01 = 2;
k_02 = 5;
p_01 = 0.5;
p_02 = 0.4;
vet01 = 1:NExp;
vet02 = 1:NExp;
vetTeorico01 = k_01:k;
vetTeorico02 = k_02:k;
%--------------------------------| SIMULAÇAO 01
for i = 1:NExp
   vet01(i) = rand_pascal(k_01, p_01);
   vet02(i) = rand_pascal(k_02, p_02);
end
%--------------------------------| TEORICO 01
for i = vetTeorico01
    vetTeorico01(i-k_01+1) =  pmf_pascal(i,k_01,p_01);  
end
%--------------------------------| TEORICO 02
for i= vetTeorico02
    vetTeorico02(i-k_02+1) =  pmf_pascal(i,k_02,p_02);  
end
%--------------------------------| PLOT (SIMULAÇAO 01)
histograma_01 = hist(vet01,k_01:k);
pmf_01_simul = histograma_01 / NExp;
figure(1); 
bar(k_01:k,pmf_01_simul,'b');
hold on;
xlim([-2 max(vet01)+2]);
%--------------------------------| PLOT (SIMULAÇAO 02)
histograma_02 = hist(vet02,k_02:k);
pmf_02_simul = histograma_02 / NExp;
figure(2);
bar(k_02:k, pmf_02_simul,'r');
hold on;
xlim([-2 max(vet02)+2]);
%--------------------------------| PLOT (TEORICO 01)
figure(1)
stem(k_01:k,vetTeorico01);
%--------------------------------| PLOT (TEORICO 02)
figure(2)
stem(k_02:k,vetTeorico02);
%--------------------------------| VARIANCIA E MEDIA (SIMULAÇAO 01)
var_01 = var(vet01)
med_01 = mean(vet01)
%--------------------------------| VARIANCIA E MEDIA (SIMULAÇAO 02)
var_02 = var(vet02)
med_02 = mean(vet02)
