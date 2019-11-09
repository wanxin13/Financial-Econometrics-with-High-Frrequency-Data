function X = simDiffusionConstantCoeff(n, T, X0, mu, sigma, seed)
% simDiffusionConstantCoeff simulates from a Gaussian diffusion
%                           process with constant coefficients
%
% INPUTS:
%     n: number of steps per day
%     T: number of days to simulate
%    X0: starting value for the log-price process (e.g.: log(75))
%    mu: drift constant
% sigma: volatility of the process
%  seed: number to fix the random number generator
%
% OUTPUT:
%  X: an n*T + 1 vector of log-prices
%


% Set seed so that results are replicable
rng(seed, 'twister');

% initialize return value
X = [X0; zeros(n*T, 1)];                % notice we are also
                                        % returning the initial value

% Generate draws from the standard normal distribution
% For efficiency you must get all draws from the normal at once
Z = normrnd(0, 1, [ n*T, 1])




% Iterate to model
for i = 2 : (n*T+1)
    X(i,1) = X(i-1, 1) + mu * (1/n) + sigma * sqrt(1/n) * Z(i-1, 1);
end
