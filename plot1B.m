function []=plot1B(Y1,n,T)
figure(2);
S=[0:n*T];
plot(S./n,Y1)
title('simJumpProcess')
xlabel('days')
ylabel('Jump')
