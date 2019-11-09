function []=plot1A(P,n,T)
figure(1);
S=[0:n*T]
plot(S./n,P)
title('simDiffusionConstantCoeff Prices')
xlabel('days')
ylabel('Prices')
