function []=plot2C(P,n,T)
figure(7);
S=[0:n*T-1]
plot(S./n,P)
title('Low Frequency Returns')
xlabel('days')
ylabel('returns')
