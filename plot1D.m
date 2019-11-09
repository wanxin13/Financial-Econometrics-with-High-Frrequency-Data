function []= plot1D(P1,P2,n,T)
figure(4);
S=[0:n*T];
plot(S./n,P1)
hold on
K=[0:n*T];
plot(K./n,P2)
title('Price Comparison')
xlabel('days')
ylabel('Prices')
legend('Diffusion','JumpDiffusion')
hold off

