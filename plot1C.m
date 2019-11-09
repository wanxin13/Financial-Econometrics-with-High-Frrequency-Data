function []=plot1C(P,n,T)
figure(3);
S=[0:n*T];
plot(S./n,P)
title('simJumpDiffusionConstantCoeff Prices')
xlabel('days')
ylabel('Prices')
