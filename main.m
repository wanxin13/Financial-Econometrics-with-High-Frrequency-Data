% main.m
% This script when run should compute all values and make all plots
% required by the project.
% To do so, you must fill the functions in the functions/ folder,
% and create scripts in the scripts/ folder to make the required
% plots.

% Add folders to path
addpath('./functions/','./scripts/');

% Add plot defaults
plotDefaults;

%% Exercise1
% Set up parameters
seed = 2018;
n = 80;
T = 1.25 * 252;
mu = 0;
sigma=0.011;
X0 = log(75);
lambda = 15/252;
sigma_jump = 25* sqrt((sigma^2) /80) ;

% Compute values
X1 = simDiffusionConstantCoeff(n, T, X0, mu, sigma, seed);
P1 = exp(X1)
Y1 = simJumpProcess(n, T, lambda, sigma_jump, seed)
Z1 = simJumpDiffusionConstantCoeff(n, T, X0, mu, sigma, lambda, sigma_jump, seed)
P2 = exp(Z1)
% Make plots
plot1A(P1,n,T)

plot1B(Y1,n,T)

plot1C(P2,n,T)

plot1D(P1,P2,n,T)


%% Exercise 2
% Set up parameters
seed = 2018;
n = 80;
T = 1.25 * 252;
n_euler = 20* n;
rho = 0.03;
mu_c =1;
sigma_c = 0.40;
c0 = mu_c;
X0 = log(75);
% Compute values
c = simStochasticVariance(n, T, n_euler, rho, mu_c, sigma_c, c0, seed);
X2_high= simDiffusionStochasticVariance(n, T, n_euler, X0, c, seed);

%logreturn high
logreturn_X2high = [ zeros(n_euler*T,1)];
for i = 2: n_euler*T+1
    logreturn_X2high(i-1,1) = X2_high(i,1) - X2_high(i-1,1);
end

%Lower Frequency X
X2_low = [ zeros( n*T+1,1)];
for i = 1: n*T+1
    X2_low (i,1) = X2_high ( (i-1)*(n_euler/n)+1,1);
end

%logreturn low
logreturn_X2low = [ zeros( n*T,1)];
for i = 2: n*T+1
    logreturn_X2low(i-1,1) = X2_low(i,1) - X2_low(i-1,1);
end

% Make plots
plot2A(c,n_euler,T)

plot2B(logreturn_X2high,n_euler,T)

plot2C(logreturn_X2low,n,T)





