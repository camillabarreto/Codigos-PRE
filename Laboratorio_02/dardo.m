#     quadrado  1x1
#
#     -------------
#     -------------
#     -------------
#     -------------
#     -------------
#     -------------    

Nexp = 1000000;

X = rand(1, Nexp); #1 linha e Nexp colunas
Y = rand(1, Nexp); #1 linha e Nexp colunas

#figure(1)
#scatter(X, Y) #plot do quadrado com os pontos sorteados

D = sqrt((X - 0.5).^2 + (Y - 0.5).^2); #distancia do ponto ate o centro do quadrado

min(D); #valor minimo do vetor
max(D); #valor maximo do vetor

SD = -0.1 : 0.0001 : 0.8; #espaço amostral para o histograma

freq_D = hist(D, SD); #dados aleatorios, bins/espaç amostral
pdf_D = freq_D / trapz(SD, freq_D);

figure(2)
bar(SD, pdf_D, 'g')