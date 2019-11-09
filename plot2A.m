function []=plot2A(P,n_euler,T)
figure(5);
S=[0:n_euler*T]
plot(S./n_euler,P)
title('simStochasticVariance')
xlabel('days')
ylabel('c')
