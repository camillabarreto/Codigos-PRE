hist(randn(1,1000)) #rand normal
hist(randn(1,1000), 50) #rand normal

###################################################

Nexp = 100000;

U1 = rand(1, Nexp); #valores aleatorios de distribuiçao uniforme
U2 = rand(1, Nexp); #valores aleatorios de distribuiçao uniforme

SU = -0.1 : 0.05 : 1.1; #espaço amostral

freq_U1 = hist(U1, SU);
pdf_U1 = freq_U1 / trapz(SU, freq_U1);

freq_U2 = hist(U2, SU);
pdf_U2 = freq_U2 / trapz(SU, freq_U2);

figure(1)

subplot(2, 2, 1);
bar(SU, pdf_U1);

subplot(2, 2, 2);
bar(SU, pdf_U2);

#----------------------------------------

R = sqrt(-2*log(U1)); #amplitude
T = 2*pi*U2; #teta

Z0 = R.*cos(T);
Z1 = R.*sin(T);

SZ = -3:0.05:3; #espaço amostral

freq_Z0 = hist(Z0, SZ);
pdf_Z0 = freq_Z0 / trapz(SZ, freq_Z0);

freq_Z1 = hist(Z1, SZ);
pdf_Z1 = freq_Z1 / trapz(SZ, freq_Z1);

subplot(2, 2, 3);
bar(SZ, pdf_Z0);

subplot(2, 2, 4);
bar(SZ, pdf_Z1);