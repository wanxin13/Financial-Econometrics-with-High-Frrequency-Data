function []=plot2B(P,n_euler,T)
figure(6);
S=[0:n_euler*T-1]
plot(S./n_euler,P)
title('High Frequency Returns')
xlabel('days')
ylabel('returns')
