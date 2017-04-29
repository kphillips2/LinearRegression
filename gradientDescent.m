% gradientDescent.m
%
% Inputs: X, Y, theta, alpha, num_iterations
% Outputs: theta

function[theta] = gradientDescent(X, Y, theta, alpha, num_iterations)

m = length(Y);

for i = 1:num_iterations
    slope = (alpha/m) * (X * theta - Y)' * X(:,2); 
    theta(1) = theta(1) - slope;
    theta(2) = theta(2) - slope;
end