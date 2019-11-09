function X = simJumpDiffusionConstantCoeff(n, T, X0, mu, sigma, lambda, sigma_jump, seed)
% simJumpDiffusionConstantCoeff simulates from a Jump-Diffusion
%                               process with constant coefficients
%
% INPUTS:
%       n: number of steps per day
%       T: number of days to simulate
%      X0: starting value for the log-price process (e.g.: log(75))
%      mu: drift constant
%   sigma: volatility of the process
%  lambda: jump intenisty (e.g.: 15/252)
%   sigma: volatility of the jump returns
%    seed: number to fix the random number generator
%
% OUTPUT:
%  X: a n*T + 1 vector of log-prices
%

X= simDiffusionConstantCoeff(n, T, X0, mu, sigma, seed)+ simJumpProcess(n, T, lambda, sigma_jump, seed)

        



